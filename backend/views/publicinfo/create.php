<?php
<!--[if lt IE 9]>
  <script src="../js/html5shiv.min.js"></script>
  <script src="../js/respond.min.js"></script>
<![endif]-->
<!--顶部-->
<!--中间-->

<!--此处是内容区部分-->
<div class="outwrap">	
	
	<div class="innerwrap bg_form">
		
		<div class="innerCotent">
			<div class="formTitle">发布公共信息</div>
			<form name='commentForm' id="commentForm" method="post" enctype="multipart/form-data" action="index.php?r=publicinfo/save">
				<table class="mytb midTb" cellpadding="0" cellspacing="0">
					<tr>
						<td class="col-sm-3 text-center bg_lable">信息类型</td>
						<td class="col-sm-9">
							<select class="form-control" name = "publicinfoForm[type]" id="publicinfoform-type">
							  <option value ='0'>请选择信息类型</option>
							  <option value='<?=Html::encode($menu['id'])?>'><?=Html::encode($menu['menu_name'])?></option>
							</select>
						</td>						
					</tr>
					<tr>
						<td class="col-sm-3 text-center bg_lable">标题</td>
						<td class="col-sm-9">
					</tr>
					<tr>
						<td class="col-sm-3 text-center bg_lable"><div>内容</div></td>
						<td class="col-sm-9">
							<textarea  class="form-control" id='publicinfoform-content' rows="10" name="publicinfoForm[content]" style="display:none"></textarea>
						</td>			
					</tr>
					<tr>
						<td class="col-sm-3 text-center bg_lable">附件</td>
						<td class="col-sm-9">
							<div id="upload_attach" class="inpBox">
								<div class="btnAtta" onclick="upload_btn_click(2);">
									<i class="icon_clip"></i>
									<span class="ic_text">上传附件</span>									
								</div>
							</div>
							<div class="inpBox inpBox_atta" style="display: block;">
				
								<div id="attach1" href="#" class="attaIteam" style="display: none;">
									<div class="icon_del fr" style="cursor:pointer;" onclick="file_del(1)"></div>
									<i class="icon_file"></i><span  id="attachName1"></span>
								</div>
								
								<div id="attach2" href="#" class="attaIteam" style="display:none;">
									<div href="#" class="icon_del fr" style="cursor:pointer;" onclick="file_del(2)"></div>
									<i class="icon_file"></i><span  id="attachName2"></span>
								</div>
				
								<div id="attach3" href="#" class="attaIteam" style="display:none;">
									<div href="#" class="icon_del fr" style="cursor:pointer;" onclick="file_del(3)"></div>
									<i class="icon_file"></i><span  id="attachName3"></span>
								</div>
								
							</div>
						</td>
					</tr>
				</table>
			<div style="#display: none;">
				<div class="buttnGroup">
					<input class="submit" type="button" onclick='send_submit();' value="提交">
				<!--	<a href="javascript:void(0)" class="mobtn default_btn">取消</a>   -->
				</div>
				
			</form>
		</div>
	<div id="uploadfile" style="display:none">
	</div>
</div>
<!--底部-->
<script>

//$(document).ready(function(){
//需要参考jquery validate 验证插件
//	$("#commentForm").validate();

	//form 表单提交之后触发
//$.validator.setDefaults({
//    submitHandler: function() {
//      alert("提交事件!");
//    }
//});
	
	
//});


</script>