package modelo;

public class Cliente {
    
    private String nome, cpf, telefone, cidade, numero, cep; int id;
    
    public Cliente() { }
    
    public Cliente (int id, String nome, String cpf, String telefone, String cidade, String numero, String cep) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.cidade = cidade;
        this.numero = numero;
        this.cep = cep;
    }
    
    @Override
    public String toString() {
        return "Código:" + id + ", nome:" + nome + ", CPF:" + cpf + ", telefone:" + telefone + ", cidade:" + cidade + ", número:" + numero + " e cep:" + cep;
    }
    
    public int getId() { 
        return id; 
    }
    
    public void setId(int id) { 
        this.id = id; 
    }
    
    public String getNome() {
        return nome; 
    }
    
    public void setNome(String nome) {
        this.nome = nome; 
    }
    
    public String getCpf() {
        return cpf; 
    }
    
    public void setCpf(String cpf) {
        this.cpf = cpf; 
    }
    
    public String getTelefone() {
        return telefone; 
    }
    
    public void setTelefone(String telefone) {
        this.telefone = telefone; 
    }
    
    public String getCidade() {
        return cidade; 
    }
    
    public void setCidade(String cidade) {
        this.cidade = cidade; 
    }
    
    public String getNumero() {
        return numero; 
    }
    
    public void setNumero(String numero) {
        this.numero = numero; 
    }
    
    public String getCep() {
        return cep; 
    }
    
    public void setCep(String cep) {
        this.cep = cep; 
    }
}




