const input = document.getElementById('filtro-cliente');
const trs = [...document.querySelectorAll('#listacliente tbody tr')];

input.addEventListener('input', () => {
  const search = input.value.toLowerCase();
  trs.forEach(el => {
    const matches = el.textContent.toLowerCase().includes(search);
    el.style.display = matches ? 'block' : 'none';
  });
});
