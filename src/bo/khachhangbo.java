package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	public khachhangbean ktdn(String tendn, String pass) throws Exception {
		return khdao.ktdn(tendn, pass);
	}
}
