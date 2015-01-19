package com.compro.Trek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.compro.Trek.Bo.TrekBo;
import com.compro.Trek.form.TrekModel;

@Controller

public class TrekHandler{
	@Autowired
	private TrekBo TrekBoImpl;
	
	public void setTrekbo(TrekBo TrekBoImpl) {
		this.TrekBoImpl=TrekBoImpl;
	}
	@ModelAttribute("trekModel")
	 public ModelMap getTrekModelObject(ModelMap model) {
	  model.addAttribute("trekModel",new TrekModel());
	  return model;
	 }
	
	@RequestMapping(value="/createtrek.do", method=RequestMethod.POST)
	public String getTrekForm(@ModelAttribute("trekModel") TrekModel trekModel,
            BindingResult result) {
				TrekBoImpl.save(trekModel);
	
            	System.out.println("Trekname: " + trekModel.getImgurl());
            	return "useraccount";
	}
}
