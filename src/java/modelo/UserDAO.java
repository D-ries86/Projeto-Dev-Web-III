package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private static Connection conn;
    
    public UserDAO() throws SQLException, ClassNotFoundException {
        conn = MyConnection.getConnection();
    }
    
    public User listByName(String nome) throws SQLException {
        User u = new User();
        
        String sql = "SELECT * FROM tbusuario "
                + "WHERE nome = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);  
        prep.setString(1,nome);
        
        ResultSet result = prep.executeQuery();
        
        
        while(result.next()) {
            u.setIdUser(result.getInt("idUsuario"));
            u.setUserName(result.getString("nome"));
            u.setUserPass(result.getString("senha"));
        }
        
        return u;
    }
    
    //Insert (CREATE)
    public void insertUser(User pro) throws SQLException {
        //Criar a query para inserção
        String query = "INSERT INTO tbusuario(nome, senha)"
                + "VALUES(?,?)";
        
        //Preparando a query para lançar no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Pegar os atributos recebidos do objeto User
        //e lançar na query
        prep.setString(1, pro.getUserName());
        prep.setString(2, pro.getUserPass());
        
        //Lnaçar a query pronta para o BD
        prep.execute();
        prep.close();
    }
    
    //LIST BY ID (Selecionar apenas um registro)
    public User listById(int id) throws SQLException {
        User u = new User();
        
        String sql = "SELECT * FROM tbusuario "
                + "WHERE idUsuario = " + id;
        
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet result = prep.executeQuery();
        
        if(result.next()) {
            u.setIdUser(result.getInt("idUsuario"));
            u.setUserName(result.getString("userName"));
            u.setUserPass(result.getString("userPass"));                     
        }
        return u;
    }
    
    //UPDATE
    public void updateUser(User u) throws SQLException {
        String sql = "UPDATE tbusuario SET nome = ?, senha = ? " + "WHERE idUsuario = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, u.getUserName());
        prep.setString(2, u.getUserPass());
        
        prep.execute();
        prep.close();
    }
}
