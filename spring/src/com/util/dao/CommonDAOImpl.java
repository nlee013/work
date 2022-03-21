package com.util.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

//interface 구현
public class CommonDAOImpl implements CommonDAO{
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	
	//객체 생성
	public static CommonDAO getInstance() {
		
		//자기 자신의 객체 생성을 반환
		return new CommonDAOImpl();//인터페이스를 구현한 class
		//CommonDAO dao = new CommonDAOImpl();와 같음
	}
	
	@Override
	public void insertData(String id, Object value) {
		
		try {
			
			sqlMapClientTemplate.insert(id, value);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		
	}

	@Override
	public int updateData(String id, Object value) {

		int result = 0;
		
		try {
			
			result = sqlMapClientTemplate.update(id, value);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		return result;
	}

	@Override
	public int updateData(String id, Map<String, Object> map) {
		
		int result = 0;
		
		try {
			
			result = sqlMapClientTemplate.update(id, map);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		return result;
	}

	@Override
	public int deleteData(String id, Object value) {
		
		
		int result = 0;
		
		try {
			
			result = sqlMapClientTemplate.delete(id, value);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		return result;
	}

	@Override
	public int deleteData(String id, Map<String, Object> map) {
		
		int result = 0;
		
		try {
			
			result = sqlMapClientTemplate.delete(id, map);
			
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		return result;
	}


	@Override
	public int deleteAllData(String id) {
		
		int result = 0;
		
		try {

			result = sqlMapClientTemplate.delete(id);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
			
		}finally {
			
		}
		return result;
	}
	

	@Override
	public Object getReadData(String id) {
		
		try {
			
			return sqlMapClientTemplate.queryForObject(id);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public Object getReadData(String id, Object value) {
		
		try {
			
			return sqlMapClientTemplate.queryForObject(id, value);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public Object getReadData(String id, Map<String, Object> map) {
		
		try {
			
			return sqlMapClientTemplate.queryForObject(id, map);
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public int getIntValue(String id) {
			
		try {
			
			return ((Integer)sqlMapClientTemplate.queryForObject(id)).intValue();
			
		} catch (Exception e) {
			
			System.out.println(e.toString());
		}
		return 0;
	}

	@Override
	public int getIntValue(String id, Object value) {
		
	try {
		
		return ((Integer)sqlMapClientTemplate.queryForObject(id, value)).intValue();
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
	}
	return 0;
	}

	@Override
	public int getIntValue(String id, Map<String, Object> map) {
		
	try {
		
		return ((Integer)sqlMapClientTemplate.queryForObject(id, map)).intValue();
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
	}
	return 0;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id) {
		
	try {
		
		return (List<Object>)sqlMapClientTemplate.queryForList(id);
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id, Object value) {
		
	try {
		
		return (List<Object>)sqlMapClientTemplate.queryForList(id, value);
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id, Map<String, Object> map) {
		
	try {
		
		return (List<Object>)sqlMapClientTemplate.queryForList(id, map);
		
	} catch (Exception e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

}
