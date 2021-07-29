/**
 * 
 */

	function replyPro(a, t){
		rep = '<div class="panel-body panel-reply">                                                                      ';
		rep +='	        	<p class="p1">작성자 : '+t.name+' &nbsp;&nbsp;&nbsp;                                                 ';
		rep +='	        	날짜 : '+ t.date +'&nbsp;&nbsp;&nbsp;                                                         ';
		rep +='	        	</p>                                                                                      ';
		rep +='	        	<p class="p2">                                                                            ';
		rep +='	        		<input type="button" idx="' + 1 + '" class="action" name="r_modify" value="댓글수정">                                                      ';
		rep +='	        		<input type="button" idx="' + 1 + '" class="action" name="r_delete" value="댓글삭제">                                                      ';
		rep +='	        	</p>                                                                                      ';
		rep +='	        	<p class="p3">'+t.text+'                                                                            ';
		rep +='	        	</p>                                                                                      ';
		rep +='</div>';
		
		parents = $(a).parents('.pbody');
		$(parents).append(rep);
	}
	// 함수 정의
	function listPro(){
		res = '<div class="panel-group" id="accordion">';
		for(var i = 0; i < board.writer.length; i++){
			res +='	    <div class="panel panel-default">                                                                 ';
			res +='	      <div class="panel-heading">                                                                     ';
			res +='	        <h4 class="panel-title">                                                                      ';
			res +='	          <a class="action" name="list" idx="'+ i +'"data-toggle="collapse" data-parent="#accordion" href="#collapse'+ i +'">'+ board.title[i] +'</a>';
			res +='	        </h4>                                                                                         ';
			res +='	      </div>                                                                                          ';
			res +='	      <div id="collapse'+ i +'" class="panel-collapse collapse">                                         ';
			res +='	        <div class="panel-body pbody">                                                                      ';
			res +='	        	<p class="p1">작성자 : <span class="w">'+ board.writer[i] +'</span>&nbsp;&nbsp;&nbsp;                                                 ';
			res +='	        	이메일 : <span class="e">'+ board.email[i] +'</span>&nbsp;&nbsp;&nbsp;                                                   ';
			res +='	        	날짜 : <span class="d">'+board.date[i]+'</span>&nbsp;&nbsp;&nbsp;                                                         ';
			res +='	        	조회수 : <span class="h">'+ 0 +'</span>                                                                                   ';
			res +='	        	</p>                                                                                      ';
			res +='	        	<p class="p2">                                                                            ';
			res +='	        		<input type="button" idx="' + i + '" class="action" name="modify" data-toggle="modal" data-target="#modModal"value="수정">                                                      ';
			res +='	        		<input type="button" idx="' + i + '" class="action" name="delete" value="삭제">                                                      ';
			res +='	        	</p>                                                                                      ';
			res +='	        	<p class="p3">                                                                            ';
			res +='	        		<span class="c">'+board.content[i]+'</span>                                                                            ';
			res +='	        	</p>                                                                                      ';
			res +='	        	<p>                                                                                       ';
			res +='	        		<textarea rows="" cols="80"></textarea>                                               ';
			res +='	        		<input type="button" value="등록" idx="'+ i +'" class="action reply" name="reply">                                        ';
			res +='	        	</p>        	                                                                          ';
			res +='	        </div>                                                                                        ';
			res +='	      </div>                                                                                          ';
			res +='	    </div>                                                                                            ';			
		}
		res +='	  </div>                                                                                              ';
		
		$('#accordion').remove();
		$('.container').append(res);
	}