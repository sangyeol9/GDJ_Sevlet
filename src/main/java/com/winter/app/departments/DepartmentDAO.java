package com.winter.app.departments;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.winter.app.util.DBConnector;

public class DepartmentDAO {

	public ArrayList<DepartmentDTO> getList() throws Exception {
		//DB접속 후 부서테이블의 모든 정보를 출력
		
		Connection con = DBConnector.getConnector();
		ArrayList<DepartmentDTO> ar = new ArrayList<DepartmentDTO>();
		
		String sql = "SELECT * FROM DEPARTMENTS";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		System.out.println("DEPAR_ID\tDEPAT_NAME\tMANAGER_ID\tLOCATION_ID");
		while(rs.next()) {
			DepartmentDTO dto = new DepartmentDTO();
//			System.out.print(rs.getString("DEPARTMENT_ID" )+"\t\t");
//			System.out.print(rs.getString("DEPARTMENT_NAME")+"\t\t");
//			System.out.print(rs.getString("MANAGER_ID")+"\t\t");
//			System.out.println(rs.getString("LOCATION_ID"));
//			System.out.println("=====================================");
			dto.setDepartment_id(Integer.parseInt( rs.getString("DEPARTMENT_ID")) );
			dto.setDepartment_name(rs.getString("DEPARTMENT_NAME"));
			dto.setLocation_id(rs.getInt("LOCATION_ID"));
			dto.setManager_id(rs.getInt("MANAGER_ID"));
			
			ar.add(dto);
			
		}
		
//		for(DepartmentDTO departmentDTO:ar) {
//			System.out.println(departmentDTO.getDepartment_id());
//			
//		}
		
		DBConnector.disConnect(rs, ps, con);
		return ar;
	}
	
}
