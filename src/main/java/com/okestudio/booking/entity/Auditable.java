package com.okestudio.booking.entity;

import java.time.LocalDateTime;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class Auditable extends BaseEntity {

    @Column(name = "secure_id", unique = true)
    protected String secureId;

    @CreatedBy
    @Column(name = "created_by", updatable = false)
    protected String createdBy;

    @CreatedDate
    @Column(name = "created_date", updatable = false)
    protected LocalDateTime createdDate;

    @LastModifiedBy
    @Column(name = "modified_by")
    protected String modifiedBy;

    @LastModifiedDate
    @Column(name = "modified_date")
    protected LocalDateTime modifiedDate;

    @Column(name = "deleted")
    protected Boolean deleted = false;

    @Column(name = "deleted_by")
    protected String deletedBy;

    @Column(name = "deleted_date")
    protected LocalDateTime deletedDate;

    public void markAsDeleted(String username) {
        this.deleted = true;
        this.deletedBy = username;
        this.deletedDate = LocalDateTime.now();
    }
    
}
