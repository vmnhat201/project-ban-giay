/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.CategoryDAO;
import dao.ProductDAO;
import entity.Category;
import entity.Product;
import java.io.IOException;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class HomeControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         int page=1;
         final int LAST_PAGE=8;
        ProductDAO dao = new ProductDAO();
        CategoryDAO daoCate= new CategoryDAO();
         
         List<Category> listCate = daoCate.getAllCate();
        HttpSession session=request.getSession();
        session.setAttribute("listCate", listCate);
        
         String pageString=request.getParameter("page");
         if(pageString!=null){
             page=Integer.parseInt(pageString);
         }
         
         List<Product> listProduct = dao.getProductWithPage(page, LAST_PAGE);
         int totalProducts=dao.getTotalProducts();
         int totalPage = totalProducts/LAST_PAGE;
         if(totalProducts % LAST_PAGE !=0){
                totalPage+=1;
         }
         request.setAttribute("totalPage", totalPage);
         request.setAttribute("listP", listProduct);
//         request.setAttribute("listCate", listCate);
        
         request.setAttribute("page", page);
          request.getSession().setAttribute("urlOld","home" );
         request.getRequestDispatcher("Home.jsp").forward(request, response);
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
