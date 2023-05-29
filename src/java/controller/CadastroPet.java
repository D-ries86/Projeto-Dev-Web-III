package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import modelo.Pet;
import modelo.PetDAO;
    

@WebServlet(name = "CadastroPet", urlPatterns = {"/CadastroPet"})
public class CadastroPet extends HttpServlet {
    private int id;
    private String nome;
    private String raca;
    private String porte;
    private String idade;
    private double peso;
    private String descricao;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //verfica se o registro j� existe para atualizar ao inv�s de cadastrar
        if(request.getParameter("id") != null) {
            this.id =  Integer.parseInt(request.getParameter("id"));
        }
        
        //Recebendo parâmetros vindos do formulário de cadastro
        this.nome = request.getParameter("nome");
        this.raca = request.getParameter("raca");
        this.porte = request.getParameter("porte");
        this.idade = request.getParameter("idade");
        this.peso = Double.parseDouble(request.getParameter("peso"));
        this.descricao = request.getParameter("descricao");
        
        
        //Criando objeto da classe Proprietário, para que seja enviado
        //ao método de inserção no banco de dados
        Pet t = new Pet(
                this.nome,
                this.raca,
                this.porte,
                this.idade,
                this.descricao,
                this.peso 
        );
        
        try {
             PetDAO tdao = new PetDAO();
            
            if(request.getParameter("id") != null) {
                t.setIdPet(this.id);
                tdao.updatePet(t);    
            } else {
                tdao.insertPet(t);
            }
  
            response.sendRedirect("listar.jsp");
            
        } catch(SQLException | ClassNotFoundException erro) {
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CadastroPet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Ocorreu um erro: " + erro + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
