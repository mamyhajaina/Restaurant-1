
package services;
  
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Commande; 
public class ServiceCommande {
     public static void insertCommande(int plat,int serveur,int table)
    {  
        try {
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
           String req="insert into commande values(0,"+plat+","+serveur+",curdate(),"+table+",'false','false','false',curtime(),0)";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close();
        } catch (Exception e) {
           e.printStackTrace();
        }
    }
       public static ArrayList<Commande> getListeCommande(String validation) throws Exception
    {
         Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Commande> list = new ArrayList<Commande>(); 
        Statement stmt = con.createStatement();  
        String requete="select * from viewcommandeFinal where validation_commande='"+validation+"'"; 
        ResultSet res = stmt.executeQuery(requete);      
        while(res.next())
        {
            Commande i = new Commande(); 
            i.setNom_plat(res.getString("nom_plat"));
            //quantite
            i.setPrix_de_revient(res.getInt("quantite"));
            i.setNom_serveur(res.getString("nom_serveur"));
            //date 
            i.setDate_commande(res.getString("date_commande"));
            //heure
            i.setNom_categorie(res.getString("heure_commande"));
            list.add(i);
        }
        con.close();
        return list;
    }
        public static void ValideCommande(int serveur)
    {  
        try { 
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
 String req="update commande set validation_commande='true' where validation_commande='false' and serveur="+serveur+"";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close();
        } catch (Exception e) {
           e.printStackTrace();
        }
    }
         public static void DeleteCommande(String id)
    {  
        try {
            String [] tab = id.split("_");
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
           String req="delete from commande where date_commande='"+tab[0]+"' and heure_commande='"+tab[1]+"'";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close();
        } catch (Exception e) {
           e.printStackTrace();
        }
    }

}
