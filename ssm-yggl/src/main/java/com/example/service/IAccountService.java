package com.example.service;

import com.example.pojo.Emps;
import com.example.util.Params;

import java.util.ArrayList;
import java.util.List;


public interface IAccountService {
    public ArrayList<Emps> selectAll();
    public ArrayList<Emps> selectBy(String ename,String job);
    public String log(String ename, String password);

    Integer addAccount(Emps emps);

    Integer delAccountById(Integer id);



    Integer update(Emps emps);

    Integer zc(Emps emps);
//    public ArrayList<Emps> selectAll(Params params);


    List<Emps> selectEmpsByLimit(Integer page, Integer pagesize);
}
