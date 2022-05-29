 
package services;
 
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement; 
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Plat;
import view.ListeMenu;

public class ServicePlat {
      public static void insertPlat(Plat p) throws Exception
    {   
            Connexion connex = new Connexion();
             Connection con = connex.getConnection(); 
           String req="insert into plat values(0,'"+p.getNom_plat()+"',"+p.getC().getId_categorie()+")";
           PreparedStatement stmt = con.prepareStatement(req); 
          stmt.execute(req) ;
              con.close(); 
    }
      
        public static int getRequetePlat(String nom_categorie)
     {
         int retour=0;
         if(nom_categorie.compareTo("all")==0)
         {  retour=0; }
         if(nom_categorie.compareTo("all")!=0){
             retour=1;
         }
         return retour;
     }
      
        public static ArrayList<ListeMenu> getListMenu(String id_categorie) throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<ListeMenu> listmenu= new ArrayList<ListeMenu>(); 
        Statement stmt = con.createStatement();
        String [] requete ={"select * from vue", "select * from vue where id_categorie="+id_categorie+" "};
       // System.out.println(requete[getRequetePlat(id_categorie)]); 
        ResultSet res = stmt.executeQuery(requete[getRequetePlat(id_categorie)]);      
        while(res.next())
        {
            ListeMenu p= new ListeMenu();
            p.setId_plat(res.getInt("id_plat"));
            p.setNom_plat(res.getString("nom_plat")); 
            p.setPrix_de_revient(res.getInt("prix_de_revient")); 
            p.setNom_categorie(res.getString("nom_categorie"));
            p.setId_categorie(res.getInt("id_categorie"));
            listmenu.add(p);
        }
        con.close();
        return listmenu;
    }
    public static ListeMenu getMenuById(int id_plat) throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ListeMenu p= new ListeMenu(); 
        Statement stmt = con.createStatement();
        ResultSet res = stmt.executeQuery("select * from vue where id_plat="+id_plat+"");      
        while(res.next())
        { 
            p.setId_plat(res.getInt("id_plat"));
            p.setNom_plat(res.getString("nom_plat")); 
            p.setPrix_de_revient(res.getInt("prix_de_revient")); 
            p.setNom_categorie(res.getString("nom_categorie"));
            p.setId_categorie(res.getInt("id_categorie"));
            
        }
        con.close();
        return p;
    }
}
