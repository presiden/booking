package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "users_address")
public class UsersAddress extends BaseEntity {

    @Column(name = "name", nullable = false, length = 50)
    private String name;

    // @ManyToOne(fetch = FetchType.LAZY)
    // @JoinColumn(name = "country_id")
    // private Country country;

    // @ManyToOne(fetch = FetchType.LAZY)
    // @JoinColumn(name = "province_id")
    // private Province province;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id")
    private City city;

    @Column(name = "address_line", length = 512)
    private String addressLine;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "users_id", nullable = false)
    private Users users;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;

}
