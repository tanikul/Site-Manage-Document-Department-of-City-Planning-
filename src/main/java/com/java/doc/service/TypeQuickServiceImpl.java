package com.java.doc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.doc.dao.TypeQuickDAO;
import com.java.doc.model.TypeQuick;

@Service
public class TypeQuickServiceImpl implements TypeQuickService {

	private TypeQuickDAO type;
	
	public void setType(TypeQuickDAO type) {
		this.type = type;
	}

	@Override
	@Transactional
	public List<TypeQuick> listTypeQuick() {
		return this.type.listTypeQuick();
	}

	@Override
	@Transactional
	public HashMap<Integer, String> SelectQuick() {
		return this.type.SelectQuick();
	}
}
