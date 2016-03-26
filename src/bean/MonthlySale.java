package bean;

//Written By Shreyas - 11/25/2015 
//to display monthly sale info - moonthlySale bean

public class MonthlySale {
	
	private String prodName;
	private String purMonth;
	private String purYear;
	private String totalQty;
	private String totalPrice;
	private String avgSalePrice;
	
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getPurMonth() {
		return purMonth;
	}
	public void setPurMonth(String putMonth) {
		this.purMonth = putMonth;
	}
	public String getPurYear() {
		return purYear;
	}
	public void setPurYear(String purYear) {
		this.purYear = purYear;
	}
	public String getTotalQty() {
		return totalQty;
	}
	public void setTotalQty(String totalQty) {
		this.totalQty = totalQty;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getAvgSalePrice() {
		return avgSalePrice;
	}
	public void setAvgSalePrice(String avgSalePrice) {
		this.avgSalePrice = avgSalePrice;
	}
	
}
