package org.example.servlet;

public class Personel {
    private String name;
    private String surname;
    private String idNumber;
    private String[] departments;
    private String phone;
    private String hireDate;
    private double salary;
    private boolean isActive;

    public Personel(String name, String surname, String idNumber, String[] departments, String phone, String hireDate, double salary, boolean isActive) {
        this.name = name;
        this.surname = surname;
        this.idNumber = idNumber;
        this.departments = departments;
        this.phone = phone;
        this.hireDate = hireDate;
        this.salary = salary;
        this.isActive = isActive;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public String[] getDepartments() {
        return departments;
    }

    public String getPhone() {
        return phone;
    }

    public String getHireDate() {
        return hireDate;
    }

    public double getSalary() {
        return salary;
    }

    public boolean isActive() {
        return isActive;
    }
}
