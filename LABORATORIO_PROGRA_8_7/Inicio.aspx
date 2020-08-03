<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Inicio.aspx.cs" Inherits="LABORATORIO_PROGRA_8_7.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server" ></asp:ScriptManager> 
            <asp:UpdatePanel runat="server" ID="Up1">
                <ContentTemplate>        
            <br />
            <br />
            
            <asp:Label ID="Pais" runat="server" Text="Pais"></asp:Label>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="dllPais" runat="server" Width="211px" Height="30px" DataSourceID="SqlPAIS" DataTextField="NOMBRE" DataValueField="NOMBRE">
            </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlPAIS" runat="server" ConnectionString="<%$ ConnectionStrings:UIAConnectionString %>" SelectCommand="SELECT NOMBRE FROM PAIS.PAIS"></asp:SqlDataSource>

            <br />
            <br />
            <br />
            <asp:Label ID="Habitantes" runat="server" Text="Habitantes"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtHabi" runat="server" Width="206px" Height="25px"></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Idioma" runat="server" Text="Idioma"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="dllIdioma" runat="server" Width="211px" Height="30px" DataSourceID="SqlIDIOMA" DataTextField="IDIOMA" DataValueField="IDIOMA">
                </asp:DropDownList>

            
                    <asp:SqlDataSource ID="SqlIDIOMA" runat="server" ConnectionString="<%$ ConnectionStrings:UIAConnectionString2 %>" SelectCommand="SELECT IDIOMA FROM IDIOMA.LENGUAJE"></asp:SqlDataSource>

            
            <br />
            <br />
            <br />
            <asp:Label ID="PIB" runat="server" Text="PIB"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtPIB" runat="server" Width="206px" Height="25px"></asp:TextBox>

            
            <br />
            <br />
            <br />
            <asp:Label ID="Superficie" runat="server" Text="Superficie"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTSuper" runat="server" Width="206px" Height="25px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Riesgo" runat="server" Text="Riesgo de Seguridad"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 120px" Width="226px">
                <asp:ListItem>Alto</asp:ListItem>
                <asp:ListItem>Medio</asp:ListItem>
                <asp:ListItem>Bajo</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Sujeto a Prestamo?" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnRegistrar" runat="server" Text="Resgistrar" BackColor="#999999" BorderStyle="Double" ForeColor="Black" OnClick="btnRegistrar_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" BackColor="#999999" BorderStyle="Double" OnClick="btnActualizar_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" BackColor="#999999" BorderStyle="Double" OnClick="btnEliminar_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="GridBD" 
                runat="server" 
                CellPadding="4" 
                Width="479px"
                AutoGenerateColumns="False" 
                BackColor="White" 
                BorderColor="#CC9966" 
                BorderStyle="None" 
                BorderWidth="1px" DataSourceID="SqlDatos"
                > 
                <Columns>

                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="HABITANTES" HeaderText="HABITANTES" SortExpression="HABITANTES" />
                        <asp:BoundField DataField="IDIOMA" HeaderText="IDIOMA" SortExpression="IDIOMA" />
                            <asp:BoundField DataField="PIB" HeaderText="PIB" SortExpression="PIB" />
                                <asp:BoundField DataField="SUPERFICIE" HeaderText="SUPERFICIE" SortExpression="SUPERFICIE" />  
                                    <asp:BoundField DataField="RIESGO" HeaderText="RIESGO" SortExpression="RIESGO" />
                                        <asp:BoundField DataField="PRESTAMO" HeaderText="PRESTAMO" ReadOnly="True" SortExpression="PRESTAMO" />  
                                
                                        


                </Columns>
               
                
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                    <asp:SqlDataSource ID="SqlDatos" runat="server" ConnectionString="<%$ ConnectionStrings:UIAConnectionString %>" SelectCommand="select 
NOMBRE 
,HABITANTES
,IDIOMA 
,PIB
,SUPERFICIE 
,RIESGO 
,CASE
	WHEN GGP.PRESTAMO = 0
		THEN 'NO'
		ELSE 'SI'
	END
	AS PRESTAMO

from GESTION.GESTIONPRESTAMO GGP
	JOIN IDIOMA.LENGUAJE IL
		ON GGP.ID_IDIOMA= IL.ID_IDIOMA 
			JOIN PAIS.PAIS PP 
				ON PP.ID_CODIGO = GGP.ID_CODIGO"></asp:SqlDataSource>
            <br />
        &nbsp;&nbsp;&nbsp;
                </ContentTemplate>
            </asp:UpdatePanel>
            

           



            
        </div>
    </form>
</body>
</html>
