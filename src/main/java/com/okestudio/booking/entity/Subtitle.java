package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "subtitle")
public class Subtitle extends BaseEntity {

    @Column(length = 50, nullable = false)
    private String name;

    @Column(length = 5, nullable = false)
    private String code;

    @Column(name = "is_active")
    private Boolean isActive;
}