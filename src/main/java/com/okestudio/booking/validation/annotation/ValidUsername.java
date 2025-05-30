package com.okestudio.booking.validation.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.okestudio.booking.validation.ValidUsernameValidator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { ValidUsernameValidator.class })
public @interface ValidUsername {
    String message() default "Usernames can only use letters, numbers, underscores and periods.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
