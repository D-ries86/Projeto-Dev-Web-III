package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import modelo.User;
import modelo.UserDAO;


@WebServlet(name = "CadastroUser", urlPatterns = {"/CadastroUser"})
public class CadastroUser extends HttpServlet {
    private int id;
    private String userName;
    private String userPass;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //verfica se o registro j� existe para atualizar ao inv�s de cadastrar
        if(request.getParameter("id") != null) {
            this.id =  Integer.parseInt(request.getParameter("id"));
        }
        
        //Recebendo parâmetros vindos do formulário de cadastro
        this.userName = request.getParameter("userName");
        this.userPass = request.getParameter("userPass");
                
        //Criando objeto da classe Proprietário, para que seja enviado
        //ao método de inserção no banco de dados
        User u = new User(
                this.userName,
                this.userPass
        );
        
        try {
             UserDAO udao = new UserDAO();
            
            if(request.getParameter("id") != null) {
                u.setIdUser(this.id);
                udao.updateUser(u);    
            } else {
                udao.insertUser(u);
            }
            
            response.sendRedirect("newcadastro.jsp");
            
        } catch(SQLException | ClassNotFoundException erro) {
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CadastroUser</title>");            
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

