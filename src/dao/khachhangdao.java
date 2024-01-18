package dao;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;
import dao.KetNoi;

public class khachhangdao {
	public static String ecrypt(String text) throws NoSuchAlgorithmException, UnsupportedEncodingException{ 
		String enrtext; 
		MessageDigest msd=MessageDigest.getInstance("MD5"); 
		byte[] srctextbyte=text.getBytes("UTF-8"); byte[] enrtextbyte=msd.digest(srctextbyte); 
		BigInteger big = new BigInteger(1, enrtextbyte); 
		enrtext=big.toString(16); 
		return enrtext; }
	public khachhangbean ktdn(String tendn, String pass) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		String sql = "Select * From khachhang where tendn=? and pass=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();	
		khachhangbean kh = null;
		if(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email = rs.getString("email");
			kh = new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
		}
		cmd.close();
		kn.cn.close();
		return kh;
	}
}
	
