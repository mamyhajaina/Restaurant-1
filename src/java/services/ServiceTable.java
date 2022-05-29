
package services;
  
import connexion.Connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList; 
import model.Table;
public class ServiceTable {
     public static ArrayList<Table> getAllTable()  throws Exception
    {
        Connexion connex = new Connexion();
        Connection con = connex.getConnection(); 
        ArrayList<Table> listTable= new ArrayList<Table>(); 
        Statement stmt = con.createStatement(); 
        ResultSet res = stmt.executeQuery("select * from  num_table");      
        while(res.next())
        {
            Table t= new Table();
            t.setId_table(res.getInt("id_table")); 
            listTable.add(t);
        }
        con.close();
        return listTable;
    }
    public static void insertTable() throws Exception
    {   
            Connexion connex = new Connexion();
            Connection con = connex.getConnection(); 
            String req="insert into num_table values(0)";
            PreparedStatement stmt = con.prepareStatement(req); 
            stmt.execute(req) ;
            con.close(); 
    }
    public static void deleteTable(int id_num_table) throws Exception
    {   
            Connexion connex = new Connexion();
            Connection con = connex.getConnection(); 
            String req="delete from num_table where id_table="+id_num_table+"";
            PreparedStatement stmt = con.prepareStatement(req); 
            stmt.execute(req) ;
            con.close(); 
    }
}
