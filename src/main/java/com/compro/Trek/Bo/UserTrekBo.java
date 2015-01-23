package com.compro.Trek.Bo;

import org.springframework.stereotype.Service;

import com.compro.Trek.form.TrekUserModel;


@Service
public interface UserTrekBo{
void save(TrekUserModel trekuser);
void update(TrekUserModel trekuser);
void delete(TrekUserModel trekuser);
}
