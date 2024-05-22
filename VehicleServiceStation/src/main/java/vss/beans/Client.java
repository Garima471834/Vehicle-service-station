package vss.beans;

import java.sql.Date;

//client_ID, client_password, client_name, email_ID, contact_number, city, address, date
public class Client {
private String client_ID, client_password, client_name, email_ID, contact_number, city, address;
private Date date;


public String getClient_ID() {
	return client_ID;
}
public void setClient_ID(String client_ID) {
	this.client_ID = client_ID;
}
public String getClient_password() {
	return client_password;
}
public void setClient_password(String client_password) {
	this.client_password = client_password;
}
public String getClient_name() {
	return client_name;
}
public void setClient_name(String client_name) {
	this.client_name = client_name;
}
public String getEmail_ID() {
	return email_ID;
}
public void setEmail_ID(String email_ID) {
	this.email_ID = email_ID;
}
public String getContact_number() {
	return contact_number;
}
public void setContact_number(String contact_number) {
	this.contact_number = contact_number;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Client(String client_ID, String client_password, String client_name, String email_ID, String contact_number,
		String city, String address, Date date) {
	super();
	this.client_ID = client_ID;
	this.client_password = client_password;
	this.client_name = client_name;
	this.email_ID = email_ID;
	this.contact_number = contact_number;
	this.city = city;
	this.address = address;
	this.date = date;
}
public Client() {
	super();
	// TODO Auto-generated constructor stub
}

}
