package com.example.service.impl;

import com.example.dao.AccountDao;
import com.example.pojo.Emps;
import com.example.service.IAccountService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AccountService implements IAccountService {
    @Autowired(required = false)
    AccountDao accountDao;
    public ArrayList<Emps> selectAll() {
        return accountDao.selectAll();
    }

    @Override
    public ArrayList<Emps> selectBy(String ename, String job) {
        return accountDao.selectBy(ename,job);
    }

    public String log(String ename, String password) {
        return accountDao.log(ename,password);
    }

    @Override
    public Integer addAccount(Emps emps) {
        return accountDao.addAccount(emps);
    }

    @Override
    public Integer delAccountById(Integer id) {
        return accountDao.delAccountById(id);
    }

    @Override
    public Integer update(Emps emps) {
        return accountDao.update(emps);
    }

    @Override
    public Integer zc(Emps emps) {
        return accountDao.zc(emps);
    }

    @Override
    public List<Emps> selectEmpsByLimit(Integer page, Integer pagesize) {
        PageHelper.startPage(page,pagesize);
        List<Emps> empsList= accountDao.selectEmpsByLimit(page,pagesize);
        return empsList;
    }

 /*   @Override
    public ArrayList<Emps> selectAll(Params params) {
        Integer pageNum=params.getPageNum();
        if(pageNum==null){
            params.setPageNum(1);
        }
        PageHelper.startPage(params.getPageNum(),params.getPageSize());
        return accountDao.selectAll();
    }*/


}
