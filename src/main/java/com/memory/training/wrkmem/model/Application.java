package com.memory.training.wrkmem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "application")
public class Application {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "activity_id")
	private Activity activity;

	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "app_obj_id")
    private AppObject appObject;

	@Column(name = "activity_level")
	private Integer activity_level;
	
	@Column(name = "level_round")
	private Integer level_round;

	@Column(name = "round_order")
	private Integer round_order;
	
	@Column(name = "is_image") // 1 --> display image, 0 --> play audio for Activity 5 
	private Boolean is_image;

	@Column(name = "is_example")
	private Boolean is_example;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Activity getActivity() {
		return activity;
	}

	public void setActivity_id(Activity activity) {
		this.activity = activity;
	}
	
	public AppObject getAppObject() {
		return appObject;
	}
	
	public void setAppObject(AppObject appObject) {
		this.appObject = appObject;
	}

	public Integer getActivity_level() {
		return activity_level;
	}

	public void setActivity_level(Integer activity_level) {
		this.activity_level = activity_level;
	}

	public Integer getLevel_round() {
		return level_round;
	}

	public void setLevel_round(Integer level_order) {
		this.level_round = level_order;
	}
	
	public Integer getRound_order() {
		return round_order;
	}
	
	public void setRound_order(Integer round_order) {
		this.round_order = round_order;
	}
	
	public Boolean getIs_image() {
		return is_image;
	}
	
	public void setIs_image(Boolean is_image) {
		this.is_image = is_image;
	}

	public Boolean getIs_example() {
		return is_example;
	}

	public void setIs_example(Boolean is_example) {
		this.is_example = is_example;
	}

	@Transient
	private Long levelCompletion;
	
	public Long getLevelCompletion() {
		return levelCompletion;
	}

	public void setLevelCompletion(Long levelCompletion) {
		this.levelCompletion = levelCompletion;
	}
	
}