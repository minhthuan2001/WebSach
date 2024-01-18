package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {

	public Connection cn;
	public void ketnoi() throws Exception {
		
		//B1: Xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//System.out.println("Da xac dinh duoc heqtcsdl");
		String url="jdbc:sqlserver://LAPTOP-I0MPF7QV:1433;databaseName=QLSach;user=sa; password=123";
		cn=DriverManager.getConnection(url);
		System.out.println("Da ket noi");
	}

}
	