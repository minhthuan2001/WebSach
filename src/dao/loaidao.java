package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds= new ArrayList<loaibean>();
		//b1: tao cau lenh csdl: qlsach
		KetNoi kn = new KetNoi();
			kn.ketnoi();
		//b2: Tao cau lenh sql
		String sql="SELECT * FROM loai";
		//b3:tao cau lenh
		PreparedStatement cmd= kn.cn.prepareStatement(sql);
		//b4:Truyen tham so vao cau lenh neu co
		//b5:Thuc hien cau lenh
		ResultSet rs =cmd.executeQuery();
		//b6:Duyet rs
		while(rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			ds.add(new loaibean(maloai,tenloai));
		//b7: Dong cac doi tuong
			
		}
		rs.close();kn.cn.close();
		return ds;
	}
}
