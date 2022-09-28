package shopping.admin.bean;

public class Admin {
	private String id ;
	private String password ;
	
	public Admin() {
		
	}	
	@Override
	public String toString() {
		return "Admin [id=" + id + ", password=" + password + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}