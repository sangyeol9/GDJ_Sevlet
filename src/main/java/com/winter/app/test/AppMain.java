package com.winter.app.test;

import java.util.ArrayList;

import javax.swing.plaf.synth.Region;

import com.winter.app.departments.DepartmentDAO;
import com.winter.app.departments.DepartmentDTO;
import com.winter.app.departments.DepartmentDetail;
import com.winter.app.util.DBConnector;
import com.winter.app.regions.*;
import com.winter.app.views.*;
public class AppMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		DBConnector connector = new DBConnector();
		DepartmentDAO dao = new DepartmentDAO();
		RegionDAO redao = new RegionDAO();
		ArrayList<DepartmentDTO> ar = new ArrayList<DepartmentDTO>();
		DepartmentDetail detail = new DepartmentDetail();
		DepartmentDTO dto = new DepartmentDTO();
		View view = new View();
		try {
			ar = dao.getList();
		dto = detail.datail(ar, 10);
		view.view(dto);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	connector.getConnector();
		
		
		
	}

}
