<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_leftTest.aspx.cs" Inherits="Scripts_pageslide_33f0f44_demo_leftTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <div id="secondary">
            <h2>
                Hello There!</h2>
            <p>
                This is an example of a PageSlide coming at you on the right hand side.</p>
            <p>
                It would look funny if I didn't put a bunch of text in here, so I'm typing nonsense.
                That's right, if you're reading this then you're just reading nonesense, or if you're
                on the other side of The Big Pond, then I might be inclined to say that you're reading
                poppycock.
                <br />
                <asp:Label ID="lblTest" runat="server" ></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button 
                    ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
              
                <asp:LinkButton ID="LinkButton1" runat="server" >LinkButton</asp:LinkButton>
              
            </p>
        </div>
        <br />
        

    </form>
</body>
</html>
