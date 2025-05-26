package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
// @NoArgsConstructor
// @AllArgsConstructor
// @Builder
@Entity
@Table(name = "city")
public class City extends BaseEntity {

    @Column(name = "name", nullable = false, unique = true, length = 20)
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "province_id", nullable = false)
    private Province province;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;
    
}
