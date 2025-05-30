package com.okestudio.booking.validation;

import org.springframework.stereotype.Component;

import com.okestudio.booking.repository.UserRepository;
import com.okestudio.booking.validation.annotation.UniqueUsername;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class UniqueUsernameValidator implements ConstraintValidator<UniqueUsername, String> {

    private final UserRepository usersRepository;

    public UniqueUsernameValidator(UserRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public boolean isValid(String username, ConstraintValidatorContext context) {
        return !usersRepository.existsByUsername(username);
    }

}
