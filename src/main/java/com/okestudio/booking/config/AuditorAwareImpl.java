package com.okestudio.booking.config;

import java.util.Optional;

import org.springframework.data.domain.AuditorAware;
import org.springframework.stereotype.Component;

@Component("auditorAware")
public class AuditorAwareImpl implements AuditorAware<String> {
    @Override
    public Optional<String> getCurrentAuditor() {
        // Ambil user dari SecurityContext (misalnya dari Spring Security)
        return Optional.of("system");
    }
}
