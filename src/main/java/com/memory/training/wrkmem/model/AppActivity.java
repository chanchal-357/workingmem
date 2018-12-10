package com.memory.training.wrkmem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "app_activity")
public class AppActivity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@Column(name = "activity_id")
	private Integer activity_id;

	@Column(name = "name_en")
	private String name_en;

	@Column(name = "name_th")
	private String name_th;

	@Column(name = "audio_title")
	private String audio_title;

	@Column(name = "activity_level")
	private Integer activity_level;

	@Column(name = "level_order")
	private Integer level_order;

	@Column(name = "is_example")
	private Boolean is_example;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getActivity_id() {
		return activity_id;
	}

	public void setActivity_id(Integer activity_id) {
		this.activity_id = activity_id;
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

	public void setAudio_title(String audio_title) {
		this.audio_title = audio_title;
	}

	public Integer getActivity_level() {
		return activity_level;
	}

	public void setActivity_level(Integer activity_level) {
		this.activity_level = activity_level;
	}

	public Integer getLevel_order() {
		return level_order;
	}

	public void setLevel_order(Integer level_order) {
		this.level_order = level_order;
	}

	public Boolean getIs_example() {
		return is_example;
	}

	public void setIs_example(Boolean is_example) {
		this.is_example = is_example;
	}

}