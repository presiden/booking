package com.okestudio.booking.validation;

import org.springframework.stereotype.Component;

import com.okestudio.booking.repository.UsersRepository;
import com.okestudio.booking.validation.annotation.UniqueUsername;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class UniqueUsernameValidator implements ConstraintValidator<UniqueUsername, String>{

    private final UsersRepository usersRepository;

    public UniqueUsernameValidator(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }
   
    @Override
    public boolean isValid(String username, ConstraintValidatorContext context) {
        return !usersRepository.existsByUsername(username);
    }

}
