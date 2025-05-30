package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.service.UserService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    public ResponseEntity<UserDetailsResponseDto> createUser(@RequestBody @Valid UserCreateRequestDto dto) {
        UserDetailsResponseDto usersDetails = userService.createUser(dto);
        return ResponseEntity.ok(usersDetails);
    } 

    @GetMapping("/{username}")
    public ResponseEntity<UserResponseDto> getUser(@PathVariable String username) {
        UserResponseDto user = userService.getUser(username);
        return ResponseEntity.ok(user);
    }

    @GetMapping("/{username}/details")
    public ResponseEntity<UserDetailsResponseDto> getUserDetails(@PathVariable String username) {
        UserDetailsResponseDto usersDetails = userService.getUserDetails(username);
        return ResponseEntity.ok(usersDetails);
    }

}
