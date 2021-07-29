/**
 * 
 */

function appendImg(){
	//result1의 첫번째 이미지를 선택 - result1의 맨 뒤로 추가 - 이동이 됨
//	$('#result1 img').first().appendTo('#result1');
	
	// 0.5초마다 한번씩 자동으로 이동하게 한다.
	a = setInterval(function(){
		$('#result1 img').first().appendTo('#result1');
		// 확인 버튼을 감추기(hide()) 또는 사용 불가능하게 설정(prop())
//		$('#btn1').hide();
		$('#btn1').prop('disabled',true);
	}, 500);
	
}

function stopImg(){
	clearInterval(a);
	// 확인 버튼을 보이기 또는 사용 가능하게 설정
//	$('#btn1').show();
	$('#btn1').prop('disabled',false);
}