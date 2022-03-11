package com.util.sqlMap;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

//text로 된 xml파일을 Object 객체로 바꾸는 걸 여기서 작업함.
//Object로 바꿔야 메모리 상에 올라감
public class SqlMapConfig {
	
	private static final SqlMapClient sqlMap;//여기에 객체 담을 것임
	
	static {
		
		try {
			
			String resource = "com/util/sqlMap/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);//읽어냄
			
			//읽어낸 것을 SqlMapClientBuilder가 sqlMap에 객체를 만들어서 들어간 것
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
