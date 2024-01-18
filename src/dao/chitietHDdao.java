package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Adminxacnhanbean;
import bean.sachbean;

public class chitietHDdao {
	public int Them(String MaSach, long SoLuongMua, long MaHoaDon) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		String sql = "INSERT INTO ChiTietHoaDon(MaSach, SoLuongMua, MaHoaDon, damua) VALUES(?, ?, ?, ?)";
		
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		
		cmd.setString(1,MaSach);
		cmd.setLong(2,SoLuongMua);
		cmd.setLong(3,MaHoaDon);
		cmd.setBoolean(4, false);
		
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	public ArrayList<Adminxacnhanbean> getXacNhan() throws Exception {
		ArrayList<Adminxacnhanbean> ds = new ArrayList<Adminxacnhanbean>();
		// B1: KET NOI VAO CSDL: QLSach
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		// B2: TAO CAU LENH SQL
		String sql = "select * from VAdminXacNhan";
		// B3: TAO CAU LENH
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// B4: TRUYEN THAM SO VAO CAU LENH NEU CO
		// B5: THUC HIEN CAU LENH
		ResultSet rs = cmd.executeQuery();
		// B6: DUYET rs
		while (rs.next()) {
			 long MaChiTietHD = rs.getLong("MaChiTietHD");
			 String hoten = rs.getString("hoten");
			 String tensach = rs.getString("tensach");
			 long gia = rs.getLong("gia");
			 long SoLuongMua =  rs.getLong("SoLuongMua");
			 String thanhtien = rs.getString("thanhtien");
			boolean damua = rs.getBoolean("damua");

			ds.add(new Adminxacnhanbean(MaChiTietHD, hoten, tensach, gia, SoLuongMua, thanhtien, damua));
		}
		// B7: ÐÓNG CAC DOI TUONG
		rs.close();
		kn.cn.close();
		return ds;
	}
public int CapNhat(long mct) throws Exception{
	KetNoi kn = new KetNoi();
	kn.ketnoi();
	
	String sql = "update ChiTietHoaDon set damua = 1 where MaChiTietHD = ?";
	
	PreparedStatement cmd = kn.cn.prepareStatement(sql);	
	
	cmd.setLong(3,mct);

	int kq = cmd.executeUpdate();
	cmd.close();
	kn.cn.close();
	return kq;
	
}
}
