<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<form role="imageForm" action="upload/pricture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;">
	<input id="oldFile" name="oldPicture" type="hidden" class=" value="" style="display:none;">
	<input name="checkUpload" type="hidden" value="0" style="display:none;">
</form>

<script>
	window.onload=function(){
		$('input#inputFile').on('change',function(event){
			$('input[name="checkUpload"]').val(0);
			
			var fileFormat =
				this.value.substr(this.value.lastIndexOf(".")+1).toUpperCase();
			
			if(!(fileFormat=="JPG"||fileFormat=="JPEG")){
				alert("이미지는 jpg/jpeg 형식만 가능합니다.")
				$(this).val("");
				return;
			}
			if(this.files[0].size>1024*1024*1){
				alert("사진 용량은 1MB 이하만 가능합니다.");
				$(this).val("");
				return;
			}
			// 이미지 파일명 표시
			$('input[name="tempPicture"]').val(this.files[0].name);
			
			// 사진 읽기와 썸네일 표시
			if(this.files && this.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$('div#pictureView')
						.css({'background-image' : 'url('+e.target.result+')',
							  'background-position' : 'center',
							  'background-size' : 'cover',
							  'background-repear' : 'no-repeat'
							  });
				}
				reader.readAsDataURL(this.files[0]);
			}
			
		});
	}
	function upload_go(){
		//alert("upload btn click");
		if($('input[name="pictureFile"]').val()==""){
			alert("사진을 선택하세요.");
			$('input[name="pictureFile"]').click();
			return
		};
		
		var form = new FormData($('form[role="imageForm"]')[0]);
		
		$.ajax({
			url:"<%=request.getContextPath()%>/member/picture.do",
			data : form,
			type : "post",
			processData : false,
			contentType : false,
			success : function(data){
				$('input[name="checkUpload"]').val(1);
				
				$('input#oldFile').val(data);
				$('form[role="form"] input[name="picture"]').val(data);
				
				alert("사진이 업로드 되었습니다.")
				
			},
			error : function(req){
				alert("현재 사진 업로드가 불가합니다. \n 관리자에게 연락바랍니다.")
			}
			
			
			
			
		})
		
	}
</script>
























