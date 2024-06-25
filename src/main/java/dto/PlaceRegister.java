package dto;

public class PlaceRegister {
	private String fname ;
	private String phone ;
	private String email ;
	private String vehicle ;
	private String availablefor ;
	private String price;
	private String datee ;
	private String enter;
	private String exit;
	private String cctv;
	private String square;
	private String address;
	private String location;
	private int idparkplace;
	

	public PlaceRegister(int idparkplace) {
		this.idparkplace = idparkplace;
	}

	public PlaceRegister(String fname, String phone, String email, String vehicle, String availablefor, String price,
			String datee, String enter, String exit, String cctv, String square, String address, String location) {
		super();
		this.fname = fname;
		this.phone = phone;
		this.email = email;
		this.vehicle = vehicle;
		this.availablefor = availablefor;
		this.price = price;
		this.datee = datee;
		this.enter = enter;
		this.exit = exit;
		this.cctv = cctv;
		this.square = square;
		this.address = address;
		this.location = location;
	}
	
	public int getIdparkplace() {
		return idparkplace;
	}
	public void setIdparkplace(int idparkplace) {
		this.idparkplace = idparkplace;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
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
	public String getAvailablefor() {
		return availablefor;
	}
	public void setAvailablefor(String availablefor) {
		this.availablefor = availablefor;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDatee() {
		return datee;
	}
	public void setDatee(String datee) {
		this.datee = datee;
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
	public String getCctv() {
		return cctv;
	}
	public void setCctv(String cctv) {
		this.cctv = cctv;
	}
	public String getSquare() {
		return square;
	}
	public void setSquare(String square) {
		this.square = square;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

}
