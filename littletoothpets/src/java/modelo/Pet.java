package modelo;

public class Pet {
    private int id;
    private String nome, raca, porte, idade, descricao;
    private double peso;
    
    public Pet() { }
    
    public Pet(int id, String nome, String raca, String porte, String idade, String descricao, double peso) {
        this.id = id;
        this.nome = nome;
        this.raca = raca;
        this.porte = porte;
        this.idade = idade;
        this.descricao = descricao;
        this.peso = peso;        
    }
    
    @Override
    public String toString() {
        return "Código:" + id + ", pet:" + nome + ", raca" + raca + ", porte:" + porte + ", idade:" + idade + ", peso Kg" + peso + ", descrição:" + descricao; 
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
    
    public String getDescricao() {
        return descricao; 
    }
    
    public void setDescricao(String descricao) {
        this.descricao = descricao; 
    }
    
    public double getPeso() {
        return peso; 
    }
    
    public void setPeso(double peso) {
        this.peso = peso; 
    }
}
