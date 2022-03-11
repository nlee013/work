package com.util.dao;

import java.util.List;
import java.util.Map;

public interface CommonDAO {

	//data추가 method
	public void insertData(String id, Object value);
		
	//data 수정
	public int updateData(String id, Object value);
	public int updateData(String id, Map<String, Object> map);
	
	//data 삭제 3가지 경우(다 보여주기 위해 여기선 다 씀)
	public int deleteData(String id, Object value);
	public int deleteData(String id, Map<String, Object> map);
	public int deleteAllData(String id);
	
	//레코드 가져오기-data를 주고 받을 때 다 object
	public Object getReadData(String id);
	public Object getReadData(String id, Object value);
	public Object getReadData(String id, Map<String, Object> map);

	//최솟값, 최대값
	public int getIntValue(String id);
	public int getIntValue(String id, Object value);
	public int getIntValue(String id, Map<String, Object> map);
	
	//많은 데이터 가져오기
	public List<Object> getListData(String id);
	public List<Object> getListData(String id, Object value);
	public List<Object> getListData(String id, Map<String, Object> map);
}
