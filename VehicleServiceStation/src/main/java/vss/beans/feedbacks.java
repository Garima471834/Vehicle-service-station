package vss.beans;

import java.sql.Date;

//feedback_id, name, email, remarks, ratings, date
/*
 * public class Feedbacks { private int feedback_id,ratings; private String
 * name,email,remarks; private Date date; public int getFeedback_id() { return
 * feedback_id; } public void setFeedback_id(int feedback_id) { this.feedback_id
 * = feedback_id; } public int getRatings() { return ratings; } public void
 * setRatings(int ratings) { this.ratings = ratings; } public String getName() {
 * return name; } public void setName(String name) { this.name = name; } public
 * String getEmail() { return email; } public void setEmail(String email) {
 * this.email = email; } public String getRemarks() { return remarks; } public
 * void setRemarks(String remarks) { this.remarks = remarks; } public Date
 * getDate() { return date; } public void setDate(Date date) { this.date = date;
 * } public Feedbacks(int ratings, String name, String email, String remarks,
 * Date date) { super(); this.ratings = ratings; this.name = name; this.email =
 * email; this.remarks = remarks; this.date = date; } public Feedbacks() {
 * super(); // TODO Auto-generated constructor stub }
 * 
 * 
 * }
 */
//feedback_id, name, email, remarks, ratings, date
public class feedbacks {
	private int feedback_id,ratings;
	 private String name,email,remarks;
	
	 private Date date;

	public int getFeedback_id() {
		return feedback_id;
	}

	public void setFeedback_id(int feedback_id) {
		this.feedback_id = feedback_id;
	}

	public int getRatings() {
		return ratings;
	}

	public void setRatings(int ratings) {
		this.ratings = ratings;
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

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public feedbacks(int ratings, String name, String email, String remarks, Date date) {
		super();
		this.ratings = ratings;
		this.name = name;
		this.email = email;
		this.remarks = remarks;
		this.date = date;
	}

	public feedbacks() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
		/*
		 * public int getFeedback_id() { return feedback_id; } public void
		 * setFeedback_id(int feedback_id) { this.feedback_id = feedback_id; } public
		 * String getName() { return name; } public void setName(String name) {
		 * this.name = name; } public String getEmail() { return email; } public void
		 * setEmail(String email) { this.email = email; } public String getRemarks() {
		 * return remarks; } public void setRemarks(String remarks) { this.remarks =
		 * remarks; } public String getRatings() { return ratings; } public void
		 * setRatings(String ratings) { this.ratings = ratings; } public Date getDate()
		 * { return date; } public void setDate(Date date) { this.date = date; } public
		 * feedbacks(String name, String email, String remarks, int r, Date date) {
		 * super(); this.name = name; this.email = email; this.remarks = remarks;
		 * this.ratings = r; this.date = date; } public feedbacks() { super(); // TODO
		 * Auto-generated constructor stub }
		 * 
		 * 
		 */
}