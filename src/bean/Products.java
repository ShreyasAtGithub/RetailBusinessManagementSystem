package bean;

//Written By Shreyas - 11/25/2015 
//Products object bean

public class Products {
	
	private String pid;
	private String pname;
	private String qoh;
	private String qoh_threshold;
	private String original_price;
	private String discnt_rate;
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getQoh() {
		return qoh;
	}
	public void setQoh(String qoh) {
		this.qoh = qoh;
	}
	public String getQoh_threshold() {
		return qoh_threshold;
	}
	public void setQoh_threshold(String qoh_threshold) {
		this.qoh_threshold = qoh_threshold;
	}
	public String getOriginal_price() {
		return original_price;
	}
	public void setOriginal_price(String original_price) {
		this.original_price = original_price;
	}
	public String getDiscnt_rate() {
		return discnt_rate;
	}
	public void setDiscnt_rate(String discnt_rate) {
		this.discnt_rate = discnt_rate;
	}

}
