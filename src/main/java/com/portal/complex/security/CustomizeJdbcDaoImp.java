package com.portal.complex.security;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;

public class CustomizeJdbcDaoImp extends JdbcDaoImpl{



	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		List<UserDetails> users = loadUsersByUsername(username);
		
		if (users.size()== 0) {
			logger.debug(username+"유저가 존재하지 않습니다.");
			
			UsernameNotFoundException ue = new UsernameNotFoundException(
					messages.getMessage("JdbcDaoImpl.notFound",
							new Object[] { username }, "Username {0} not found"));
			System.out.println("========================= 유저 확인 ===================== "+username);
			throw ue;
		}
		
		System.out.println("=========================유저 권한 생성 ===================== "+username);
			UserInfo user = (UserInfo) users.get(0);
		
		
		if (getEnableAuthorities()) {
			user.setAuthorities(loadUserAuthorities(username));
		}
		
		
		return user;
	}
	
	
	@Override
	protected List<UserDetails> loadUsersByUsername(String username) {
		return getJdbcTemplate().query(getUsersByUsernameQuery(), new String[] {username},new RowMapper<UserDetails>(){

			@Override
			public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
				String id = rs.getString(1);
				String password = rs.getString(2);
				String name =rs.getString(3);
				return new UserInfo(id, password, name);
			}
			
		});
	}

	@Override
	protected List<GrantedAuthority> loadUserAuthorities(String username) {
		return getJdbcTemplate().query(getAuthoritiesByUsernameQuery(), new String[] {username},new RowMapper<GrantedAuthority>(){

			@Override
			public GrantedAuthority mapRow(ResultSet rs, int rowNum)
					throws SQLException {
				String roleName  = rs.getString(1);
				return new SimpleGrantedAuthority(roleName);
			}
			
		});
	}

	
	@Override
	protected List<GrantedAuthority> loadGroupAuthorities(String username) {
		// TODO Auto-generated method stub
		return super.loadGroupAuthorities(username);
	}

}
