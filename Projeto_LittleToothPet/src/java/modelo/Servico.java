package modelo;

public class Servico {
    private int id, idCliente, idPet;
    private String data;
    
    public Servico() { }
    
    public Servico(int id, int idCliente, int idPet, String data) {
        this.id = id;
        this.idCliente = idCliente;
        this.idPet = idPet;
        this.data = data;       
    }
    
    @Override
    public String toString() {
        return "Código:" + id + ", código do cliente:" + idCliente + ", código do pet:" + idPet + ", data:" + data;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id; 
    }
    
    public int getIdCliente() {
        return idCliente; 
    }
    
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
    public int getIdPet() {
        return idPet; 
    }
    
    public void setIdPet(int idPet) {
        this.idPet = idPet; 
    }
    
    public String getData() {
        return data; 
    }
    
    public void setData(String data) {
        this.data = data; 
    }
}
