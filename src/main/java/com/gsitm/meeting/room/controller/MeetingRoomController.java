package com.gsitm.meeting.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gsitm.meeting.room.service.MeetingRoomService;

@Controller
public class MeetingRoomController {

	@Autowired
	private MeetingRoomService meetingRoomService;
}
