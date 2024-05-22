package vss.beans;

import java.sql.Date;

//provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company, date
public class Provider {
private String provider_id, password, company_name, contact_number, owner_name, email_ID, city, address, about_company;
private Date date;
public String getProvider_id() {
	return provider_id;
}
public void setProvider_id(String provider_id) {
	this.provider_id = provider_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getCompany_name() {
	return company_name;
}
public void setCompany_name(String company_name) {
	this.company_name = company_name;
}
public String getContact_number() {
	return contact_number;
}
public void setContact_number(String contact_number) {
	this.contact_number = contact_number;
}
public String getOwner_name() {
	return owner_name;
}
public void setOwner_name(String owner_name) {
	this.owner_name = owner_name;
}
public String getEmail_ID() {
	return email_ID;
}
public void setEmail_ID(String email_ID) {
	this.email_ID = email_ID;
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
public String getAbout_company() {
	return about_company;
}
public void setAbout_company(String about_company) {
	this.about_company = about_company;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Provider(String provider_id, String password, String company_name, String contact_number, String owner_name,
		String email_ID, String city, String address, String about_company, Date date) {
	super();
	this.provider_id = provider_id;
	this.password = password;
	this.company_name = company_name;
	this.contact_number = contact_number;
	this.owner_name = owner_name;
	this.email_ID = email_ID;
	this.city = city;
	this.address = address;
	this.about_company = about_company;
	this.date = date;
}
public Provider() {
	super();
	// TODO Auto-generated constructor stub
}
public Provider(String name, String ownername, String email, String phone, String aboutcompany, String address2) {
	// TODO Auto-generated constructor stub
}

}
