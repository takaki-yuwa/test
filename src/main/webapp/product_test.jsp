<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="jp">
<head>
  <meta charset="UTF-8">
  <title>Tab Sample</title>
  <link rel="stylesheet" href="Tab.css">
</head>
<body>
  <!--タブ表示ラジオボタンで設定してCSSで調整-->
  <div class="area .tab-header">
    <input type="radio" name="tab_name" id="tab1" checked>
    <label class="tab_class" for="tab1">お好み焼き</label>
    <div class="content_class">
<!--      お好み焼き一覧-->
     <%
  if (productList != null && !productList.isEmpty()) {
    for (product_list p : productList) {
%>
      <li>
        <div>
		    <div><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		</div>
	  </li>
      <%
          }
        } else {
      %>
        <p>商品情報がありません。</p>
      <%
        }
      %>
    </div>
    <input type="radio" name="tab_name" id="tab2" >
    <label class="tab_class" for="tab2">鉄板焼き</label>
    <div class="content_class">
      <p>鉄板焼き一覧</p>
    </div>
    <input type="radio" name="tab_name" id="tab3" >
    <label class="tab_class" for="tab3">タブ3</label>
    <div class="content_class">
      <p>タブ3のコンテンツを表示します</p>
    </div>
    <input type="radio" name="tab_name" id="tab4" >
    <label class="tab_class" for="tab4">タブ4</label>
    <div class="content_class">
      <p>タブ4のコンテンツを表示します</p>
    </div>
    <input type="radio" name="tab_name" id="tab5" >
    <label class="tab_class" for="tab5">タブ5</label>
    <div class="content_class">
      <p>タブ5のコンテンツを表示します</p>
    </div>
  </div>
</body>
</html>