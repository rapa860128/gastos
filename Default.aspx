<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRETSA - Gastos</title>
    <link rel="shortcut icon" type="image/x-icon" href="img/icon.ico"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.datetimepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css" />
    <script type="text/javascript">
            $(document).ready(function () {

                $('#TextBox2').datetimepicker({

                    format: 'Y-m-d',
                    timepicker: false,
                   
                });

            });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {

            $('#TextBox3').datetimepicker({

                format: 'Y-m-d',
                timepicker: false,
               
            });

        });
    </script>
        <script type="text/javascript">
            $(document).ready(function () {

                $('#TextBox6').datetimepicker({

                    format: 'Y-m-d',
                    timepicker: false,

                });

            });
    </script>
        <script type="text/javascript">
            $(document).ready(function () {

                $('#TextBox7').datetimepicker({

                    format: 'Y-m-d',
                    timepicker: false,

                });

            });
    </script>

            <script type="text/javascript">
                $(document).ready(function () {

                    $('#TextBox10').datetimepicker({

                        format: 'Y-m-d',
                        timepicker: false,

                    });

                });
    </script>
        <script type="text/javascript">
            $(document).ready(function () {

                $('#TextBox11').datetimepicker({

                    format: 'Y-m-d',
                    timepicker: false,

                });

            });
    </script>
            <script type="text/javascript">
                $(document).ready(function () {

                    $('#TextBox14').datetimepicker({

                        format: 'Y-m-d',
                        timepicker: false,

                    });

                });
    </script>
        <script type="text/javascript">
            $(document).ready(function () {

                $('#TextBox15').datetimepicker({

                    format: 'Y-m-d',
                    timepicker: false,

                });

            });
    </script>
    <style>
.button {
    background-color: #000066;
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {padding: 6px 24px;}

.aligntext {text-align:right;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo.png" Height="65px" Width="235px" />
        <div>
        <br />
         <asp:Label ID="Label6" runat="server" Text="REGISTRO DE GASTOS MENSUALES TRETSA" ForeColor="#000066" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
        <br />
        <br />
        </div>
        <div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="CONCEPTO" Font-Bold="true" ForeColor="#000066"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="IMPORTE" Font-Bold="true" ForeColor="#000066"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="FECHA INICIO" Font-Bold="true" ForeColor="#000066"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="FECHA FIN" Font-Bold="true" ForeColor="#000066"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="COMENTARIO" Font-Bold="true" ForeColor="#000066"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="parametro" DataValueField="id_parametro" Height="21px" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="text-align:right;">
                    <asp:Label ID="Label11" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="aligntext" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true" Text="0.00"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="parametro" DataValueField="id_parametro" Height="21px" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="text-align:right;">
                    <asp:Label ID="Label10" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="aligntext" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="TextBox5_TextChanged" AutoPostBack="true" Text="0.00"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox7" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox8" runat="server" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="parametro" DataValueField="id_parametro" Height="21px" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="text-align:right;">
                    <asp:Label ID="Label9" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="aligntext" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="TextBox9_TextChanged" AutoPostBack="true" Text="0.00"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox10" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox11" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox12" runat="server" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="parametro" DataValueField="id_parametro" Height="21px" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="text-align:right;">
                    <asp:Label ID="Label8" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                </asp:TableCell>
                    <asp:TableCell>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="aligntext" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="TextBox13_TextChanged" AutoPostBack="true" Text="0.00"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox14" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox15" runat="server" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox16" runat="server" Width="280px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell>
                <div style="text-align:right;">
                    <asp:Label ID="Label13" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                    </asp:TableCell>
                <asp:TableCell>
                <div style="text-align:right;">
                    <asp:Label ID="Label7" runat="server" Text="" Font-Bold="true" ForeColor="#000066"></asp:Label>
                        </div>
                </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="aligntext" BorderStyle="None"></asp:TextBox>
                    </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>
                    <div style="text-align:right;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" CssClass="button button1" />
                    </div>
                </asp:TableCell>
            </asp:TableFooterRow>
          </asp:Table>
                       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GRULOPConnectionString %>" SelectCommand="select id_parametro, parametro from T_Paramemantto where id_parametro = '3' or id_parametro = '4' or id_parametro = '5' or id_parametro = '8'"></asp:SqlDataSource>

    <div>
        <hr />
    </div>
       <br />
        <br />
    </div>
    </form>
</body>
</html>
