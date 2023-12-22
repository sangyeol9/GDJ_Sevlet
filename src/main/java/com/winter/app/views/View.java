package com.winter.app.views;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.winter.app.departments.DepartmentDTO;
import com.winter.app.regions.*;
import com.winter.app.util.DBConnector;
public class View {

	
	//regions를 출력하려고 하는 메소드
	public void view(DepartmentDTO dto) throws Exception {
		
//		if(dto != null) {
//			System.out.print(dto.getDepartment_id()+"\t\t");
//			System.out.print(dto.getDepartment_name()+"\t\t");
//			System.out.print(dto.getLocation_id()+"\t\t");
//			System.out.println(dto.getManager_id());
//			
//		}
		Connection con =  DBConnector.getConnector();
		String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ??";
		String a = String.valueOf( dto.getDepartment_id() );
		System.out.println(a.substring(1));
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, Integer.parseInt(a.substring(0,1) ));
		ps.setInt(2, Integer.parseInt(a.substring(1)));
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			System.out.print(dto.getDepartment_id()+"\t\t");
			System.out.print(dto.getDepartment_name()+"\t\t");
			System.out.print(dto.getLocation_id()+"\t\t");
			System.out.println(dto.getManager_id());
			
		}
		else {
			System.out.println("없다");
		}
		
		
		
	}
	
}
