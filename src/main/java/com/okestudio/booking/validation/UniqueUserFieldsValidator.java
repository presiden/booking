package com.okestudio.booking.validation;

import org.springframework.stereotype.Component;

import com.okestudio.booking.dto.UserUpdateRequestDto;
import com.okestudio.booking.repository.UserRepository;
import com.okestudio.booking.validation.annotation.UniqueUserFields;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Component
public class UniqueUserFieldsValidator implements ConstraintValidator<UniqueUserFields, UserUpdateRequestDto> {

    private final UserRepository usersRepository;

    public UniqueUserFieldsValidator(UserRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public boolean isValid(UserUpdateRequestDto dto, ConstraintValidatorContext context) {
        boolean isValid = true;

        if (dto.username() != null && usersRepository.existsByUsernameAndIdNot(dto.username(), dto.id())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate("Username already exists")
                   .addPropertyNode("username")
                   .addConstraintViolation();
            isValid = false;
        }

        if (dto.phoneNumber() != null && usersRepository.existsByPhoneNumberAndIdNot(dto.phoneNumber(), dto.id())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate("Phone number already exists")
                   .addPropertyNode("phoneNumber")
                   .addConstraintViolation();
            isValid = false;
        }

        if (dto.email() != null && usersRepository.existsByEmailAndIdNot(dto.email(), dto.id())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate("Email already exists")
                   .addPropertyNode("email")
                   .addConstraintViolation();
            isValid = false;
        }

        return isValid;
    }

}
