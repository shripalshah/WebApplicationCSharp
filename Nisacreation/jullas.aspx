<%@ Page Language="C#" MasterPageFile="~/WebPage.master" AutoEventWireup="true" CodeBehind="jullas.aspx.cs" Inherits="Nisacreation.jullas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style5
        {
        width: 100%;
        height: 539px;
        background-image: url('images/Fancy-Purple-Pattern-Tablet-Background.jpg');
        margin-top: 0;
    }
        .style6
        {
            width: 496px;
        }
        .style7
        {
        color: #FFFFCC;
        font-family: "Lucida Handwriting";
        font-style: italic;
        font-size: 12px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <asp:Panel ID="Panel1" runat="server" Height="414px">
         <table class="style5">
             <tr>
                 <td class="style7">
             <asp:Panel ID="Panel2" runat="server" Height="560px" Width="158px" ForeColor="#FFFFCC">
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink7" runat="server"  
                     NavigateUrl="~/complimentarybags.aspx" Target="_self" ForeColor="#FFFFCC">Complimentary Bags</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink8" runat="server" 
                     NavigateUrl="~/ladieshandbags.aspx" Target="_self" ForeColor="#FFFFCC">Ladies  Hand Bags</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink9" runat="server" 
                     NavigateUrl="~/ladieshandpurses.aspx" Target="_self" ForeColor="#FFFFCC">Ladies  Hand Purses</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/bottlebags.aspx" 
                     Target="_self" ForeColor="#FFFFCC">Bottle Bags</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/jullas.aspx" 
                     Target="_self" ForeColor="#FFFFCC">Jullas</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/hammock.aspx" 
                     Target="_self" ForeColor="#FFFFCC">Hammock</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/tablemats.aspx" 
                     Target="_self" ForeColor="#FFFFCC">Table Mats </asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink14" runat="server" 
                     NavigateUrl="~/magazineholders.aspx" Target="_self" ForeColor="#FFFFCC">Magazine Holders</asp:HyperLink>
                 <br />
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/potholders.aspx" 
                     Target="_self" ForeColor="#FFFFCC" >Pot Holders</asp:HyperLink>
                 <br />
             </asp:Panel>
                     </td>
                 <td>
                     <asp:Panel ID="Panel7" runat="server" Height="560px" Width="842px" 
                         style="margin-left: 0px; color: #FFFFCC">
                          
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Image ID="Image10" runat="server" Height="151px" 
                              ImageUrl="images/jullas.JPG" Width="174px" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Image ID="Image1" runat="server" ImageUrl="images/jullas1.JPG" Height="151px" 
                             Width="174px"/>
                             <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Image ID="Image2" runat="server" ImageUrl="images/jullas2.JPG" Height="151px" 
                             Width="174px"/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Image ID="Image3" runat="server" ImageUrl="images/jullas3.JPG" Height="151px" 
                             Width="174px"/>
                     </asp:Panel>
                 </td>
             </tr>
         </table>
    
  
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

