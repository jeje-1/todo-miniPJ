package com.mc.mvc.testlist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestlistController {
   @GetMapping("testlist")
   public String todo() {
      return "/test-list";
   }
}