/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.ServiceStock;

/**
 *
 * @author ASUS
 */
public class ListStockWithDate extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        String date1= request.getParameter("date1");
        String vdate1="'".concat(date1); String vfdate1=vdate1.concat("'");
        String date2= request.getParameter("date2");
        String vdate2="'".concat(date2); String vfdate2=vdate2.concat("'");
        String type=request.getParameter("entree_ou_sortie");
        String [] tab=type.split("_");
        int nb=Integer.parseInt(tab[0]);
        
       /* String [] req= new String[2];
        req[0]="select nom_ingredient,qte_stock as qte,date_entree as date from viewStock where date_entree>="+vfdate1+" and date_entree<="+vfdate2+"";
        req[1]="select nom_ingredient,qte ,date_commande as date from viewAvantStockSortie where date_commande>="+vfdate1+" and date_commande<="+vfdate2+"";
        */
       // response.getWriter().println( req[nb]);
        request.setAttribute("listStock", ServiceStock.getEntree_Sortie(vfdate1,vfdate2,nb));
        request.setAttribute("type",tab[1]);
        RequestDispatcher dispatch = request.getRequestDispatcher("stockList.jsp");
        dispatch.forward(request,response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ListStockWithDate.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ListStockWithDate.class.getName()).log(Level.SEVERE, null, ex);
        }
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
