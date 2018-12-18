package com.memory.training.wrkmem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "animal")
public class Animal {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@Column(name = "name_en")
	private String name_en;

	@Column(name = "name_th")
	private String name_th;

	@Column(name = "audio_title")
	private String audio_title;
	
	@Column(name = "image_title")
	private String image_title;

	@Column(name = "status")
	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName_en() {
		return name_en;
	}
	
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}
	
	public String getName_th() {
		return name_th;
	}
	
	public void setName_th(String name_th) {
		this.name_th = name_th;
	}

	public String getAudio_title() {
		return audio_title;
	}
	
	public void setImage_title(String audio_title) {
		this.audio_title = audio_title;
	}
	
	public String getImage_title() {
		return image_title;
	}
	
	public void setAudio_title(String image_title) {
		this.image_title = image_title;
	}
	
	public Integer getStatus() {
		return status;
	}
	
	public void setStatus(Integer status) {
		this.status = status;
	}

}