 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.lang.*;
import model.Ingredient;
import model.Stock;
import model.Table;
import view.IngredientParPlat;

public class ServiceStock {
     public static void insertStock(int ingredient,int qte) throws Exception
    {   
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
           String req="insert into stock values(0,"+qte+","+ingredient+",curdate())";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close(); 
    } 
      //START VRAI STOCK
       public static ArrayList<Stock> getStockFinal()  throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Stock> list= new ArrayList<Stock>(); 
        Statement stmt = con.createStatement(); 
        ResultSet res = stmt.executeQuery("select * from viewStockVFFinal");      
        while(res.next())
        {
            Stock t= new Stock(); 
            t.setQte_stock(res.getInt("quantite")); 
            t.setNom_ingredient(res.getString("nom_ingredient")); 
            t.setId_stock(res.getInt("entree"));
            t.setPrix(res.getInt("sortie"));
            list.add(t);
        }
        con.close();
        return list;
    } 
        
    public static ArrayList<Stock> getEntree_Sortie(String date1,String date2,int entree_ou_sortie)  throws Exception
    {
        // 0 raha entree de 1 raha sortie
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Stock> list= new ArrayList<Stock>(); 
        Statement stmt = con.createStatement(); 
        String [] req= new String[2];
        req[0]="select nom_ingredient,qte_stock as qte,date_entree as date from viewStock where date_entree>="+date1+" and date_entree<="+date2+"";
        req[1]="select nom_ingredient,qte ,date_commande as date from viewAvantStockSortie where date_commande>="+date1+" and date_commande<="+date2+"";
        ResultSet res = stmt.executeQuery(req[entree_ou_sortie]);      
        while(res.next())
        {
            Stock t= new Stock(); 
            t.setQte_stock(res.getInt("qte")); 
            t.setNom_ingredient(res.getString("nom_ingredient"));  
            t.setDate_entree(res.getString("date"));
            list.add(t);
        }
        con.close();
        return list;
    } 
}
