package vss.beans;

import java.sql.Date;

public class Offers_Scheme {
	
	private Services sr;
	
	
	
public Services getSr() {
		return sr;
	}
	public void setSr(Services sr) {
		this.sr = sr;
	}
private int service_id,scheme_id;
private String provider_id, discount_offers;
private Date date;
public int getService_id() {
	return service_id;
}
public void setService_id(int service_id) {
	this.service_id = service_id;
}
public int getScheme_id() {
	return scheme_id;
}
public void setScheme_id(int scheme_id) {
	this.scheme_id = scheme_id;
}
public String getProvider_id() {
	return provider_id;
}
public void setProvider_id(String provider_id) {
	this.provider_id = provider_id;
}
public String getDiscount_offers() {
	return discount_offers;
}
public void setDiscount_offers(String discount_offers) {
	this.discount_offers = discount_offers;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Offers_Scheme(int service_id, String provider_id, String discount_offers, Date date) {
	super();
	this.service_id = service_id;
	this.provider_id = provider_id;
	this.discount_offers = discount_offers;
	this.date = date;
}
public Offers_Scheme() {
	super();
	// TODO Auto-generated constructor stub
}

}
