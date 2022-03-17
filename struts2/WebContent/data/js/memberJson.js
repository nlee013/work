//패키지 만들기
var com = new Object();
com.util = new Object();
com.util.Member = function(id,name,addr){
	this.id = id;
	this.name = name;
	this.addr = addr;
};

com.util.Member.prototype = { //prototype = method
	
		setValue:function(id,name,addr){ //Key : Value //setter
			this.id = id;
			this.name = name;
			this.addr = addr;
		},
		setId:function(id){ //하나의 데이터만 가져오는 setter
			this.id = id;
		},
		getValue:function(){//getter
			return this.id + ":" + this.name + ":" + this.addr;
		},
		getId:function(){ //하나의 데이터만 가져오는 getter
			return this.id;
		},
		//toString은 사용자 정의
		//object의 toString 오버라이드 한것처럼 써준 것일 뿐
		toString:function(){ //method로 만든 getter? setter?
			return this.id + ":" + this.name + ":" + this.addr;
		}
		
};