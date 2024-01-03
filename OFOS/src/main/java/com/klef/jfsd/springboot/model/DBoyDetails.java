package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name="DBoy_details")
public class DBoyDetails {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="emp_id")
  private int id;
  @Column(nullable=false,length = 50)
  private String name;
  @Column(nullable=false,length = 10)
  private String gender;
  @Column(nullable=false,length = 20)
  private String dateofbirth;
  @Column(nullable=false,length = 20)
  private String department;
  @Column(nullable=false)
  private double salary;
  @Column(nullable=false,unique = true,length = 30)
  private String email;
   @Column(nullable = false,unique=true)
    private String username;
  @Column(nullable=false,length = 30)
  private String password;
  @Column(nullable=false)
  private String location;
  @Column(nullable=false,unique = true)
  private String contact;
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public String getDateofbirth() {
    return dateofbirth;
  }
  public void setDateofbirth(String dateofbirth) {
    this.dateofbirth = dateofbirth;
  }
  public String getDepartment() {
    return department;
  }
  public void setDepartment(String department) {
    this.department = department;
  }
  public double getSalary() {
    return salary;
  }
  public void setSalary(double salary) {
    this.salary = salary;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getLocation() {
    return location;
  }
  public void setLocation(String location) {
    this.location = location;
  }
  public String getContact() {
    return contact;
  }
  public void setContact(String contact) {
    this.contact = contact;
  }
  @Override
  public String toString() {
    return "DBoyDetails [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
        + ", department=" + department + ", salary=" + salary + ", email=" + email + ", username=" + username
        + ", password=" + password + ", location=" + location + ", contact=" + contact + "]";
  }
  
}