package dto;

public class ParkerRegister {

	private String fname ;
	private String lname;
	private String phone ;
	private String email ;
	private String vehicle ;
	private String plate ;
	private String carmodel;
	private String color ;
	private String date ;
	private String hrs ;
	private String enter;
	private String exit;
	private int id;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public ParkerRegister(String vehicle, String date) {
		super();
		this.vehicle = vehicle;
		this.date = date;
	}
	public ParkerRegister(String fname, String lname, String phone, String email, String vehicle, String plate,
			String carmodel, String color, String date, String hrs, String enter, String exit) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.vehicle = vehicle;
		this.plate = plate;
		this.carmodel = carmodel;
		this.color = color;
		this.date = date;
		this.hrs = hrs;
		this.enter = enter;
		this.exit = exit;
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
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getPlate() {
		return plate;
	}
	public void setPlate(String plate) {
		this.plate = plate;
	}
	public String getCarmodel() {
		return carmodel;
	}
	public void setCarmodel(String carmodel) {
		this.carmodel = carmodel;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getHrs() {
		return hrs;
	}
	public void setHrs(String hrs) {
		this.hrs = hrs;
	}
	public String getEnter() {
		return enter;
	}
	public void setEnter(String enter) {
		this.enter = enter;
	}
	public String getExit() {
		return exit;
	}
	public void setExit(String exit) {
		this.exit = exit;
	}
}
