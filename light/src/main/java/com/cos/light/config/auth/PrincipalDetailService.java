package com.cos.light.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.cos.light.model.myUsers;
import com.cos.light.repository.UserRepository;

@Service
public class PrincipalDetailService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		myUsers principal = userRepository.findByUsername(username)
				.orElseThrow(()->{
					return new UsernameNotFoundException("Sorry, We cannot find this user : "+username);
				});
		return new PrincipalDetail(principal);
	}
}
