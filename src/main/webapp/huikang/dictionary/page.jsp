<%@page import="com.up72.huikang.model.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.up72.huikang.model.Dictionary"%>
<%@include file="service.jsp"%>
<up72:override name="head">
	<link rel="stylesheet" href="/js/ztree/css/zTreeStyle/zTreeStyle.css"
		type="text/css">
	<style type="text/css">
div#rMenu {
	position: absolute;
	visibility: hidden;
	top: 0;
	background-color: #555;
	text-align: left;
	padding: 2px;
	z-index: 100;
}

div#rMenu ul li {
	margin: 1px 0;
	padding: 0 5px;
	cursor: pointer;
	list-style: none outside none;
	background-color: #DFDFDF;
}
div.content_wrap {width: 600px;height:380px;}
div.content_wrap div.left{float: left;width: 250px;}
div.content_wrap div.right{float: right;width: 340px;}
div.zTreeDemoBackground {width:250px;height:362px;text-align:left;}

ul.ztree {margin-top: 10px;border: 1px solid #617775;background: #f0f6e4;width:220px;height:360px;overflow-y:scroll;overflow-x:auto;}
</style>
	<script type="text/javascript"
		src="/js/ztree/js/jquery.ztree.core-3.2.js"></script>
	<SCRIPT type="text/javascript">
		<!--
		var setting = {
			view: {
				selectedMulti: false
			},
			async: {
				enable: true,
				url:"${CTX}/huikang/dictionary/nodes.jsp",
				autoParam:["id", "name=n", "level=lv"],
				otherParam:{"method":"nodes"},
				dataFilter: filter
			},
			callback: {
				onClick: zTreeDblClick,
				onRightClick: OnRightClick
			}
		};

		function filter(treeId, parentNode, childNodes) {
			if (!childNodes) return null;
			for (var i=0, l=childNodes.length; i<l; i++) {
				childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
			}
			return childNodes;
		}
		
		function OnRightClick(event, treeId, treeNode){
			if (!treeNode && event.target.tagName.toLowerCase() != "button" && $(event.target).parents("a").length == 0) {
				zTree.cancelSelectedNode();
				showRMenu("root", event.clientX, event.clientY);
			} else if (treeNode && !treeNode.noR) {
				zTree.selectNode(treeNode);
				showRMenu("node", event.clientX, event.clientY);
			}
		}
		function zTreeDblClick(e, treeId, treeNode){
			$.ajax({
			  type: "POST",
			  url: "${CTX}/huikang/dictionary/do.jsp",
			  data: "method=view&id=" + treeNode.id,
			  dataType: "html",
			  cache: false,
			  success: function(html){
			    	$("#editDiv").html(html);
			  }
			});
		}
		
		function showRMenu(type, x, y) {
			if("root" == type){
				$("#m_addRoot").show();
				$("#m_add").hide();
				$("#m_edit").hide();
				$("#m_del").hide();
			}else{
				$("#m_addRoot").hide();
				$("#m_add").show();
				$("#m_edit").show();
				$("#m_del").show();
			}
			rMenu.css({"top":y+"px", "left":x+"px", "visibility":"visible"});
			$("body").bind("mousedown", onBodyMouseDown);
		}
		function hideRMenu() {
			if (rMenu) rMenu.css({"visibility": "hidden"});
			$("body").unbind("mousedown", onBodyMouseDown);
		}
		function onBodyMouseDown(event){
			if (!(event.target.id == "rMenu" || $(event.target).parents("#rMenu").length>0)) {
				rMenu.css({"visibility" : "hidden"});
			}
		}
		var addCount = 1;
		
		var zTree, rMenu;
		$(document).ready(function(){
			$.fn.zTree.init($("#dicTree"), setting);
			zTree = $.fn.zTree.getZTreeObj("dicTree");
			rMenu = $("#rMenu");
		});
		//-->
	</SCRIPT>
</up72:override>
<up72:override name="content">
	<div class="zTreeDemoBackground left">
		数据字典列表：
		<ul id="dicTree" class="ztree"></ul>
	</div>
	<div id="editDiv"></div>
</up72:override>

<div id="rMenu">
	<ul>
		<li id="m_addRoot" onClick="addRootNode();">
			增加根节点
		</li>
		<li id="m_add" onClick="addTreeNode();">
			增加子节点
		</li>
		<li id="m_edit" onClick="editTreeNode();">
			编辑节点
		</li>
		<li id="m_del" onClick="removeTreeNode();">
			删除节点
		</li>
	</ul>
</div>

<%@include file="../common.jsp"%>
<script type="text/javascript">
function addRootNode() {
	hideRMenu();
	$.ajax({
	   type: "POST",
	   url: "${CTX}/huikang/dictionary/do.jsp",
	   data: "method=form",
	   dataType: "html",
	   success: function(html){
	      $("#editDiv").html(html);
	   }
	});
}
function addTreeNode() {
	hideRMenu();
	if(zTree.getSelectedNodes().length > 0){
		$.ajax({
		   type: "POST",
		   url: "${CTX}/huikang/dictionary/do.jsp",
		   data: "method=form&dictionaryId=" + zTree.getSelectedNodes()[0].id,
		   dataType: "html",
		   success: function(html){
		      $("#editDiv").html(html);
		   }
		});
	}else{
		alert("请选择要操作的节点！");
	}
}
function editTreeNode() {
	hideRMenu();
	if(zTree.getSelectedNodes().length > 0){
		$.ajax({
		   type: "POST",
		   url: "${CTX}/huikang/dictionary/do.jsp",
		   data: "method=form&id=" + zTree.getSelectedNodes()[0].id,
		   dataType: "html",
		   success: function(html){
		      $("#editDiv").html(html);
		   }
		});
	}else{
		alert("请选择要操作的节点！");
	}
}
function removeTreeNode() {
	hideRMenu();
	if(zTree.getSelectedNodes().length > 0){
		window.location.href="${CTX}/huikang/dictionary/do.jsp?method=del&id=" + zTree.getSelectedNodes()[0].id;
	}else{
		alert("请选择要操作的节点！");
	}
}
current_memu(14);
</script>