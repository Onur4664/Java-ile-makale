package makaleekle;
import java.beans.Statement;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.text.SimpleDateFormat;  
import java.util.Date;

import makaleekle.makaleeklegetset;
public class makaleeklebaglanti {
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
	String inceleyen;
	String rapor;
	public makaleeklebaglanti() {
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
	public boolean insertData(makaleeklegetset veri)
	{
	
			baslik=veri.getBaslik();
			icerik=veri.getIcerik();
			alan=veri.getAlan();
			tarih=veri.getTarih();
			yazar=veri.getYazar();
			durum=veri.getDurum();
			  try { CallableStatement cs; cs=(CallableStatement) con.prepareCall("{call mekle(?,?,?,?,?,?)}"); 
	          
	           cs.setString(1,baslik); 
	           cs.setString(2,icerik); 
	           cs.setString(3,alan); 
	           cs.setString(4,tarih); 
	           cs.setString(5,yazar); 
	           cs.setString(6,durum); 
	           cs.execute(); System.out.println("Baþarýlý"); return true; 
	           } 
	           catch (Exception e) { System.out.println("Hata:"+e.getMessage()); 
	           } return false; 
	}
	public boolean deleteData( makaleeklegetset veri)
	{ id=veri.getId();
		try
		{

			CallableStatement stm=(CallableStatement) con.prepareCall("{call mdelete(?)}");		 
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

	
	public boolean atanacakhocaaldim(makaleeklegetset veri)
	{   id=veri.getId();
		alan=veri.getAlan();
		return true;
	}
	public ResultSet atiyor()
	{
		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call hbelirle(?)}");
		stm.setString(1, alan);
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
	public ResultSet selectData(int id)
	{
		id=id;
		

		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call mselectdata(?)}");
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
	
	public ResultSet bekleyenmakale(makaleeklegetset veri)
	{
		inceleyen=veri.getInceleyen();

		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call miselectdata(?)}");
		stm.setString(1, inceleyen);
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
	
	public boolean onaylandi(makaleeklegetset veri)
	{   id=veri.getId();
	  try
		{
			CallableStatement statement=(CallableStatement) con.prepareCall("{call monaylandi(?)}"); 
			statement.setInt(1,id); 

			int result=statement.executeUpdate(); if(result>0) { System.out.println("Durum Güncellendi"); return true; } else { 
			return false; } 

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
		
	}
	
	public boolean red(makaleeklegetset veri)
	{   id=veri.getId();
	  try
		{
			CallableStatement statement=(CallableStatement) con.prepareCall("{call mret(?)}"); 
			statement.setInt(1,id); 

			int result=statement.executeUpdate(); if(result>0) { System.out.println("Durum Güncellendi"); return true; } else { 
			return false; } 

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
		
	}
	
	public ResultSet raporbekleyenmakale(makaleeklegetset veri)
	{
		inceleyen=veri.getInceleyen();
		id=id;
		
		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call mselect(?)}");
		stm.setString(1, inceleyen);
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
	
	public boolean rapor(makaleeklegetset veri)
	{  
     	rapor=veri.getRapor();
     	id=veri.getId();
   	  try
   		{
   			CallableStatement statement=(CallableStatement) con.prepareCall("{call mrapor(?,?)}"); 
   			statement.setInt(1,id); 
   			statement.setString(2,rapor); 

   			int result=statement.executeUpdate(); if(result>0) { System.out.println("Durum Güncellendi"); return true; } else { 
   			return false; } 

   		}
   		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
   		
	}
}
