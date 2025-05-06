package com.okestudio.booking.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Theater extends Auditable {
    
    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @Column(name = "code", nullable = false, length = 5)
    private String code;

    @Column(name = "email", nullable = false, length = 50)
    private String email;

    @Column(name = "phone", nullable = false, length = 20)
    private String phone;

    @Column(name = "image_path", nullable = true, length = 512)
    private String imagePath;

    @Override
    public String toString() {
        return "Theater{" +
                "id=" + super.getId() +
                ", createdBy='" + super.getCreatedBy() + '\'' +
                ", createdDate=" + super.getCreatedDate() +
                ", modifiedBy='" + super.getModifiedBy() + '\'' +
                ", modifiedDate=" + super.getModifiedDate() +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }
}
