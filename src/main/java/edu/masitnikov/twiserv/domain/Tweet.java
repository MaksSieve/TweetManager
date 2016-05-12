package edu.masitnikov.twiserv.domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Tweet {

	@Id
	@Column
	@GeneratedValue
	private Integer id;

    @Column
	private String text;

    @Column
	@Temporal(TemporalType.TIMESTAMP)
    private Date date;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    // Getters and setters
	
}
