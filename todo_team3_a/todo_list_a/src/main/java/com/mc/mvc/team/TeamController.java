package com.mc.mvc.team;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeamController {
   @GetMapping("team")
   public String todo() {
      return "/team-profile";
   }
}