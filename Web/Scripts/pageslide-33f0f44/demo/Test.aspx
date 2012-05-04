<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Scripts_pageslide_33f0f44_demo_Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="demo.css" type="text/css" media="screen" title="no title" charset="utf-8">
        	<!-- Files used by jQuery pageSlide plugin -->
    <script type="text/javascript" src="../lib/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../jquery.pageslide.js"></script>
    
    
</head>
<body>
    <form id="form1" runat="server">
     <div id="content">
        <div id="header">
          <p>Welcome to the jQuery PageSlide Demo, below are some various interactions for you to play with.</p>
          <p>To close the slide, click anywhere on the screen. Only one slide can be open at a time.</p>
        </div>
        <ul>
          <li><a href="_leftTest.txt" id="slide-left">PageSlide from the left</a></li>
          <li><a href="_right.html" id="slide-right">PageSlide from the right</a></li>
          <li><a href="_modal.html" id="slide-modal">PageSlide as a modal element</a></li>
        </ul>
      </div>
  </body>
  <script type="text/javascript">
    $("#slide-left").pageSlide({ width: "350px", direction: "right" });
    $("#slide-right").pageSlide({ width: "350px", direction: "left" });
    $("#slide-modal").pageSlide({ width: "350px", direction: "left", modal: true });
  </script>
    </form>
</body>
</html>
