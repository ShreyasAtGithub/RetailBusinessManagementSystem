package bean;

// Written By Shreyas - 11/25/2015 

// Customer object bean

public class Customers {
	
	private String cname;
	private String telephone;
	private String visits_made;
	private String last_visit_made;
	private String cid;
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getVisits_made() {
		return visits_made;
	}
	public void setVisits_made(String visits_made) {
		this.visits_made = visits_made;
	}
	public String getLast_visit_made() {
		return last_visit_made;
	}
	public void setLast_visit_made(String last_visit_made) {
		this.last_visit_made = last_visit_made;
	}
	
}
