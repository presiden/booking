package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
import com.okestudio.booking.dto.UsersCreateRequestDto;
import com.okestudio.booking.dto.UsersUpdateRequestDto;
import com.okestudio.booking.service.UsersService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
public class UsersController {

    private final UsersService usersService;

    public UsersController(UsersService usersService) {
        this.usersService = usersService;
    }

    @PostMapping
    public ResponseEntity<UserProfileDetailsResponseDto> createUserProfile(@RequestBody @Valid UsersCreateRequestDto dto) {
        UserProfileDetailsResponseDto usersProfileDetails = usersService.createUserProfile(dto);
        return ResponseEntity.ok(usersProfileDetails);
    } 

    @GetMapping("/{username}")
    public ResponseEntity<UserProfileResponseDto> getUserProfile(@PathVariable String username) {
        UserProfileResponseDto userProfile = usersService.getUserProfile(username);
        return ResponseEntity.ok(userProfile);
    }

    @GetMapping("/{username}/details")
    public ResponseEntity<UserProfileDetailsResponseDto> getUserProfileDetails(@PathVariable String username) {
        UserProfileDetailsResponseDto usersProfileDetails = usersService.getUserProfileDetails(username);
        return ResponseEntity.ok(usersProfileDetails);
    } 

    @PutMapping("/{username}")
    public ResponseEntity<UserProfileDetailsResponseDto> updateUserProfile(@PathVariable String username, @RequestBody @Valid UsersUpdateRequestDto dto) {
        UserProfileDetailsResponseDto usersProfileDetails = usersService.updateUserProfile(username, dto);
        return ResponseEntity.ok(usersProfileDetails);
    } 

}
