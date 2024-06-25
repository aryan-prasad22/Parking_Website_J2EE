package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.ContactRegister;
import dto.ParkerRegister;
import dto.PlaceRegister;
import dto.UserRegistration;

public class P_AdminDAO {
	public Connection createConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parky","root","Groot");
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;	
	}

	
	public int register(UserRegistration ur) {
		int i = 0;
		Connection con=null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into UserRegistration values(?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, ur.getFname());
			ps.setString(2, ur.getLname());
			ps.setString(3, ur.getDob());
			ps.setString(4, ur.getPhone());
			ps.setString(5, ur.getEmail());
			ps.setString(6, ur.getAddress());
			ps.setString(7, ur.getPwd());
			ps.setString(8, ur.getGender());
			
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public ArrayList<UserRegistration> getAllUsers() {
		ArrayList<UserRegistration> li = new ArrayList<UserRegistration>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from UserRegistration");
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				UserRegistration user = new UserRegistration(rs.getString("fname"), rs.getString("lname"),rs.getString("dob"), rs.getString("phone"),rs.getString("email"), rs.getString("gender"), rs.getString("address"), rs.getString("pwd"));
				li.add(user);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return li;
	}


	public int deleteUser(String userEmail) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from UserRegistration where email = ?");
			 ps.setString(1, userEmail);
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
			}
	
	
	
/*------------------------------------------------------------------------------------------------------------------------------------------*/	
	
	
	
	public int checkLogin(String u, String p) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from UserRegistration where email = ? and pwd= ?");
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				i=1;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
	/*------------------------------------------------------------------------------------------------------------------------------------------*/	
	
	

	public int parkRegister(ParkerRegister pr) {
		int i = 0;
		Connection con=null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into parkregister(fname,lname,phone,email,vehicle,plate,carmodel,color,datee,hrs,enter,exitt) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, pr.getFname());
			ps.setString(2, pr.getLname());
			ps.setString(3, pr.getPhone());
			ps.setString(4, pr.getEmail());
			ps.setString(5, pr.getVehicle());
			ps.setString(6, pr.getPlate());
			ps.setString(7, pr.getCarmodel());
			ps.setString(8, pr.getColor());
			ps.setString(9, pr.getDate());
			ps.setString(10, pr.getHrs());
			ps.setString(11, pr.getEnter());
			ps.setString(12, pr.getExit());
			
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	public int parkPlaceRegister(PlaceRegister place) {
		int i = 0;
		Connection con=null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into parkplace(fname,phone,email,vehicle,availablefor,price,datee,enter,exitt,cctv,square,address,location) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, place.getFname());
			ps.setString(2, place.getPhone());
			ps.setString(3, place.getEmail());
			ps.setString(4, place.getVehicle());
			ps.setString(5, place.getAvailablefor());
			ps.setString(6, place.getPrice());
			ps.setString(7, place.getDatee());
			ps.setString(8, place.getEnter());
			ps.setString(9, place.getExit());
			ps.setString(10, place.getCctv());
			ps.setString(11, place.getSquare());
			ps.setString(12, place.getAddress());
			ps.setString(13, place.getLocation());
			
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	


	public ArrayList<PlaceRegister> getAllPlaceUsers(ParkerRegister p) {
		ArrayList<PlaceRegister> li = new ArrayList<PlaceRegister>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from parkplace where vehicle= ? and datee=? ");
			ps.setString(1, p.getVehicle());
			ps.setString(2, p.getDate());
//			ps.setString(3, p.getEnter());
//			ps.setString(4, p.getExit());
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				PlaceRegister pr = new PlaceRegister(rs.getString("fname"), rs.getString("phone"), rs.getString("email"), rs.getString("vehicle"), rs.getString("availablefor"), rs.getString("price"), rs.getString("datee"), rs.getString("enter"), rs.getString("exitt"), rs.getString("cctv"), rs.getString("square"), rs.getString("address"), rs.getString("location"));
				pr.setIdparkplace(rs.getInt("idparkplace"));
				li.add(pr);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return li;
	}


	public PlaceRegister getParticularUser(int idparkplace) {
		PlaceRegister pr =null;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from parkplace where idparkplace =?");
			ps.setInt(1, idparkplace);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				pr = new PlaceRegister(rs.getString("fname"), rs.getString("phone"), rs.getString("email"), rs.getString("vehicle"), rs.getString("availablefor"), rs.getString("price"), rs.getString("datee"), rs.getString("enter"), rs.getString("exitt"), rs.getString("cctv"), rs.getString("square"), rs.getString("address"), rs.getString("location"));
			} 
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return pr;
	}


	public int contactRegister(ContactRegister cr) {
		int i = 0;
		Connection con=null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into contactus(name,email,subject,message) values(?, ?, ?, ?)");
			ps.setString(1, cr.getName());
			ps.setString(2, cr.getEmail());
			ps.setString(3, cr.getSubject());
			ps.setString(4, cr.getMessage());
			
			
			
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public ArrayList<ContactRegister> getAllContactUs() {
		ArrayList<ContactRegister> li = new ArrayList<ContactRegister>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from contactus");
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				ContactRegister contact = new ContactRegister(rs.getString("name"), rs.getString("email"), rs.getString("subject"), rs.getString("message"));
				contact.setIdcontact(rs.getInt("idcontactus"));
				li.add(contact);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return li;
	}


	public int checkAdminLogin(String u, String p) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from administrator where username = ? and password= ?");
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				i=1;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	public int deleteContact(int id) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from contactus where idcontactus = ?");
			 ps.setInt(1, id);
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	public ArrayList<ParkerRegister> getAllParker() {
		ArrayList<ParkerRegister> li = new ArrayList<ParkerRegister>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from parkregister");
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				ParkerRegister pr = new ParkerRegister(rs.getString("fname"),rs.getString("lname"), rs.getString("phone"), rs.getString("email"), rs.getString("vehicle"), rs.getString("plate"), rs.getString("carmodel"), rs.getString("color"), rs.getString("datee"), rs.getString("hrs"), rs.getString("enter"), rs.getString("exitt"));		
				pr.setId(rs.getInt("id"));
				li.add(pr);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return li;
	}


	public ArrayList<PlaceRegister> getAllPlaceDetails() {
		ArrayList<PlaceRegister> li = new ArrayList<PlaceRegister>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from parkplace");
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				PlaceRegister pr = new PlaceRegister(rs.getString("fname"),rs.getString("phone"),rs.getString("email"),rs.getString("vehicle"),rs.getString("availablefor"),rs.getString("price"),rs.getString("datee"),rs.getString("enter"),rs.getString("exitt"),rs.getString("cctv"),rs.getString("square"),rs.getString("address"),rs.getString("location"));
				pr.setIdparkplace(rs.getInt("idparkplace"));
				li.add(pr);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return li;
	}


	public int deleteParker(int id) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from parkregister where id = ?");
			 ps.setInt(1, id);
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	public int deletePlace(int parkID) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from parkplace where idparkplace = ?");
			 ps.setInt(1, parkID);
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}


	public UserRegistration getparticularUser(String userEmail) {
		UserRegistration ur = null;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from UserRegistration where email = ?");
			ps.setString(1, userEmail);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				ur = new UserRegistration(rs.getString("fname"), rs.getString("lname"),rs.getString("dob"), rs.getString("phone"),rs.getString("email"), rs.getString("address"), rs.getString("pwd"), rs.getString("gender"));
				
			} 
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return ur;
	}


	public int updateUser(UserRegistration ur) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("update UserRegistration set fname= ?,lname= ?, dob=? ,phone=? ,address=?,pwd=?,gender=? where email =?");
			ps.setString(1, ur.getFname());
			ps.setString(2, ur.getLname());
			ps.setString(3, ur.getDob());
			ps.setString(4, ur.getPhone());
			ps.setString(5, ur.getAddress());
			ps.setString(6, ur.getPwd());
			ps.setString(7, ur.getGender());
			ps.setString(8, ur.getEmail());
			
			i = ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
}
