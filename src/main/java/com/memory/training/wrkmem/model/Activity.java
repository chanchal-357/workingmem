package com.memory.training.wrkmem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "activity")
public class Activity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@Column(name = "activity_name_en")
	private String activity_name_en;

	@Column(name = "activity_name_th")
	private String activity_name_th;

	@Column(name = "description")
	private String description;

	@Column(name = "status")
	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getActivity_name_en() {
		return activity_name_en;
	}
	
	public void setActivity_name_en(String activity_name_en) {
		this.activity_name_en = activity_name_en;
	}
	
	public String getActivity_name_th() {
		return activity_name_th;
	}
	
	public void setActivity_name_th(String activity_name_th) {
		this.activity_name_th = activity_name_th;
	}

	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Integer getStatus() {
		return status;
	}
	
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	

}