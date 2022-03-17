//javascript 객체
//js로 class를 생성하고 setter,getter만듦

//Member class
Member = function(id, name, addr) {
	
	this.id = id;
	this.name = name;
	this.addr = addr;
	
};

//method(함수)정의 --setter
Member.prototype.setValue = function(id, name, addr) {
	
	this.id = id;
	this.name = name;
	this.addr = addr;
	
};

////method(함수)정의 --getter
Member.prototype.getValue = function() {
	
	return "[" + this.id + "]" + this.name + "(" + this.addr + ")";	
};