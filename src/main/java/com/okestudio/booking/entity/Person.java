package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "person")
public class Person extends BaseEntity {

    private String name;

    @Builder.Default
    private Boolean writer = Boolean.FALSE;

    @Builder.Default
    private Boolean director = Boolean.FALSE;

    @Builder.Default
    private Boolean star = Boolean.FALSE;

    @Column(name = "is_active")
    private Boolean isActive;
}
