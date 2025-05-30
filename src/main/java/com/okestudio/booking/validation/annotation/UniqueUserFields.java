package com.okestudio.booking.validation.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.okestudio.booking.validation.UniqueUserFieldsValidator;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { UniqueUserFieldsValidator.class })
public @interface UniqueUserFields {
    String message() default "User fields already exists";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
