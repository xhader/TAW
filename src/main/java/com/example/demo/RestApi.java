package com.example.demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api")

public class RestApi {


    private static final Logger logger = LoggerFactory.getLogger(RestApi.class);

    @Autowired
    private SubjectsDatabase subjectsDatabase;

    @GetMapping("test")
    public String testApi() {
        return "test";
    }

    @PostMapping(value = "subjects",
    consumes = MediaType.APPLICATION_JSON_VALUE,
    produces = MediaType.APPLICATION_JSON_VALUE)
    public void addNewSubject(@RequestBody Subject subjects) {
        subjectsDatabase.addSubject(subjects);
    }

    @GetMapping(value = "subjects",
            produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Subject> getSubjects(
            @Nullable @RequestParam("name") String name,
            @Nullable @RequestParam("ECTS") Integer ECTS,
            @Nullable @RequestParam("room") Integer room,
            @Nullable @RequestParam("exam") String examStr) {

        Boolean exam = null;
        if (examStr != null) {
            exam = Boolean.parseBoolean(examStr);
        }
        logger.info("Query: name={}, ECTS={}, room={}, exam={}", name, ECTS, room, exam);

        List<Subject> filteredSubjects = subjectsDatabase.getSubjectsList(name, ECTS, room, exam);

        logger.info("Returning {} filtered subjects", filteredSubjects.size());

        return filteredSubjects;
    }

    @GetMapping(value = "subjects/{id}",
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> getSubjectById(@PathVariable("id") Integer id) {
        Subject subjects = subjectsDatabase.getSubjectById(id);
        if (subjects == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(subjects);
        }
    }

    //http://localhost:8080/api/subjects


    @DeleteMapping(value = "subjects")
    public void deleteAll() {
        subjectsDatabase.deleteAll();
    }


    @DeleteMapping(value = "subjects/{id}",
            produces = MediaType.APPLICATION_JSON_VALUE)

    public ResponseEntity deleteById(@PathVariable("id") Integer id) {
        boolean isDeleted = subjectsDatabase.deleteById(id);
        if (isDeleted == true) {
            return  ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}
