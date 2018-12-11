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
    @JoinColumn(name = "animal_id")
    private Animal animal;

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

	public Activity getActivity() {
		return activity;
	}

	public void setActivity_id(Activity activity) {
		this.activity = activity;
	}
	
	public Animal getAnimal() {
		return animal;
	}
	
	public void setAnimal(Animal animal) {
		this.animal = animal;
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