package com.util.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.util.sqlMap.SqlMapConfig;

//interface 구현
public class CommonDAOImpl implements CommonDAO{

	private SqlMapClient sqlMap;
	
	public CommonDAOImpl() {
		
		this.sqlMap = SqlMapConfig.getSqlMapInstance();//읽어오기
		
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
			
			sqlMap.startTransaction();
			
			sqlMap.insert(id, value);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				sqlMap.endTransaction();
				
			} catch (Exception e2) {}
		}
		
	}

	@Override
	public int updateData(String id, Object value) {

		int result = 0;
		
		try {
			
			sqlMap.startTransaction();
			
			result = sqlMap.update(id, value);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				sqlMap.endTransaction();
				
			} catch (Exception e2) {}
		}
		return result;
	}

	@Override
	public int updateData(String id, Map<String, Object> map) {
		
		int result = 0;
		
		try {
			
			sqlMap.startTransaction();//
			
			result = sqlMap.update(id, map);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				//startTransaction();했으면 end도 해줘야됌
				sqlMap.endTransaction();//transaction해준 상태에서 lock 걸리지 않게
				
			} catch (Exception e2) {}
		}
		return result;
	}

	@Override
	public int deleteData(String id, Object value) {
		
		
		int result = 0;
		
		try {
			
			sqlMap.startTransaction();
			
			result = sqlMap.delete(id, value);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				sqlMap.endTransaction();
				
			} catch (Exception e2) {}
		}
		return result;
	}

	@Override
	public int deleteData(String id, Map<String, Object> map) {
		
		int result = 0;
		
		try {
			
			sqlMap.startTransaction();
			
			result = sqlMap.delete(id, map);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				sqlMap.endTransaction();
				
			} catch (Exception e2) {}
		}
		return result;
	}


	@Override
	public int deleteAllData(String id) {
		
		int result = 0;
		
		try {
			
			sqlMap.startTransaction();
			
			result = sqlMap.delete(id);
			
			sqlMap.commitTransaction();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
			
		}finally {
			
			try {
				
				sqlMap.endTransaction();
				
			} catch (Exception e2) {}
		}
		return result;
	}
	

	@Override
	public Object getReadData(String id) {
		
		try {
			
			return sqlMap.queryForObject(id);
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public Object getReadData(String id, Object value) {
		
		try {
			
			return sqlMap.queryForObject(id, value);
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public Object getReadData(String id, Map<String, Object> map) {
		
		try {
			
			return sqlMap.queryForObject(id, map);
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}
		return null;
	}

	@Override
	public int getIntValue(String id) {
			
		try {
			
			return ((Integer)sqlMap.queryForObject(id)).intValue();
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}
		return 0;
	}

	@Override
	public int getIntValue(String id, Object value) {
		
	try {
		
		return ((Integer)sqlMap.queryForObject(id, value)).intValue();
		
	} catch (SQLException e) {
		
		System.out.println(e.toString());
	}
	return 0;
	}

	@Override
	public int getIntValue(String id, Map<String, Object> map) {
		
	try {
		
		return ((Integer)sqlMap.queryForObject(id, map)).intValue();
		
	} catch (SQLException e) {
		
		System.out.println(e.toString());
	}
	return 0;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id) {
		
	try {
		
		return (List<Object>)sqlMap.queryForList(id);
		
	} catch (SQLException e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id, Object value) {
		
	try {
		
		return (List<Object>)sqlMap.queryForList(id, value);
		
	} catch (SQLException e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> getListData(String id, Map<String, Object> map) {
		
	try {
		
		return (List<Object>)sqlMap.queryForList(id, map);
		
	} catch (SQLException e) {
		
		System.out.println(e.toString());
	}
	return null;
	}

	
	
	
}
