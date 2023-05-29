package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO {
    private static Connection conn;
    
    public ClienteDAO() throws SQLException, ClassNotFoundException {
        conn = MyConnection.getConnection();
    }
    
    //Iniciando métodos do CRUD
    //SELECT (READ)
    public ArrayList<Cliente> listCliente() throws SQLException {
        //Criar lista vazia
        ArrayList<Cliente> list = new ArrayList<>();
        
        //Query SQL
        String query = "SELECT * FROM tbcliente";
        
        //Preparando a query para lançar no banco de dados
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Recebendo o resultado da query na variável result
        //da classe ResultSet
        ResultSet result = prep.executeQuery();
        
        //Enqunto houverem resultados, executa a operação
        while(result.next()) {
            //Objeto vazio de Cliente
            Cliente cliente = new Cliente();
            
            //Inserindo atributos neste objeto por meio dos setters
            cliente.setIdCliente(result.getInt("idCliente"));
            cliente.setNome(result.getString("nome"));
            cliente.setCpf(result.getString("cpf"));
            cliente.setTelefone(result.getString("telefone"));
            cliente.setCidade(result.getString("cidade"));
            cliente.setNumero(result.getInt("numero"));
            cliente.setCep(result.getString("cep"));
            
            //Adicionando objeto preenchido na lista
            list.add(cliente);
        }
        
        //Retornando a lista com todos os registros do BD
        return list;
    }
    
    //Insert (CREATE)
    public void insertCliente(Cliente pro) throws SQLException {
        //Criar a query para inserção
        String query = "INSERT INTO tbcliente(nome, cpf, telefone, cidade, numero, cep)"
                + "VALUES(?,?,?,?,?,?)";
        
        //Preparando a query para lançar no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Pegar os atributos recebidos do objeto Cliente
        //e lançar na query
        prep.setString(1, pro.getNome());
        prep.setString(2, pro.getCpf());
        prep.setString(3, pro.getTelefone());
        prep.setString(4, pro.getCidade());
        prep.setInt(5, pro.getNumero());
        prep.setString(6, pro.getCep());
        
        //Lnaçar a query pronta para o BD
        prep.execute();
        prep.close();
    }
    
    //DELETE
    public void deleteCliente(int i) throws SQLException {
        String query = "DELETE FROM tbcliente "
                + "WHERE idCliente = " + i;
        
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.execute();
        prep.close();
        
        System.out.println("Excluir...");
    }
    
    //LIST BY ID (Selecionar apenas um registro)
    public Cliente listById(int id) throws SQLException {
        Cliente p = new Cliente();
        
        String sql = "SELECT * FROM tbcliente "
                + "WHERE idCliente = " + id;
        
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet result = prep.executeQuery();
        
        if(result.next()) {
            p.setIdCliente(result.getInt("idCliente"));
            p.setNome(result.getString("nome"));
            p.setCpf(result.getString("cpf"));
            p.setTelefone(result.getString("telefone"));
            p.setCidade(result.getString("cidade"));
            p.setNumero(result.getInt("numero"));
            p.setCep(result.getString("cep"));                      
        }
        return p;
    }
    
    //UPDATE
    public void updateCliente(Cliente p) throws SQLException {
        String sql = "UPDATE tbcliente SET nome = ?,"
                + "cpf = ?, telefone = ?, cidade = ?,"
                + "numero = ?, cep = ? "
                + "WHERE idCliente = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, p.getNome());
        prep.setString(2, p.getCpf());
        prep.setString(3, p.getTelefone());
        prep.setString(4, p.getCidade());
        prep.setInt(5, p.getNumero());
        prep.setString(6, p.getCep());       
        prep.setInt(7, p.getIdCliente());
        
        prep.execute();
        prep.close();
    }
}
