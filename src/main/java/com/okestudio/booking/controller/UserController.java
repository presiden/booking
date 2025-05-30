package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.service.UserService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    private final UserService usersService;

    public UserController(UserService usersService) {
        this.usersService = usersService;
    }

    @PostMapping
    public ResponseEntity<UserDetailsResponseDto> createUserProfile(@RequestBody @Valid UserCreateRequestDto dto) {
        UserDetailsResponseDto usersProfileDetails = usersService.createUserProfile(dto);
        return ResponseEntity.ok(usersProfileDetails);
    }

}
