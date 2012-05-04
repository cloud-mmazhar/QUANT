<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Collapse.aspx.cs" Inherits="zTest_Collapse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link type="text/css" rel="Stylesheet" href="../Scripts/SidePanel_Left/SidePanel_LeftStyle.css" />
    <script type="text/javascript" src="../Scripts/library/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/SidePanel_Left/SidePanel_Left.js"></script>
 
 
</head>


<body>
    <form id="form1" runat="server">
        <ul id="dock">
        <li id="links">
            <ul class="free">
                <li class="header"><a href="#" class="dock">Dock</a><a href="#" class="undock">Undock</a>Links</li>
                <asp:Label ID="test" runat="server" Text= " THIS IS A TEST TEST "></asp:Label>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                  <asp:Label ID="Label1" runat="server" Text= " THIS IS A TEST TEST "></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text= " THIS IS A TEST TEST "></asp:Label>
                      <asp:Label ID="Label3" runat="server" Text= " THIS IS A TEST TEST "></asp:Label>
                <li><a href="#">This is one item</a></li>
            </ul>
        </li>
        <li id="files">
            <ul class="free">
                <li class="header"><a href="#" class="dock">Dock</a><a href="#" class="undock">Undock</a>Files</li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
            </ul>
        </li>
        <li id="tools">
            <ul class="free">
                <li class="header"><a href="#" class="dock">Dock</a><a href="#" class="undock">Undock</a>Tools</li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
                <li><a href="#">This is one item</a></li>
           </ul>
        </li>
    </ul>
    <div id="content">
        <h1>JankoAtWarpSpeed.com</h1>
        <h2>Demo for <a href="http://www.jankoatwarpspeed.com/post/2009/05/30/Advanced-docking-using-jQuery.aspx">Advanced Docking using jQuery</a></h2>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id pharetra 
            augue. Phasellus venenatis suscipit lacus, consectetur iaculis libero suscipit 
            in. Morbi euismod placerat purus, id ultricies risus semper eget. Pellentesque 
            tincidunt fringilla mauris, vitae rutrum augue dictum vel. Aenean viverra 
            consectetur elit vitae dictum. Ut dapibus convallis mi, id imperdiet lorem 
            eleifend id. Donec lacus neque, lobortis a blandit et, varius eget mi. In felis 
            justo, auctor nec fringilla in, laoreet varius velit. Etiam lacinia orci sit 
            amet metus rutrum eget aliquam tellus congue. Ut sagittis, lectus sed auctor 
            varius, lectus felis aliquet nulla, non tempor justo mauris ut dui. Nulla sed 
            erat sem. Suspendisse purus ligula, cursus id hendrerit et, vestibulum bibendum 
            lacus.
        </p>
        <p>
            Praesent iaculis lectus id magna semper laoreet vel sit amet lectus. Vestibulum 
            purus ante, pellentesque quis fringilla a, suscipit id lectus. In ullamcorper 
            posuere leo, vel auctor enim placerat ac. Sed vitae hendrerit ipsum. Nam ac 
            nulla eget lectus sagittis suscipit. Fusce eu risus vitae elit vehicula 
            fermentum. Integer commodo fringilla mi, eget viverra nunc dapibus non. Sed 
            faucibus mi vel turpis lobortis consectetur. Donec pulvinar, erat id vulputate 
            tempus, leo tortor tincidunt nisl, id hendrerit sapien nibh a sapien. Morbi eu 
            mauris sed felis euismod semper. Pellentesque nunc mi, placerat ut faucibus nec, 
            suscipit ut orci. Duis eu enim risus, a dictum nunc. Ut gravida neque vel arcu 
            faucibus convallis. Aliquam euismod eleifend nunc at ornare. Aliquam tellus 
            nisl, pellentesque vitae imperdiet nec, eleifend eu augue. Integer bibendum 
            posuere nisl, eu vehicula orci luctus at. Vestibulum ante ipsum primis in 
            faucibus orci luctus et ultrices posuere cubilia Curae; Aenean in ante sapien.
        </p>
        <p>
            Proin mattis condimentum erat, et accumsan nunc tempus vulputate. Proin posuere 
            mauris ut tortor accumsan ultricies. Aenean felis purus, pretium non pretium 
            quis, iaculis sed erat. Donec ultrices libero eu dui tristique convallis. Fusce 
            risus libero, bibendum in placerat sed, hendrerit ac sem. Nulla ornare risus non 
            magna aliquam vehicula viverra elit tincidunt. Donec porttitor dapibus nunc sed 
            cursus. Sed pretium sapien ut dolor placerat at cursus ligula aliquet. Nulla 
            adipiscing nunc nec lacus consectetur vel gravida dui pharetra. Curabitur 
            pharetra odio a sapien facilisis id faucibus magna dignissim. Sed auctor porta 
            tellus a porttitor. Pellentesque consequat, eros in adipiscing rhoncus, arcu dui 
            hendrerit risus, at sodales sapien est in odio. In accumsan interdum diam, sed 
            congue nibh ultricies quis. Integer nec leo dolor, a porta mi. Sed adipiscing, 
            neque et faucibus egestas, diam orci rutrum erat, eget congue arcu purus rutrum 
            dolor. Nullam vel nisl non lacus pretium sodales.
        </p>
        <p>
            Praesent eros est, varius a lobortis sed, ultricies id erat. Integer lacinia 
            nulla lacus, sit amet vulputate tortor. Nullam tincidunt velit at nunc pharetra 
            sit amet condimentum sapien ultricies. Class aptent taciti sociosqu ad litora 
            torquent per conubia nostra, per inceptos himenaeos. Nunc sagittis ornare 
            vehicula. Vestibulum a arcu ac dui vulputate porta ac non nibh. Praesent sem mi, 
            faucibus vel suscipit sit amet, iaculis sit amet orci. Nunc nec mauris ante, at 
            eleifend felis. Aliquam quis vehicula nisi. Duis nisl urna, aliquet a 
            pellentesque id, vehicula semper nunc.
        </p>
        <p>
            Curabitur eget eros imperdiet purus semper malesuada. Pellentesque vitae dui 
            est. Curabitur luctus commodo aliquam. Quisque ut ligula metus, id euismod 
            ligula. Mauris sollicitudin nisl eget odio congue vel congue est hendrerit. 
            Mauris eu libero ac lectus commodo sodales ut id risus. Maecenas ultricies 
            euismod ante, ut semper nisi lobortis pulvinar. Duis mollis velit et tortor 
            gravida imperdiet. Integer malesuada elit vel nibh rutrum in porta ipsum auctor. 
            Proin lacinia arcu nec tellus consequat ornare.
        </p>
</div>
    
    
    
    </form>
</body>
</html>
