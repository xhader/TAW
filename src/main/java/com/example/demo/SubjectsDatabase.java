package com.example.demo;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Component
@Scope("singleton")
public class SubjectsDatabase {

    private final List<Subject> subjectsList = new ArrayList<>();
    private final AtomicInteger subjectsCounter = new AtomicInteger(1);

    public void addSubject(Subject element) {
        element.setId(subjectsCounter.getAndIncrement());
        subjectsList.add(element);
    }

    public Subject getSubjectById(Integer id) {
        return subjectsList.stream()
                .filter(element -> element.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    public List<Subject> getSubjectsList(String name, Integer ECTS, Integer room, Boolean exam) {
        List<Subject> filteredSubjects = new ArrayList<>();
        for (Subject element : subjectsList) {
            boolean matchesFilters = true;

            if (name != null && !name.equals(element.getName())) {
                matchesFilters = false;
            }
            if (ECTS != null && !ECTS.equals(element.getECTS())) {
                matchesFilters = false;
            }
            if (room != null && !room.equals(element.getRoom())) {
                matchesFilters = false;
            }
            if (exam != null && !exam.equals(element.getExam())) {
                matchesFilters = false;
            }

            if (matchesFilters) {
                filteredSubjects.add(element);
            }
        }
        return filteredSubjects;
    }

    public void deleteAll() {
        subjectsList.clear();
    }

    public boolean deleteById(Integer id) {
        return subjectsList.removeIf(element -> element.getId().equals(id));
    }
}
