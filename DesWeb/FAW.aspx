<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAW.aspx.cs" Inherits="DesWeb.FAW" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-uppercase text-center" style="font-family: Acme, sans-serif;color: rgb(3,41,79);">Find A Warehouse</h1>
    <p style="font-family: Acme, sans-serif;margin-top: 64px;text-align: center;">Show results within&nbsp;
        <asp:DropDownList runat="server" ID="ddlMiles">
            <asp:ListItem Value="10">10 Miles</asp:ListItem>
            <asp:ListItem Value="30">30 Miles</asp:ListItem>
            <asp:ListItem Selected="True" Value="50">50 Miles</asp:ListItem>
            <asp:ListItem Value="100">100 Miles</asp:ListItem>
            <asp:ListItem Value="200">200 Miles</asp:ListItem>
        </asp:DropDownList>

        &nbsp; &nbsp; Company Name&nbsp;<asp:TextBox   placeholder="company name" class="bg-white border-primary shadow form-control-sm" ID="txtCompanyName" runat="server"></asp:TextBox>
    </p>
    <p style="font-family: Acme, sans-serif;margin-top: 64px;text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Zip Code&nbsp;
        
        <asp:TextBox   placeholder="zip code ex:60000" class="bg-white border-primary shadow form-control-sm" ID="txtZipCode" runat="server"></asp:TextBox>
        
        <%--<input class="bg-white border-primary shadow form-control-sm" type="search" style="width: 216px;height: 23px;margin: 68px;" autofocus="" autocomplete="off" inputmode="numeric"
            placeholder="zip code ex:60000">--%>Or city/state&nbsp;&nbsp;
        <asp:TextBox   placeholder="city/state" class="bg-white border-primary shadow form-control-sm" ID="txtCity" runat="server"></asp:TextBox>
        <%--<input class="bg-white border-primary shadow form-control-sm" type="search" style="width: 216px;height: 23px;margin: 68px;" autofocus="" autocomplete="off" inputmode="numeric" placeholder="city/state">--%>&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" class="btn btn-primary" Text="Search" />
       <br><br></p>
    <p style="font-family: Acme, sans-serif;">Search by keyword:</p>
    <asp:CheckBoxList ID="cbKeyword" runat="server" DataTextField="keyword"   
            DataValueField="keyword" AutoPostBack="False" 
           CellPadding="1"
           CellSpacing="1"
           RepeatColumns="3"
           RepeatDirection="Horizontal"
           RepeatLayout="Table"
           TextAlign="Right" Width="100%">  
 <asp:ListItem>Alcohol Only</asp:ListItem>
<asp:ListItem>Foreign Trade Zone</asp:ListItem>
<asp:ListItem>Polymers</asp:ListItem>
<%--<asp:ListItem>Alcohol/Tobacco</asp:ListItem>--%>
<%--<asp:ListItem>Freight forwarding/brokering</asp:ListItem>--%>
<asp:ListItem>Port services</asp:ListItem>
<asp:ListItem>Apparel</asp:ListItem>
<asp:ListItem>General Warehousing (public warehousing)</asp:ListItem>
<asp:ListItem>Rail</asp:ListItem>
<asp:ListItem>Automotive</asp:ListItem>
<asp:ListItem>Import/export</asp:ListItem>
<asp:ListItem>Reverse logistics (returns/repairs)</asp:ListItem>
<asp:ListItem>Bonded Warehouse</asp:ListItem>
<asp:ListItem>Industrial goods</asp:ListItem>
<%--<asp:ListItem>Sample Fulfillment</asp:ListItem>--%>
<asp:ListItem>Building materials</asp:ListItem>
<asp:ListItem>Intermodal/rail/box car</asp:ListItem>
<asp:ListItem>Shipping/port accessible</asp:ListItem>
<asp:ListItem>Chemical/hazmat</asp:ListItem>
<asp:ListItem>International</asp:ListItem>
<asp:ListItem>Temperature-controlled warehouse - nonfood</asp:ListItem>
<%--<asp:ListItem>Cold storage/frozen produce</asp:ListItem>--%>
<asp:ListItem>Just-in-time</asp:ListItem>
<asp:ListItem>Tobacco Only</asp:ListItem>
<asp:ListItem>CPG/Personal care products</asp:ListItem>
<asp:ListItem>Kitting/pick and packing</asp:ListItem>
<asp:ListItem>Transportation</asp:ListItem>
<asp:ListItem>Cross-dock/transload</asp:ListItem>
<asp:ListItem>Trucking/drayage</asp:ListItem>
<asp:ListItem>Distribution</asp:ListItem>
<asp:ListItem>Light manufacturing</asp:ListItem>
<asp:ListItem>Value-add Services</asp:ListItem>
<asp:ListItem>Dry food/temperature-controlled food</asp:ListItem>
<%--<asp:ListItem>Minority owned</asp:ListItem>--%>
<%--<asp:ListItem>Veteran owned</asp:ListItem>--%>
<%--<asp:ListItem>E-commerce fulfillment</asp:ListItem>--%>
<%--<asp:ListItem>Pharmaceuticals</asp:ListItem>--%>
<asp:ListItem>White-glove delivery</asp:ListItem>
<asp:ListItem>Electronics/appliances</asp:ListItem>


     </asp:CheckBoxList> 
    <br />


   <p style="font-family: Acme, sans-serif;">Search by certifications:</p>
    <asp:CheckBoxList ID="cbCertifications" runat="server" DataTextField="keyword"   
            DataValueField="keyword" AutoPostBack="False" 
           CellPadding="1"
           CellSpacing="1"
           RepeatColumns="3"
           RepeatDirection="Horizontal"
           RepeatLayout="Table"
           TextAlign="Right" Width="100%">  
 <asp:ListItem>AIB Certified Facilities</asp:ListItem>
<asp:ListItem>FDA Registered Facilities</asp:ListItem>
<asp:ListItem>ISO9001</asp:ListItem>

<asp:ListItem>Alcohol (licensed)</asp:ListItem>
<asp:ListItem>Foreign Trade Zone</asp:ListItem>
<%--<asp:ListItem>IWLA Responsible Warehouse Protocol Certified Facilities</asp:ListItem>--%>
<asp:ListItem>Bonded warehouse</asp:ListItem>
<asp:ListItem>HACCP standards adherence</asp:ListItem>
<asp:ListItem>LEED Certified Facilities</asp:ListItem>
<asp:ListItem>BRC</asp:ListItem>
<asp:ListItem>Hazmat certified facilities</asp:ListItem>
<asp:ListItem>NACD Responsible Distribution</asp:ListItem>

<asp:ListItem>C-TPAT</asp:ListItem>
<asp:ListItem>ISO14001</asp:ListItem>
<asp:ListItem>Organic Certified Facilities</asp:ListItem>


     </asp:CheckBoxList> 
    <br />

    <style>

#MainContent_cbCertifications label {
  margin-left: 15px;
}

#MainContent_cbKeyword label {
  margin-left: 15px;
}

    </style>
</asp:Content>
