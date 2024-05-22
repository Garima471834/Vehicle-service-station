package vss.beans;

import java.sql.Date;

//Booking_id, client_id, service_id, provider_id, date, Booking_status, provider_response
public class BookingServices {
private int booking_id;
private String client_id, provider_id,Booking_status, provider_response;
private String employee_id;
public BookingServices(String employee_id) {
	super();
	this.employee_id = employee_id;
}
String []service_id;

private Services services;

private Employees employees;


public Services getServices() {
	return services;
}
public void setServices(Services services) {
	this.services = services;
}
private Client client;

public Client getClient() {
	return client;
}
public void setClient(Client client) {
	this.client = client;
}
public void setService_id(String[] service_id) {
	this.service_id = service_id;
}
private Date date;
public int getBooking_id() {
	return booking_id;
}
public void setBooking_id(int booking_id) {
	this.booking_id = booking_id;
}
public String getClient_id() {
	return client_id;
}
public void setClient_id(String client_id) {
	this.client_id = client_id;
}

public String getProvider_id() {
	return provider_id;
}
public void setProvider_id(String provider_id) {
	this.provider_id = provider_id;
}
public String getBooking_status() {
	return Booking_status;
}
public void setBooking_status(String booking_status) {
	Booking_status = booking_status;
}
public String getProvider_response() {
	return provider_response;
}
public void setProvider_response(String provider_response) {
	this.provider_response = provider_response;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}

public BookingServices(String client_id, String provider_id, String[] service_id, Date date) {
	super();
	this.client_id = client_id;
	this.provider_id = provider_id;
	this.service_id = service_id;
	this.date = date;
}


public String[] getService_id() {
	return service_id;
}
public BookingServices() {
	super();
	
}

public String getEmployee_id() {
	return employee_id;
}
public void setEmployee_id(String employee_id) {
	this.employee_id = employee_id;
}
public Employees getEmployees() {
	return employees;
}
public void setEmployees(Employees employees) {
	this.employees = employees;
}

}
