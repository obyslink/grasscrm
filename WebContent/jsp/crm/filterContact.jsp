<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8" />
  <link rel="stylesheet" type="text/css" href="../../themes/default/easyui.css"/>  
  <link rel="stylesheet" type="text/css" href="../../themes/icon.css"/>  
  <link rel="stylesheet" type="text/css" href="../../css/global.css" /> 
  
  <script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>  
  <script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>   
  <script type="text/javascript" src="../../js/datagrid.js"></script> 
  <script type="text/javascript" src="../../js/global.js"></script>   
  
  <script type="text/javascript">
    $(document).ready(function(){
  	  $("#remove").click(function() {	
		  many_removerow('removeContact.action?removeKey=<s:property value="removeKey" />&seleteIDs=');
	  });	
  	  
	  $('#tt').datagrid({
		title:"<s:text name='title.grid.contacts'/>",
		iconCls:'icon-save',
		width:700,
		height:350,
		pagination:true,
		idField:'id', 
		url:'filterContact.action?filter_key=<s:property value="filter_key" />&id=<s:property value="id" />',
		columns:[[
			{field:'ck',checkbox:true},		          
			{field:'id',title:'ID',width:80,align:'center',sortable:'true'},
			{field:'name',title:'Name',width:80,align:'center',sortable:'true',formatter:function(value,row,index){  
				   new_format_value = "<a href='editContact.action?id=" + row.id + "' target='_blank'>" + value + "</a>";
				   return new_format_value 
             }  
            },
			{field:'title',title:'Title',width:80,align:'center',sortable:'true'},
			{field:'accountName',title:'Account Name',width:80,align:'right',sortable:'true'},
			{field:'email',title:'Email',width:80,align:'center',sortable:'true'},
			{field:'officePhone',title:'Office Phone',width:80,align:'center',sortable:'true'},
			{field:'user_name',title:'User Name',width:80,align:'center',sortable:'true'}
		]],
	  });
		
    }); 
  </script>
</head>
<body topMargin=0>
  <div id="feature">
	<div id="shortcuts" class="headerList">
	  <span style="white-space:nowrap;">
	    <a href="editContact.action?<s:property value="createKey" />=<s:property value="id" />" class="easyui-linkbutton" iconCls="icon-add" plain="true" target='_blank'><s:text name="action.createContact" /></a>  
	  </span>
 	  <span style="white-space:nowrap;">
        <a id="remove" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"><s:text name="action.removeRelation" /></a>  
      </span>		   
    </div>   
	<s:form id="addObjectForm" namespace="/jsp/crm"
		method="post">
	  <s:hidden name="id" id="id" value="%{id}" />
	  <s:hidden name="filter_key" id="filter_key" value="%{filter_key}" />
	  <s:hidden name="createKey" id="createKey" value="%{createKey}" />	
	  <s:hidden name="removeKey" id="removeKey" value="%{removeKey}" />	 	  	    
	  <table id="tt"></table>
	</s:form>	
  </div>
</body>
</html>


 
