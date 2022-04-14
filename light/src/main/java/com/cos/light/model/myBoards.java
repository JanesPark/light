package com.cos.light.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

	@Table(name="myboards")
	@Data
	@NoArgsConstructor
	@AllArgsConstructor
	@Builder
	@Entity
	@SequenceGenerator(
			name = "USER_SEQ_GENERATOR2"
			, sequenceName = "MYUSER_SEQ2"
			, initialValue = 1
			, allocationSize = 1
			)
	public class myBoards {
		@Id
		@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_SEQ_GENERATOR2")
		private int id;
		@Column(nullable=false, length=100)
		private String title;
		
		@Lob
		private String content;
		
		
		
		private int count;
		
		@ManyToOne
		@JoinColumn(name="userId")
		private myUsers users;
		
		//@OneToMany (mappedBy="myboards", fetch = FetchType.EAGER)
		
		
		@CreationTimestamp
		private Timestamp createDate;
		
	}
