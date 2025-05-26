package com.okestudio.booking.dto;

import java.util.List;

public record ErrorMessageDto(Integer code, List<String> message) {

    public ErrorMessageDto(Integer code, List<String> message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public List<String> getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return "ErrorMessageDTO{" +
                "code=" + code +
                ", message='" + message + '\'' +
                '}';
    }

}
