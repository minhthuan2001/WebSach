package bo;

import java.util.ArrayList;

import bean.Adminxacnhanbean;
import dao.chitietHDdao;

public class chitietHDbo {
	chitietHDdao cthdao = new chitietHDdao();
	public int Them(String MaSach, long SoLuongMua, long MaHoaDon) throws Exception {
		return cthdao.Them(MaSach, SoLuongMua, MaHoaDon);
	}
	public ArrayList<Adminxacnhanbean> getXacNhan() throws Exception {
		return cthdao.getXacNhan();
	
	}
	public int CapNhat(long mct) throws Exception{
		return cthdao.CapNhat(mct);
	}
}
