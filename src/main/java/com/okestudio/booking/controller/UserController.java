package com.okestudio.booking.controller;

import java.net.URI;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.okestudio.booking.dto.UserCreateRequestDto;
import com.okestudio.booking.dto.UserDetailsResponseDto;
import com.okestudio.booking.dto.UserResponseDto;
import com.okestudio.booking.dto.UserUpdateRequestDto;
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
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{username}")
                .buildAndExpand(usersDetails.username())
                .toUri();

        return ResponseEntity.created(location).body(usersDetails);
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

    @PutMapping("/{username}")
    public ResponseEntity<UserDetailsResponseDto> updateUser(@PathVariable String username, @RequestBody @Valid UserUpdateRequestDto dto) {
        UserDetailsResponseDto userDetails = userService.updateUser(username, dto);
        return ResponseEntity.ok(userDetails);
    } 

}
