package com.example.test2.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class boardDto {
	
	
	private String board_idx;
	private String board_title;
	private String board_content;
	private String board_name;
	private Date board_date;

	
	
}
