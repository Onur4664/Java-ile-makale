package yazarlogin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.CallableStatement;

import yazarlogin.yazargirisgetset;
public class yazargirisbaglanti {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/makale?useUnicode=true&characterEncoding=UTF-8";
    private java.sql.Statement stm;
	private Connection con ;
	private  ResultSet resultSet = null;
	String kullaniciad;
	String sifre;
	
	public yazargirisbaglanti() {
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
	public boolean VeriAldým(yazargirisgetset veri)
	{
		kullaniciad = veri.getKullaniciad();
		return true;
	}
	public ResultSet Kontrol()
	{		
		try
		{
			        CallableStatement stm=(CallableStatement) con.prepareCall("{call yazargiris()}");
					boolean hasResult =stm.execute();
					if(hasResult){
					ResultSet rs=stm.getResultSet();
					System.out.println(" listelendi..");
					return rs;
					}

					else 
					   return null;

					}
		
		catch (Exception e) 
		{ 
			System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;

		
	}	 
}
