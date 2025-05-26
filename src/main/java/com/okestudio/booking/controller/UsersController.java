package com.okestudio.booking.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.okestudio.booking.dto.UserProfileDetailsResponseDto;
import com.okestudio.booking.dto.UserProfileResponseDto;
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

    @GetMapping("/{userId}/profile")
    public ResponseEntity<UserProfileResponseDto> getUserProfile(@PathVariable Long userId) {
        UserProfileResponseDto userProfile = usersService.getUserProfile(userId);
        return ResponseEntity.ok(userProfile);
    }

    @GetMapping("/{userId}/profile/details")
    public ResponseEntity<UserProfileDetailsResponseDto> getUserProfileDetails(@PathVariable Long userId) {
        UserProfileDetailsResponseDto usersProfileDetails = usersService.getUserProfileDetails(userId);
        return ResponseEntity.ok(usersProfileDetails);
    } 

    @PatchMapping("/{userId}/profile")
    public ResponseEntity<UserProfileDetailsResponseDto> updateUserProfile(@PathVariable Long userId, @RequestBody @Valid UsersUpdateRequestDto dto) {
        UserProfileDetailsResponseDto usersProfileDetails = usersService.updateUserProfile(userId, dto);
        return ResponseEntity.ok(usersProfileDetails);
    } 

}
