package yazarkayit;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.CallableStatement;

import yazarkayit.yazarkayitgetset;
public class yazarkayitbaglanti {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/makale?useUnicode=true&characterEncoding=UTF-8";
    private java.sql.Statement stm;
	private Connection con ;
	private  ResultSet resultSet = null;
	String kullaniciad;
	String sifre;
	String yazarad;
	String yazarsoyad;
	String mail;
	
	public yazarkayitbaglanti() {
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
	public boolean insert_value(yazarkayitgetset veri)
	{
		yazarad = veri.getYazarad();
		yazarsoyad=veri.getYazarad();
		kullaniciad=veri.getKullaniciad();
		mail=veri.getMail();
		sifre=veri.getSifre();
	

  try {
	  CallableStatement cs; cs=(CallableStatement) con.prepareCall("{call yekle(?,?,?,?,?)}"); 
          
          cs.setString(1,yazarad); 
          cs.setString(2,yazarsoyad); 
          cs.setString(3,kullaniciad); 
          cs.setString(4,mail); 
          cs.setString(5,sifre); 
         
          cs.execute(); System.out.println("Baþarýlý"); return true; 
          } 
          catch (Exception e) { System.out.println("Hata:"+e.getMessage()); 
          } return false; 
}
}