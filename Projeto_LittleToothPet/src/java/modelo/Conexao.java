
package modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Conexao {
    private final String driver = "com.mysql.cj.jdbc.Driver";
    private final String servidor = "jdbc:mysql://localhost/littletoothpets";
    private final String usuario = "root"; private final String senha = "root";
    
    private Connection conectar(){
        try{ Class.forName(driver);
        return DriverManager.getConnection(servidor, usuario, senha);
        }   catch(ClassNotFoundException | SQLException ex){ System.err.println(ex);
            return null;
        } 
    } 

    public ArrayList<Cliente> consultaCliente(){
        ArrayList<Cliente> arrayCliente = new ArrayList<>();
    } try{ 
        ResultSet listaCliente = conectar().createStatement().executeQuery("select * from tbcliente");
        while(listaClientes.next()) 
            arrayCliente.add(new Cliente(listaCliente.getInt("id"),
            listaCliente.getString("nome"),
            listaCliente.getString("cpf"))); 
    }catch(Exception ex);
    System.out.println(ex);
    return arrayCliente;

public void inserirClientesBD(String nome, String cpf){ 
    try{
        PreparedStatement inserirCliente = conectar().prepareStatement("insert into tbcliente(nome,cpf) values('"+nome+"','"+cpf+"')");
        inserirCliente.execute();
        conectar().commit();
    }catch(Exception ex){ System.out.println(ex);
    } 
}

public void alterarClientesBD(String id, String nome, String cpf){
    try{
        PreparedStatement alterarCliente = conectar().prepareStatement("update tbcliente set nome='"+nome+"', cpf='"+cpf+"' where id='"+id+"'");
        alterarCliente.execute(); conectar().commit(); }catch(Exception ex){ System.out.println(ex);
    } 
}

public void excluirClientesBD(String id, String nome, String cpf){
    try{ 
        PreparedStatement alterarCliente = conectar().prepareStatement("delete from tbcliente where id='"+id+"' and cpf='"+cpf+"'");
        alterarCliente.execute();
        conectar().commit();
    }   catch(Exception ex){ System.out.println(ex); 
        } 
} 
}