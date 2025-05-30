package com.okestudio.booking.validation.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.okestudio.booking.validation.ValidPhoneNumberValidator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { ValidPhoneNumberValidator.class })
public @interface ValidPhoneNumber {
    String message() default "Incorrect phone number format";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
