 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Ingredient;
import view.IngredientParPlat;

public class ServiceIngredient {
     public static void insertIngredient(Ingredient i) throws Exception
    {   
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
           String req="insert into ingredient values(0,'"+i.getNom_ingredient()+"',"+i.getPrix()+")";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close(); 
    }
      public static ArrayList<IngredientParPlat> getListIngredientParPlat(int id_plat) throws Exception
    {
         Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<IngredientParPlat> listeIngredient= new ArrayList<IngredientParPlat>(); 
        Statement stmt = con.createStatement(); 
        //vue misy ingredient avec attribut rehetra
        String requete="select * from viewplatfinal where id_plat="+id_plat+""; 
        ResultSet res = stmt.executeQuery(requete);      
        while(res.next())
        {
            IngredientParPlat i = new IngredientParPlat(); 
            i.setId_plat(res.getInt(id_plat));
            i.setNom_categorie(res.getString("nom_categorie"));
            i.setId_categorie(res.getInt("id_categorie"));
            i.setNom_ingredient(res.getString("nom_ingredient"));
            i.setQte_ingredient(res.getInt("qte_ingredient")); 
            listeIngredient.add(i);
        }
        con.close();
        return listeIngredient;
    }
        public static ArrayList<Ingredient> getAllIngredient() throws Exception
    {
         Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Ingredient> listeIngredient= new ArrayList<Ingredient>(); 
        Statement stmt = con.createStatement();  
        String requete="select * from ingredient"; 
        ResultSet res = stmt.executeQuery(requete);      
        while(res.next())
        {
            Ingredient i = new Ingredient(); 
            i.setId_ingredient(res.getInt("id_ingredient"));
            i.setNom_ingredient(res.getString("nom_ingredient"));
            i.setPrix(res.getInt("prix"));
            listeIngredient.add(i);
        }
        con.close();
        return listeIngredient;
    }
}
