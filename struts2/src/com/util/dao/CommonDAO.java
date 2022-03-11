package com.util.dao;

import java.util.List;
import java.util.Map;

public interface CommonDAO {

	//data�߰� method
	public void insertData(String id, Object value);
		
	//data ����
	public int updateData(String id, Object value);
	public int updateData(String id, Map<String, Object> map);
	
	//data ���� 3���� ���(�� �����ֱ� ���� ���⼱ �� ��)
	public int deleteData(String id, Object value);
	public int deleteData(String id, Map<String, Object> map);
	public int deleteAllData(String id);
	
	//���ڵ� ��������-data�� �ְ� ���� �� �� object
	public Object getReadData(String id);
	public Object getReadData(String id, Object value);
	public Object getReadData(String id, Map<String, Object> map);

	//�ּڰ�, �ִ밪
	public int getIntValue(String id);
	public int getIntValue(String id, Object value);
	public int getIntValue(String id, Map<String, Object> map);
	
	//���� ������ ��������
	public List<Object> getListData(String id);
	public List<Object> getListData(String id, Object value);
	public List<Object> getListData(String id, Map<String, Object> map);
}
