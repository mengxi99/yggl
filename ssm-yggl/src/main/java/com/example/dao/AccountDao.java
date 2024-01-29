package com.example.dao;

import com.example.pojo.Emps;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;
import java.util.List;

public interface AccountDao {
    @Select("<script>"+
            "select * from emp" +
            "<where>" +
            "<if test=\"ename!=null and ename!=''\">and ename like CONCAT('%',#{ename},'%')</if>" +
            "<if test=\"job!=null and job!=''\">and job like CONCAT('%',#{job},'%')</if>" +
            "</where>" +
            "</script>")

    public ArrayList<Emps> selectBy(@Param("ename") String ename,@Param("job") String job);
    @Select("select * from emp")
    public ArrayList<Emps> selectAll();
    @Select("select * from user where ename=#{ename} and password=#{password}")
    String log(@Param("ename") String ename,@Param("password") String password);
    @Insert("insert into emp(ename,password,job,hiredate,age,sex,sal) value(#{ename},#{password},#{job},#{hiredate},#{age},#{sex},#{sal})")
    Integer addAccount(Emps emps);
    @Delete("delete from emp where id=#{id}")
    Integer delAccountById(Integer id);

    @Update("update emp set id=id ,ename=#{ename},password=#{password},job=#{job},hiredate=#{hiredate},age=#{age},sex=#{sex},sal=#{sal} where id=#{id}")
    Integer update(Emps emps);
    @Insert("insert into user(ename,password) value(#{ename},#{password})")
    Integer zc(Emps emps);
    @Select("select * from emp limit #{page},#{pagesize}")
    List<Emps> selectEmpsByLimit(@Param("page") Integer page, @Param("pagesize") Integer pagesize);


}
