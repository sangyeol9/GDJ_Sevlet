package com.winter.app.test;

import java.util.ArrayList;
import java.util.Map;

import javax.swing.plaf.synth.Region;

import com.winter.app.Locations.LocationDAO;
import com.winter.app.departments.DepartmentDAO;
import com.winter.app.departments.DepartmentDTO;

import com.winter.app.employees.EmployeeDAO;
import com.winter.app.util.DBConnector;
import com.winter.app.regions.*;
import com.winter.app.views.*;
public class AppMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LocationDAO dao = new LocationDAO();
		EmployeeDAO employeeDAO = new EmployeeDAO();
		try {
			dao.getList();
			//Map<String, Integer> map = employeeDAO.getSalary();
			//System.out.println(map.get("count"));
			//System.out.println(map.get("sum"));
			//System.out.println(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
