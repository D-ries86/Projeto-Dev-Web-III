package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PetDAO {
    private static Connection conn;
    
    public PetDAO() throws SQLException, ClassNotFoundException {
        conn = MyConnection.getConnection();
    }
    
    //Iniciando métodos do CRUD
    //SELECT (READ)
    public ArrayList<Pet> listPet() throws SQLException {
        //Criar lista vazia
        ArrayList<Pet> list = new ArrayList<>();
        
        //Query SQL
        String query = "SELECT * FROM tbpet";
        
        //Preparando a query para lançar no banco de dados
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Recebendo o resultado da query na variável result
        //da classe ResultSet
        ResultSet result = prep.executeQuery();
        
        //Enqunto houverem resultados, executa a operação
        while(result.next()) {
            //Objeto vazio de Pet
            Pet pet = new Pet();
            
            //Inserindo atributos neste objeto por meio dos setters
            pet.setIdPet(result.getInt("idPet"));
            pet.setNome(result.getString("nome"));
            pet.setRaca(result.getString("raca"));
            pet.setPorte(result.getString("porte"));
            pet.setIdade(result.getString("idade"));
            pet.setPeso(result.getDouble("peso"));
            pet.setDescricao(result.getString("descricao"));
            
            //Adicionando objeto preenchido na lista
            list.add(pet);
        }
        
        //Retornando a lista com todos os registros do BD
        return list;
    }
    
    //Insert (CREATE)
    public void insertPet(Pet pro) throws SQLException {
        //Criar a query para inserção
        String query = "INSERT INTO tbpet(nome, raca, porte, idade, peso, descricao)"
                + "VALUES(?,?,?,?,?,?)";
        
        //Preparando a query para lançar no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Pegar os atributos recebidos do objeto Pet
        //e lançar na query
        prep.setString(1, pro.getNome());
        prep.setString(2, pro.getRaca());
        prep.setString(3, pro.getPorte());
        prep.setString(4, pro.getIdade());
        prep.setDouble(5,  pro.getPeso());
        prep.setString(6, pro.getDescricao());
        
        //Lnaçar a query pronta para o BD
        prep.execute();
        prep.close();
    }
    
    //DELETE
    public void deletePet(int i) throws SQLException {
        String query = "DELETE FROM tbpet "
                + "WHERE idPet = " + i;
        
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.execute();
        prep.close();
    }
    
    //LIST BY ID (Selecionar apenas um registro)
    public Pet listById(int id) throws SQLException {
        Pet t = new Pet();
        
        String sql = "SELECT * FROM tbpet "
                + "WHERE idPet = " + id;
        
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet result = prep.executeQuery();
        
        if(result.next()) {
            t.setIdPet(result.getInt("idPet"));
            t.setNome(result.getString("nome"));
            t.setRaca(result.getString("raca"));
            t.setPorte(result.getString("Porte"));
            t.setIdade(result.getString("idade"));
            t.setPeso(result.getDouble("peso"));
            t.setDescricao(result.getString("descricao"));                      
        }
        return t;
    }
    
    //UPDATE
    public void updatePet(Pet t) throws SQLException {
        String sql = "UPDATE tbPet SET nome = ?,"
                + "raca = ?, porte = ?, idade = ?,"
                + "peso = ?, descricao = ? "
                + "WHERE idPet = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, t.getNome());
        prep.setString(2, t.getRaca());
        prep.setString(3, t.getPorte());
        prep.setString(4, t.getIdade());
        prep.setDouble(5, t.getPeso());
        prep.setString(6, t.getDescricao());       
        prep.setInt(7, t.getIdPet());
        
        prep.execute();
        prep.close();
    }

}
