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

    public UserController(UserService usersService) {
        this.userService = usersService;
    }

    @PostMapping
    public ResponseEntity<UserDetailsResponseDto> createUserProfile(@RequestBody @Valid UserCreateRequestDto dto) {
        UserDetailsResponseDto usersProfileDetails = userService.createUserProfile(dto);
        return ResponseEntity.ok(usersProfileDetails);
    } 

    @GetMapping("/{username}")
    public ResponseEntity<UserResponseDto> getUserProfile(@PathVariable String username) {
        UserResponseDto userProfile = userService.getUserProfile(username);
        return ResponseEntity.ok(userProfile);
    }

}
