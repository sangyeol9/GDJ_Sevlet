package com.winter.app.departments;

import java.util.ArrayList;

public class DepartmentDetail {

	
	public DepartmentDTO datail(ArrayList<DepartmentDTO> ar,int num) throws Exception {
		DepartmentDTO dto = new DepartmentDTO();
		
		for(DepartmentDTO departmentDTO:ar) {
			if(departmentDTO.getDepartment_id() == num) {
				return departmentDTO;
			}
		}
	
		
	return null;	
	}
}
