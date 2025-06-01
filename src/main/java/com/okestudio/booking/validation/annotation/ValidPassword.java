package com.okestudio.booking.validation.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.okestudio.booking.validation.ValidPasswordValidator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { ValidPasswordValidator.class })
public @interface ValidPassword {
    String message() default "Password must be at least 8 characters, contain upper and lower case letters and digits";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
