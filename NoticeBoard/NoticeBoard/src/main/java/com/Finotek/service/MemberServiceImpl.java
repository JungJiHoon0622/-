package com.Finotek.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Finotek.dao.MemberDAO;
import com.Finotek.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception {
		
		dao.register(vo);
		
	}
	
	@Override
    public MemberVO login(MemberVO vo) throws Exception {
	    return dao.login(vo);
    }
	
}