package hocakayit;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import hocakayit.getset;
import yazarprofil.profilgetset;
public class baglanti {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/makale?useUnicode=true&characterEncoding=UTF-8";
    private java.sql.Statement stm;
	private Connection con ;
	private  ResultSet resultSet = null;
	String kullaniciad;
	String sifre;
	String hocaad;
	String hocasoyad;
	String mail;
	String alan;
	int skor;
	int id;
		public baglanti() {
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
	
	public boolean insert_value(getset veri)
	{
		hocaad = veri.getHocaad();
		hocasoyad=veri.getHocasoyad();
		kullaniciad=veri.getKullaniciad();
		mail=veri.getMail();
		sifre=veri.getSifre();
		alan=veri.getAlan();
		skor=veri.getSkor();

		  try { CallableStatement cs; cs=(CallableStatement) con.prepareCall("{call hekle(?,?,?,?,?,?,?)}"); 
          
          cs.setString(1,hocaad); 
          cs.setString(2,hocasoyad); 
          cs.setString(3,kullaniciad); 
          cs.setString(4,mail); 
          cs.setString(5,sifre); 
          cs.setString(6,alan); 
          cs.setInt(7,skor); 
          cs.execute(); System.out.println("Baþarýlý"); return true; 
          } 
          catch (Exception e) { System.out.println("Hata:"+e.getMessage()); 
          } return false; 
	}
	public boolean VeriAldým(getset veri)
	{
		kullaniciad = veri.getKullaniciad();
		return true;
	}
	public ResultSet selectData()
	{	

		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call hselectdata(?)}");
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
	public ResultSet updateData(getset veri)
	{   
		kullaniciad = veri.getKullaniciad();
		hocaad = veri.getHocaad();
		hocasoyad=veri.getHocasoyad();
		mail=veri.getMail();
		sifre=veri.getSifre();
		alan=veri.getAlan();
		
		try
		{CallableStatement stm=(CallableStatement) con.prepareCall("{call hupdate(?,?,?,?,?,?)}");
		stm.setString(1, kullaniciad);
		stm.setString(2, hocaad);
		stm.setString(3, hocasoyad);
		stm.setString(4, mail);
		stm.setString(5, sifre);
		stm.setString(6, alan);
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
			CallableStatement stm=(CallableStatement) con.prepareCall("{call hselecttAllData()}");
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

