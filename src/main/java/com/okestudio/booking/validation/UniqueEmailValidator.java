package com.okestudio.booking.validation;

import org.springframework.stereotype.Component;

import com.okestudio.booking.repository.UserRepository;
import com.okestudio.booking.validation.annotation.UniqueEmail;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class UniqueEmailValidator implements ConstraintValidator<UniqueEmail, String> {

    private final UserRepository usersRepository;

    public UniqueEmailValidator(UserRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public boolean isValid(String email, ConstraintValidatorContext context) {
        return !usersRepository.existsByEmail(email);
    }

}
