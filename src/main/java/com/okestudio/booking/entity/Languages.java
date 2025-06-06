package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "languages")
public class Languages extends BaseEntity {

    @Column(length = 50, nullable = false)
    private String name;

    @Column(length = 5, nullable = false)
    private String code;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;
}