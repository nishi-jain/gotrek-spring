package com.compro.Trek.Dao;

import org.springframework.stereotype.Service;

import com.compro.Trek.form.TrekUserModel;


@Service
public interface UserTrekDao{
void save(TrekUserModel trekuser);
void update(TrekUserModel trekuser);
void delete(TrekUserModel trekuser);
}
