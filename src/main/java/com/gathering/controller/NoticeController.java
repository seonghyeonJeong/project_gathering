package com.gathering.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

	@GetMapping("/notice/noticeList")
	public void getNoticeList() {
		
	}
	
}
