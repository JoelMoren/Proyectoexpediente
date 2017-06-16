﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="../MasterPages/Menu.Master" CodeBehind="buscaexpediente.aspx.cs" Inherits="ctrlArchivos.vista.buscaexpediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../css/Forms.css" rel="stylesheet" type="text/css" />
    <script src="../JS/Alerts.js"></script>
    <script src="../JS/validarboton.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div id="contenido">
        <div class="MyToolBar">
            <div class="MyButton">
                 <asp:Button ID="Button2" runat="server" Text="Button" />
            </div>
            <div class ="MyButton">
                
            </div>
            <div class ="MyButton">

                
            </div>
        </div>
        <br />
             
        <div class="mysection">
        <asp:Label ID="lblBarraEstado" runat="server" Text="Bienvenido: escribe los datos que se indican del documento a registrar, el sistema generará automáticamente la clasificación"></asp:Label>
                 <br />
                 NOTA PARA EL PROGRAMADOR.- REGISTRO DE CORRESPONDENCIA<br />
                 UN EXPEDIENTE ESTA FORMADO POR OFICIOS MEMORANDUMS TARJETAS , FACTURAS ETC.<br />
                 CONJUNTO DE EXPDIENTES ES UN ARCHIVO<br />
                 UNA CAJA ALMACENA EXPEDIENTES<br />
                 LOS ARCHIVOS SE CLASIFICAN POR AREA<br />
                 Para manejar la correspondencia se da de alta el expediente y se van agregando segun vayan llegando los documentos<br />
            <br />
        </div>

        <div class="mysection">        
                   
            

        
            <br />
                        

            <div class="mycontrol">
                Fondo:<br />
                <asp:DropDownList ID="ddlfondo" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlfondo_SelectedIndexChanged1" >
                </asp:DropDownList>
                <br />
                <asp:DropDownList ID="ddlidfondo" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Sección:<br />
                <asp:DropDownList ID="ddlseccion" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlseccion_SelectedIndexChanged" >
                </asp:DropDownList>
                <br />
                <asp:DropDownList ID="ddlidseccion" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            

            </div>

          

            <div class="mycontrol">
                Serie:<br />
                <asp:DropDownList ID="ddlserie" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlserie_SelectedIndexChanged" >
                </asp:DropDownList>
                <br />
                <asp:DropDownList ID="ddlidserie" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

              <div class="mycontrol">
                Clasificacion expediente:<br />
                <asp:DropDownList ID="Ddlclasifi" AutoPostBack="True" class="form-control" runat="server" OnSelectedIndexChanged="Ddlclasifi_SelectedIndexChanged"></asp:DropDownList>
                <br />
                
            </div>


            <div class="mycontrol">
                No. de expediente:<br />
                
                <asp:DropDownList ID="DdlNoExp" class="form-control" runat="server" AutoPostBack="True">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="mycontrol">
                Año:<br />
                <asp:DropDownList ID="ddlaño" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>
        </div>

        <div class="mysection">
            <div class="mycontrol">
                Unidad administrativa responsable:<br />
                <asp:DropDownList ID="ddluadmva" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>

                <asp:DropDownList ID="ddlIduadmva" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            
            
            <div class="mycontrol">
                Area, Depto. o Unidad Productora:<br />
                <asp:DropDownList ID="ddlsubuadmva" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
                 <asp:DropDownList ID="ddlidsubuadmva" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

             <div class="mycontrol">
                Nombre del responsable:<br />
                <asp:DropDownList ID="ddlcargoresp" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
                <br />
                <asp:DropDownList ID="ddlidcargoresp" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
               
            </div>
            
            <div class="mycontrol">
                Resumen del contenido:<br />
                <asp:TextBox ID="TxtResumen" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Asunto:<br />
                <asp:TextBox ID="TxtAsuntoExp" runat="server" class="form-control"  TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Funcion:<br />
                <asp:DropDownList ID="DdlFuncion" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Acceso:<br />
                <asp:DropDownList ID="DdlAcceso" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Valores primarios:<br />
                <asp:DropDownList ID="DdlValPrim" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>



        </div>



        <div class="mysection">
            <h2>Fechas extremas del expediente:</h2>
            <div class="mycontrol">
                Inicial:<br />
                <asp:TextBox ID="TxtFecExtIni"  class="form-control" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Final:<br />
                <asp:TextBox ID="TxtFecExtFin"  class="form-control" runat="server" TextMode="Date"></asp:TextBox>
            </div>
        </div>

        <div class="mysection">
            <div class="mycontrol">
                Numero de legajo:<br />
                <asp:TextBox ID="TxtNoLegajo"  class="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Numero de fojas:<br />
                <asp:TextBox ID="TxtNoFojas"  class="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>

            <div class="mycontrolLong">
                Vinculación con otro expediente:<br />
                <asp:RadioButton ID="RdbSiVinculado"  class="form-control" runat="server" Text="si" GroupName="vincotros"  AutoPostBack="True" />
                <asp:RadioButton ID="RdbNoVinculado"  class="form-control" runat="server" Text="no" GroupName="vincotros" AutoPostBack="True"  />
                <asp:DropDownList ID="DdlVincOtros" class="form-control" runat="server" AutoPostBack="True"  ></asp:DropDownList>
            </div>

            <div class="myctrlXLong">
                Formato de soporte:<br />
                <asp:CheckBox ID="ChkPapel"  class="form-control" runat="server" Text="Papel" AutoPostBack="True"  />
                
                <asp:CheckBox ID="ChkFoto"  class="form-control" runat="server" Text="Fotografía" AutoPostBack="True"  />
                
                <asp:CheckBox ID="ChkUsb"  class="form-control" runat="server" Text="USB" AutoPostBack="True"  />
                
                <asp:CheckBox ID="ChkDisco"  class="form-control" runat="server" Text="Disco" AutoPostBack="True"  />
                
                <asp:CheckBox ID="ChkOtros"  class="form-control" runat="server" Text="Otros(especificar):" AutoPostBack="True"  />

                <asp:TextBox ID="TxtFrmtoSoporte"  class="form-control" runat="server" Visible="False" ></asp:TextBox>
            </div>

            <div class="mycontrol">
                Plazo de conservación:(años)<br />
                <asp:DropDownList ID="DdlPlazoConser" class="form-control" runat="server" AutoPostBack="True"  ></asp:DropDownList>
            </div>

            <div class="mycontrol">
                 Tipo de expediente:<br />
                 <asp:DropDownList ID="DdlTipExp" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Destino final:<br />
                <asp:DropDownList ID="DdlDestFin" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Valores secundarios:<br />
                 <asp:DropDownList ID="DdlValSec" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
            </div>
        </div>

        <div class="mysection">
            <h2>Ubicación topográfica:</h2>
            <div class="mycontrol">
                Clasificación:
                <br />
                <asp:Label ID="LblIdUbicTopog" runat="server" Text="generandose..."></asp:Label>
            </div>
            <div class="mycontrol">
                No. de edificio:<br />
                <asp:DropDownList ID="DdlNoEd" class="form-control" runat="server" AutoPostBack="True" >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoEd" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Nombre del edificio:<br />
                <asp:TextBox ID="TxtNomFondo" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="mycontrol">
                No. de piso:<br />
                <asp:DropDownList ID="DdlNoPiso" class="form-control" runat="server" AutoPostBack="True"  >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoPiso" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>
            <div class="mycontrol">
                No. de pasillo:<br />
                <asp:DropDownList ID="DdlNoPasillo" class="form-control" runat="server" AutoPostBack="True"  >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoPasillo" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                No. de estante:<br />
                <asp:DropDownList ID="DdlNoEst" class="form-control" runat="server" AutoPostBack="True"  >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoEst" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                No. de charola:<br />
                <asp:DropDownList ID="DdlNoChar" class="form-control" runat="server" AutoPostBack="True"  >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoChar" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>

            <div class="mycontrol">
                Unidad de instalacion o numero de la caja:<br />
                <asp:DropDownList ID="DdlNoCaja" class="form-control" runat="server" AutoPostBack="True"  >
                </asp:DropDownList>
                 <asp:DropDownList ID="DdlIdNoCaja" class="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>
            
            <div class="mycontrol">
                    Domicilio de la oficina donde esta el archivo:<br />
                    <asp:TextBox ID="TxtDirFondo"  class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="mycontrol">
                Observaciones:<br />
                <asp:TextBox ID="TxtObsFondo" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>



        <div class="mysection">
            
            <h2>Datos Generales</h2>
            <div class="mysubsection">
                <h3>Lugar:</h3>
                <div class="mycontrol">
                    Fecha:<br />
                    Puebla, Pue a:
                    <br />
                    <asp:TextBox ID="TxtFechaCaptura" runat="server"  class="form-control" TextMode="Date" AutoPostBack="True" ></asp:TextBox>
                </div>

                <div class="mycontrol">
                    Capturado por:
                    <asp:DropDownList ID="DdlRespCaptura"  class="form-control" runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                    <asp:DropDownList ID="DdlIdRespCaptura"  class="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="mysubsection">
                <h3>Jefe de área, responsable del expediente:</h3>

                <div class="mycontrol">
                    Nombre del responsable del expediente:
                    <br />
                    <asp:TextBox ID="TxtNomRespExp"  class="form-control" runat="server" Enabled="False"></asp:TextBox>
                
                </div>
                
                <div class="mycontrol">
                    Cargo del responsable del expediente:<br />
                    <asp:TextBox ID="TxtCargoRespExp"  class="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>

                <div class="mycontrol">
                    Telefono: <br />
                    <asp:TextBox ID="TxtTelRespExp"  class="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>

                <div class="mycontrol">
                    Correo electrónico:<br />
                    <asp:TextBox ID="TxtEmailRespExp"  class="form-control" runat="server" TextMode="Email" Enabled="False"></asp:TextBox>
                </div>

                <div class="mycontrol">
                    Area, Depto. o Unidad Productora: <br />
                    <asp:TextBox ID="TxtUnidAdmvaACargo"  class="form-control" runat="server" TextMode="Email" Enabled="False"></asp:TextBox>
                </div>

                <div class="mycontrol">
                    Revisado y autorizado por:<br />
                    <asp:DropDownList ID="DdlAutorizadorExp"  class="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DdlIdAutorizadorExp"  class="form-control" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </div>

                
            </div>
        </div>
        <div class="MyToolBar">
            <div class="MyButton">

               
                <asp:Button ID="Button1" runat="server" Text="Eliminar" OnClick="Button1_Click" />

                        <asp:Button ID="Button3" runat="server" Text="Actualizar" OnClick="Button3_Click" />
            </div>
        </div>

        

      

        



        

      

        

    </div>
    
</asp:Content>