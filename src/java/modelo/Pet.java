
package modelo;

public class Pet {
    
    private String nome, raca, porte, idade, descricao; int idPet; double peso; 
    
   
    public Pet(String nome, String raca, String porte, String idade, String descricao, double peso) {
        this.nome = nome;
        this.raca = raca;
        this.porte = porte;
        this.idade = idade;
        this.peso = peso;
        this.descricao = descricao;
    }
    
    public Pet() { }
    
    public int getIdPet() {
        return idPet;
    }
    
    public void setIdPet(int idPet) {
        this.idPet = idPet; 
    }
    
    public String getNome() {
        return nome; 
    }
    
    public void setNome(String nome) {
        this.nome = nome; 
    }
    
    public String getRaca() {
        return raca; 
    }
    
    public void setRaca(String raca) {
        this.raca = raca; 
    }
    
    public String getPorte() {
        return porte; 
    }
    
    public void setPorte(String porte) {
        this.porte = porte; 
    }
    
    public String getIdade() {
        return idade; 
    }
    
    public void setIdade(String idade) {
        this.idade = idade; 
    }
    
    public double getPeso() {
        return peso; 
    }
    
    public void setPeso(double peso) {
        this.peso = peso; 
    }
    
    public String getDescricao() {
        return descricao; 
    }
    
    public void setDescricao(String descricao) {
        this.descricao = descricao; 
    }
}
