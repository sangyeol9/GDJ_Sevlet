package com.winter.app.Locations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.winter.app.util.DBConnector;



public class LocationDAO {

	public int update(LocationDTO dto) throws Exception {
		Connection con = DBConnector.getConnector();
		String sql = "UPDATE LOCATIONS SET STREET_ADDRESS = ?,POSTAL_CODE =?,CITY =?,STATE_PROVINCE =?,COUNTRY_ID =? WHERE LOCATION_ID = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, dto.getStreet_address());
		st.setString(2, dto.getPostal_code());
		st.setString(3, dto.getCity());
		st.setString(4, dto.getState_province());
		st.setString(5, dto.getCountry_id());
		st.setInt(6, dto.getLocation_id());
		int result = st.executeUpdate();
		
		DBConnector.disConnect(st, con);
		return result;
	}
	
	public LocationDTO detail(LocationDTO dto) throws Exception {
		Connection con = DBConnector.getConnector();
		
		String sql = "SELECT * FROM LOCATIONS WHERE LOCATION_ID= ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, dto.getLocation_id());
		ResultSet rs = st.executeQuery();
		LocationDTO locationDTO = new LocationDTO();
		if(rs.next());{
		locationDTO.setCity(rs.getString("CITY"));
		locationDTO.setCountry_id(rs.getString("COUNTRY_ID"));
		locationDTO.setLocation_id(rs.getInt( "LOCATION_ID"));
		locationDTO.setPostal_code(rs.getString("POSTAL_CODE"));
		locationDTO.setState_province(rs.getString("STATE_PROVINCE"));
		locationDTO.setStreet_address(rs.getString("STREET_ADDRESS"));
		}
		DBConnector.disConnect(rs, st, con);
		return locationDTO;
	}
	
	public int add(LocationDTO dto) throws Exception {
		Connection con = DBConnector.getConnector();
		String sql = "INSERT INTO LOCATIONS VALUES(?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1,dto.getLocation_id());
		st.setString(2, dto.getStreet_address());
		st.setString(3, dto.getPostal_code());
		st.setString(4, dto.getCity());
		st.setString(5, dto.getState_province());
		st.setString(6, dto.getCountry_id());
		int result = st.executeUpdate();
		DBConnector.disConnect(st, con);
		
		return result;
	}
	
	public List<LocationDTO> getList() throws Exception {
		Connection con = DBConnector.getConnector();
		String sql = "SELECT * FROM LOCATIONS";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		List<LocationDTO> ar= new ArrayList<LocationDTO>();
		while(rs.next()) {
			LocationDTO dto = new LocationDTO();
			dto.setCity(rs.getString("CITY"));
			dto.setCountry_id(rs.getString("COUNTRY_ID"));
			dto.setLocation_id(rs.getInt("LOCATION_ID"));
			dto.setPostal_code(rs.getString("POSTAL_CODE"));
			dto.setState_province(rs.getString("STATE_PROVINCE"));
			dto.setStreet_address(rs.getString("STREET_ADDRESS"));
			ar.add(dto);
			
			
		}
		
		
	DBConnector.disConnect(rs, st, con);
		return ar;
	}
	
}
