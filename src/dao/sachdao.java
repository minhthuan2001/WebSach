package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception {
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		//b1 : ket noi vao csdl :qlsach
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		//b2: Tao cau lenh sql
		String sql= "select * from sach";
		//b3: tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4 truyen tham so vao cau lenh neu co
		//b5: thuc hien cau lenh
		ResultSet rs= cmd.executeQuery();
		//b6: Duyet rs
		while(rs.next()) {
			String masach= rs.getString("masach");
			String tensach= rs.getString("tensach");
			String tacgia = rs.getString("tacgia");
			Long soluong = rs.getLong("soluong");
			Long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			String maloai = rs.getString("maloai");

			ds.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai));
		}
		//b7: Dong cac doi tuong
		rs.close();
		kn.cn.close();
		return ds;
}
}
