package com.example.pojo;

import lombok.Data;
//导入lombok依赖，@Date注解代替getsetter/setter/tostring方法
@Data
public class Emps {
    private Integer id;
    private String ename;
    private String password;
    private String job;
    private String hiredate;
    private Integer age;
    private String sex;
    private String sal;

  /*  @Override
    public String toString() {
        return "Emps{" +
                "id=" + id +
                ", ename='" + ename + '\'' +
                ", password='" + password + '\'' +
                ", job='" + job + '\'' +
                ", hiredate='" + hiredate + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", sal='" + sal + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getHiredate() {
        return hiredate;
    }

    public void setHiredate(String hiredate) {
        this.hiredate = hiredate;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSal() {
        return sal;
    }

    public void setSal(String sal) {
        this.sal = sal;
    }*/
}
