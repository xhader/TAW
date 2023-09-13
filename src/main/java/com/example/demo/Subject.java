package com.example.demo;


import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;

@JsonSerialize
@Data

public class Subject {

    @JsonProperty("id")
    private Integer id;

    @JsonProperty("name")
    private String name;

    @JsonProperty("ECTS")
    private Integer ECTS;

    @JsonProperty("room")
    private Integer room;

    @JsonProperty("exam")
    private Boolean exam;
}
