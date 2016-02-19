package com.askandar.model;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import javax.persistence.*;
import java.io.Serializable;


/**
 * Created by askandar on 13.02.16.
 */

@Entity
@Table(name = "User")
public class User implements Serializable{
    private Long id;
    private String name;
    private Integer age;
    private boolean isAdmin;
    private DateTime createdDate;



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String firstName) {
        this.name = firstName;
    }

    @Column(name = "age")
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Column(name = "isAdmin")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    @Column(name = "createDate")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
    @DateTimeFormat(iso = ISO.DATE)
    public DateTime getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(DateTime createdDate) {
        this.createdDate = createdDate;
    }


    @Transient
    public String getBirthDateString(){
        String birthDateString = "";
        if (createdDate != null)
            birthDateString = org.joda.time.format.DateTimeFormat.forPattern("dd-MM-yyyy").print(createdDate);
        return birthDateString;
    }




}
