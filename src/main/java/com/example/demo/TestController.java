package com.example.demo;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    @RequestMapping(value = "/echo", method = RequestMethod.POST)
    public ResponseEntity<?> testResponse(@RequestBody String body) {
        return new ResponseEntity<>("You Said " + body, HttpStatus.OK);

    }
}
