package com.util.sqlMap;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

//text�� �� xml������ Object ��ü�� �ٲٴ� �� ���⼭ �۾���.
//Object�� �ٲ�� �޸� �� �ö�
public class SqlMapConfig {
	
	private static final SqlMapClient sqlMap;//���⿡ ��ü ���� ����
	
	static {
		
		try {
			
			String resource = "com/util/sqlMap/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);//�о
			
			//�о ���� SqlMapClientBuilder�� sqlMap�� ��ü�� ���� �� ��
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("sqlMap Error : " + e);
		}
	}
	
	public static SqlMapClient getSqlMapInstance() {
		
		return sqlMap;
	}

	
	
}
