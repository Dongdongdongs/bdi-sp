<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<script>
window.addEventListener('load',function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET','/board');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var res = JSON.parse(xhr.responseText);
				var html = '';
				for(var b of res){
					html += '<tr>';
					html += '<td>'+ b.binum + '</td>';
					html += '<td><input type="text" name="biname'+ b.binum +'" value="'+ b.biname +'"></td>';
					html += '<td><input type="text" name="bidesc'+ b.binum +'" value="'+ b.bidesc +'"></td>';
					html += '<td><button onclick="japanUpdate('+b.binum+')">수정</button> <button onclick="japanDelete('+j.jpnum+')">삭제</button></td>';
					html += '</tr>';
				}
				document.querySelector('tbody').insertAdjacentHTML('beforeend',html);
			} else{
				
			}
		}
	}
	xhr.send();
	alert(document.querySelector('#jpBody'));
});
/* window.addEventListener('load',function(){
	alert('내가만든 온로드');				// <-이벤트 유지하면서 내가만든 이벤트 같이 끼워넣는 방법
} */
</script>
<body>
<!-- <form action="/japan1" method="post">
<input type="text" name="jpname"><button>검색</button>
</form> -->
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>설명</th>
			<th>수정/삭제</th>
		</tr>
	</thead>
	<tbody id="jpBody">

	</tbody>
</table>
</body>