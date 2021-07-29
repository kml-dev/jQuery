/**
 * 
 */
function regCheck(){
	nameValue = $('#name').val().trim();
	// 공백검증
	if(nameValue.length < 1){
		alert("이름을 입력하세요");
		return false;
	}
	// 길이검증
	if(nameValue.length < 2 || nameValue.length > 10){
		alert("2~10까지 입니다");
		return false;
	}
	// 정규식
	nameReg =  /^[가-힣]{2,10}$/;
	
	// 입력한 값과 정규식이 일치 하는지 비교
	// test() : 비교한 결과를 true, false로 리턴
	if(!(nameReg.test(nameValue))){
		alert("이름 형식오류")
		return false;
	}
	
	///////////////////////////////////////////////
	// 아이디 체크
	idValue = $('#id').val().trim();
	
	// 공백체크
	if(idValue.length < 1){
		alert("id입력");
		return false;
	}
	
	// 길이체크
	if(idValue.length < 4 || idValue.length > 12){
		alert("아이디 4 ~ 12로 입력");
		return false;
	}
		
	// 정규식
	idReg = /^[a-z][a-zA-Z0-9]{3,11}/;
	
	// 비교
	if(!(idReg.test(idValue))){
		alert("id형식오류");
		return false;
	}
	////////////////////////////////////////////
	// 전화번호
	telValue = $('#tel').val().trim();
	
	// 공백
	if(telValue.length < 1){
		alert("전화번호 입력")
		return false;
	}
	
	// 정규식
	telReg = /\d{3}-\d{4}-\d{4}/;
	
	// 비교
	if(!(telReg.test(telValue))){
		alert("전화번호 형식 오류");
		return false;
	}
	/////////////////////////////////////////////
	// 비밀번호
	// 값 가져오기
	passValue = $('#pass').val().trim();
	
	// 공백
	if(passValue.length < 1){
		alert("비밀번호 입력")
		return false;
	}
	
	// 길이 8~15
	if(passValue < 8 || passValue > 15){
		alert("비밀번호 8~15 입력");
		return false;
	}
	
	// 정규식 - 영문대소문자, 숫자, 특수문자가 반드시 하나 이상씩
	// (?=.*[A-Z]) : 0번이상 오는 어떤 문자 뒤에 A-Z를 기준으로 전방 앞에 누군가를 검색. 누군가를 정하지 않음
	passReg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[~!@#$%^&*]).{8,15}$/;
	
	// 비교
	if(!(passReg.test(passValue))){
		alert("비밀번호 형식 오류");
		return false;
	}
	///////////////////////////////////////////
	// 이메일
	// 값 가져오기
	emailValue = $('#mail').val().trim();
	
	// 공백
	if(emailValue.length < 1){
		alert("이메일 입력");
		return false;
	}
		
	// 정규식 - abc1234@w3schools.com / aaa@korea.co.kr
	mailReg = /^[a-zA-Z0-9]+@[a-z0-9_]+(\.[a-z]+){1,2}$/; 
	
	if(!(mailReg.test(emailValue))){
		alert("이메일 형식 오류");
		return false;
	}
	
	return true;
}