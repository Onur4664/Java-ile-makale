package yazarprofil;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import yazarprofil.profilgetset;
import yazarprofil.profilgetset;
public class profilbaglanti {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/makale?useUnicode=true&characterEncoding=UTF-8";
    private java.sql.Statement stm;
	private Connection con ;
	private  ResultSet resultSet = null;
		String kullaniciad;
		String yazarad;
		String yazarsoyad;
		String mail;
		String sifre;
		
		public profilbaglanti() {
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
		public boolean VeriAldým(profilgetset veri)
		{
			kullaniciad = veri.getKullaniciad();
			return true;
		}
		public ResultSet selectData()
		{
		
			

			try
			{CallableStatement stm=(CallableStatement) con.prepareCall("{call yselectdata(?)}");
			stm.setString(1, kullaniciad);
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
		public ResultSet updateData(profilgetset veri)
		{   
			kullaniciad = veri.getKullaniciad();
			yazarad = veri.getYazarad();
			yazarsoyad=veri.getYazarsoyad();
			mail=veri.getMail();
			sifre=veri.getSifre();
			
			try
			{CallableStatement stm=(CallableStatement) con.prepareCall("{call yazarupdate(?,?,?,?,?)}");
			stm.setString(1, kullaniciad);
			stm.setString(2, yazarad);
			stm.setString(3, yazarsoyad);
			stm.setString(4, mail);
			stm.setString(5, sifre);
			
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
		public ResultSet selectAllData()
		{	
			try
			{
				CallableStatement stm=(CallableStatement) con.prepareCall("{call makaleselecttAllData()}");
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
}
