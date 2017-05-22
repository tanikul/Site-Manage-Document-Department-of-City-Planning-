<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<div class="panel panel-default">
  <div class="panel-body">
      <springForm:form id="usersForm" action="" method="POST" commandName="users" cssClass="form-horizontal">
			  <springForm:hidden path="id" value="${obj.getId()}"/>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">Username</label>
			    <div class="col-sm-9">
			    	<springForm:input path="username" cssClass="form-control"/>
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">Password</label>
			    <div class="col-sm-9">
			    	<springForm:password path="password" cssClass="form-control"/>
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">ชื่อ</label>
			    <div class="col-sm-3">
			    	<springForm:select path="prefix" cssClass="form-control">
			    		<springForm:option value="" label="--- คำนำหน้า ---" />
			    		<springForm:options items="${prefixs}" />
			    	</springForm:select>   
			    	<p class="help-block"></p>
			    </div>
			    <div class="col-sm-6">
			    	<springForm:input path="fname" cssClass="form-control"/>
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">นามสกุล</label>
			    <div class="col-sm-9">
			    	<springForm:input path="lname" cssClass="form-control" />
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">กอง</label>
			    <div class="col-sm-9">
			    	<springForm:select path="division" cssClass="form-control" value="${obj.getDivisionCode()}" onchange="changeDivisionToGroup(this);">
			    		<springForm:option value="" label="--- เลือกกอง ---" />
			    		<springForm:options items="${divisions}" />
			    	</springForm:select>   
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">ฝ่าย</label>
			    <div class="col-sm-9" id="group-box">
			    	<springForm:select path="groupId" cssClass="form-control" value="${obj.getGroupId()}" disabled="true">
			    		<springForm:option value="" label="--- เลือกฝ่าย ---" />
			    	</springForm:select>   
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-3 control-label">สิทธิ์การใช้ระบบ</label>
			    <div class="col-sm-9">
			    	<springForm:select path="role" cssClass="form-control" value="${obj.getRole()}">
			    		<springForm:option value="" label="--- เลือกสิทธิ์ ---" />
			    		<springForm:options items="${roles}" />
			    	</springForm:select>   
			    	<p class="help-block"></p>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-2"></div>
			    <div class="col-sm-9">
			      <button class="btn btn-info" type="button" onclick="saveAddUser();">บันทึก</button>
			    </div>
			  </div>
		</springForm:form>
    </div>
 </div>