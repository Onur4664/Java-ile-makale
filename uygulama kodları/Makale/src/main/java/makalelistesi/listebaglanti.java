package makalelistesi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.CallableStatement;

import makalelistesi.listegetset;
public class listebaglanti {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/makale?useUnicode=true&characterEncoding=UTF-8";
    private java.sql.Statement stm;
	private Connection con ;
	private  ResultSet resultSet = null;
	String baslik;
	String icerik;
	String alan;
	int id;
	String tarih;
	String yazar;
	String durum;
	public listebaglanti() {
		   try {
				Class.forName(driver);
				 System.out.println("JDBC surucu basari ile yüklendi.");
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}	  
			try{
				con=DriverManager.getConnection(url,"root","12345");System.out.println("Veritabanýna baðlanýldý.");
				}
			catch (Exception e) { 
				System.out.println("Veri Tabanýna Baðlanýlamadý. Hata:"+e.getMessage()); System.exit(0);
				}
			try {
				stm=con.createStatement();
				
				}
			catch (Exception e) { 
					System.out.println("Hata:"+e.getMessage()); System.exit(0); 	
				}
	}	
	
	public ResultSet selectAllData()
	{	
		try
		{
			CallableStatement stm=(CallableStatement) con.prepareCall("{call listeselecttAllData()}");
	        boolean hasResult =stm.execute();
	        if(hasResult){
	        ResultSet rs=stm.getResultSet();
	        System.out.println("Baþarýlý");
	        return rs;
	        }

	        else 
	           return null;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
	}
	public boolean deleteData( listegetset veri)
	{ id=veri.getId();
	try
	{

		CallableStatement stm=(CallableStatement) con.prepareCall("{call yazardelete(?)}");		 
		stm.setInt(1, id);
		boolean hasResult =stm.execute();
		if(hasResult)
		{
			ResultSet rs=stm.getResultSet();
			System.out.println("Baþarýlý");
			
		}
		return true;
		
	}
	catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}

	}
	public boolean IdAldim(listegetset veri)
	{
		id = veri.getId();
		return true;
	}
	
	public ResultSet select()
	{
		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call select(?)}");
		stm.setInt(1, id);
        boolean hasResult =stm.execute();
        if(hasResult){
        ResultSet rs=stm.getResultSet();
        System.out.println("Baþarýlý...");
        return rs;
		}}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
	
	}
	public boolean updateData(listegetset veri)
	{   
		id=veri.getId();
		baslik=veri.getBaslik();
		icerik=veri.getIcerik();
		alan=veri.getAlan();
		
		try
		{
			CallableStatement statement=(CallableStatement) con.prepareCall("{call yupdate(?,?,?,?)}"); 
			statement.setInt(1,id); 
			statement.setString(2,baslik); 
			statement.setString(3,icerik); 
			statement.setString(4,alan); 

			int result=statement.executeUpdate(); if(result>0) { System.out.println("Durum Güncellendi"); return true; } else { 
			return false; } 

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
	}
}
