package vss.beans;
//serial_number, provider_id, name, email, phone
public class Employees {

	private int serial_number;
	private String provider_id, name, email, phone,emp_id;
	public int getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(int serial_number) {
		this.serial_number = serial_number;
	}
	public String getProvider_id() {
		return provider_id;
	}
	public void setProvider_id(String provider_id) {
		this.provider_id = provider_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public Employees(String provider_id, String name, String email, String phone, String emp_id) {
		super();
		this.provider_id = provider_id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.emp_id = emp_id;
	}
	public Employees() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
