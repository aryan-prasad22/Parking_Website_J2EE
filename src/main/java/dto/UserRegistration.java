package dto;

public class UserRegistration {
	private String fname ;
	private String lname;
	private String dob ;
	private String  phone;
	private String email ;
	private String address;
	private String pwd ;
	private String gender ;
	
	
	
	public UserRegistration(String email) {
		super();
		this.email = email;
	}
	public UserRegistration(String fname, String lname, String dob, String phone, String address, String pwd,
			String gender) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.phone = phone;
		this.address = address;
		this.pwd = pwd;
		this.gender = gender;
	}
	public UserRegistration(String fname, String lname, String dob, String phone, String email, String address,
			String pwd, String gender) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.pwd = pwd;
		this.gender = gender;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
