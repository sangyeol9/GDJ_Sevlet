package com.winter.app.regions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.winter.app.util.DBConnector;

public class RegionDAO {

	
	
	public void getList() throws Exception {
		
		Connection con =  DBConnector.getConnector();
		/*1. driver를 메모리에 로딩(객체 생성)
			
		*/
		try {
		
			//2. DB연결
			
			//3. Sql문 생성
			String sql = "Select * From REGIONS";
			
			//4. SQL문 미리 전송 , 선작업
			PreparedStatement ps = con.prepareStatement(sql);
			
			//5. 
			
			//6. 최종 전송 및 결과 처리
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int n = rs.getInt(1);
				String name = rs.getString("REGION_NAME");
				System.out.println(n+" : " +name);
				System.out.println("==========================");
			}
			
			DBConnector.disConnect(rs, ps, con);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
	
}
