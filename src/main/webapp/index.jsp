<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <p>お好み焼き一覧</p>
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