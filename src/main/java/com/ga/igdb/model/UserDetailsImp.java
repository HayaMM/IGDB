package com.ga.igdb.model;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UserDetailsImp implements UserDetails{

	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private List<GrantedAuthority> authorities; //takes it as user role
	
	//constructor
	public UserDetailsImp(User user) {
		this.username = user.getEmailAddress();
		this.password = user.getPassWord();
		this.firstName = user.getFirstName();
		this.lastName = user.getLastName();
		this.authorities = Arrays.stream(user.getUserRole().split(","))
				.map(SimpleGrantedAuthority::new)
				.collect(Collectors.toList());
				
	}		

		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			// TODO Auto-generated method stub
			return authorities;
		}

		public String getName() {
			// TODO Auto-generated method stub
			return firstName + lastName;
		}
		
		public String getFirstName() {
			// TODO Auto-generated method stub
			return firstName;
		}
		
		public String getLastName() {
			// TODO Auto-generated method stub
			return lastName;
		}
		@Override
		public String getPassword() {
			// TODO Auto-generated method stub
			return password;
		}

		@Override
		public String getUsername() {
			// TODO Auto-generated method stub
			return username;
		}

		@Override
		public boolean isAccountNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isAccountNonLocked() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isCredentialsNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isEnabled() {
			// TODO Auto-generated method stub
			return true;
		}
		
}

