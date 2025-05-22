<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="test.product_list" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0">
  <title>メニュー画面</title>
  <link rel="stylesheet" href="CSS/Import.css">
  <link rel="stylesheet" href="CSS/ProductCategory.css">
  <link rel="stylesheet" href="CSS/Menu.css">
  <link rel="stylesheet" href="CSS/WordWrap.css">
  <link rel="stylesheet" href="CSS/Tab.css">
  <link rel="icon" href="data:,">
</head>
<body>
<header class="header-storename">
  <div class="header-image-wrapper">
    <img src="Image/木目3.jpg" alt="背景" class="header-background-image">
    <img src="Image/biglogo.png" alt="店の名前" class="header-image">
  </div>
</header>

<main>
  <div class="area category-wrapper">
    <%
      List<product_list> productList = (List<product_list>) request.getAttribute("product_list");
    %>

    <!-- タブ1 -->
    <input type="radio" name="tab_name" id="tab1" checked>
    <label class="tab_class" for="tab1">お好み焼き</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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

    <!-- タブ2 -->
    <input type="radio" name="tab_name" id="tab2">
    <label class="tab_class" for="tab2">もんじゃ焼き</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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

    <!-- タブ3 -->
    <input type="radio" name="tab_name" id="tab3">
    <label class="tab_class" for="tab3">鉄板焼き</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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

    <!-- タブ4 -->
    <input type="radio" name="tab_name" id="tab4">
    <label class="tab_class" for="tab4">サイドメニュー</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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

    <!-- タブ5 -->
    <input type="radio" name="tab_name" id="tab5">
    <label class="tab_class" for="tab5">ソフトドリンク</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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
    <!-- タブ6 -->
    <input type="radio" name="tab_name" id="tab6">
    <label class="tab_class" for="tab6">お酒</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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
    <!-- タブ7 -->
    <input type="radio" name="tab_name" id="tab7">
    <label class="tab_class" for="tab7">ボトル</label>
    <div class="content_class menu">
      <%
        if (productList != null && !productList.isEmpty()) {
          for (product_list p : productList) {
      %>
      <li>
        <div class="menu-row">
		    <div class="break-word bold-text"><%= p.getName() %></div>
			<div><%= p.getPrice() %> 円</div>
		    <div>
		        <a href="ProductDetails?name=<%= java.net.URLEncoder.encode(p.getName(), "UTF-8") %>&price=<%= p.getPrice() %>">
		            <img src="Image/plusButton.png" alt="商品詳細画面へ遷移する">
		        </a>
		    </div>
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
  </div>
</main>

<footer class="footer-buttons">
  <div class="table-number">3卓</div>
  <div class="footer-wrapper">
    <a href="OrderList.html">
      <button class="fixed-right-button">
        <img src="Image/cart.png" alt="注文リストのボタン">
        注文リスト
      </button>
    </a>
    <a href="OrderHistory.html">
      <button class="fixed-left-button">
        <img src="Image/menuhistory.png" alt="履歴・お会計のボタン">
        履歴・お会計
      </button>
    </a>
  </div>
</footer>
</body>
</html>
