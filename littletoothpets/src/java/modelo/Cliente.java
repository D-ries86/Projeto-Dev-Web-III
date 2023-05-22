package modelo;

public class Cliente {
    
    private String nome, cpf, telefone, cidade, cep; int idCliente; int numero;
    
    public Cliente (String nome, String cpf, String telefone, String cidade, int numero, String cep) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.cidade = cidade;
        this.numero = numero;
        this.cep = cep;
    }
    
    public Cliente() { }
    
    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
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
    
    public int getNumero() {
        return numero; 
    }
    
    public void setNumero(int numero) {
        this.numero = numero; 
    }
    
    public String getCep() {
        return cep; 
    }
    
    public void setCep(String cep) {
        this.cep = cep; 
    }
}




