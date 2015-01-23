package com.compro.Trek.form;



public class TrekModel {
	private int trek_id;
	private String trekname;
	private String startdate;
	private String enddate;
	private String meetuppoint;
	private String category;
	private String imgurl;
	private String description;

	private String treksummary;
	

	public String getTreksummary() {
		return treksummary;
	}

	public void setTreksummary(String treksummary) {
		this.treksummary = treksummary;
	}


	
	public String getImgurl() {
		return imgurl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getTrek_id() {
		return trek_id;
	}

	public void setTrek_id(int trek_id) {
		this.trek_id = trek_id;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = "/resources/images/"+imgurl;
	}

	public String getTrekname() {
		return trekname;
	}
	public void setTrekname(String trekname) {
		this.trekname = trekname;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getMeetuppoint() {
		return meetuppoint;
	}
	public void setMeetuppoint(String meetuppoint) {
		this.meetuppoint = meetuppoint;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
