package com.example.ghactions.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class DemoController {

    @GetMapping
    public String sayHello() {
        return "Hello World " + LocalDateTime.now();
    }
}
