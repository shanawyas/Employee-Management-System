package com.spring.controller.impl;

import org.springframework.web.servlet.ModelAndView;

import com.spring.common.ICommonController;

public interface IEmployeeController extends ICommonController{
	public ModelAndView getById(String id);
}
