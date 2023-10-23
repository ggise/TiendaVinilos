﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;
using Dominio;
using Negocio;

namespace TiendaVinilos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            Usuario completo = new Usuario();
            UsuarioNegocio negocio = new UsuarioNegocio();
            try
            {

                usuario.Email = TxtEmail.Text;
                usuario.Pass = TxtPass.Text;
                completo = negocio.Login(usuario);

                if (completo.ID != 0)
                {
                    if (completo.Activo == true)
                    {
                        if (Session["VienedeCarrito"] != null || Session["usuario"] != null)
                        {
                            Session.Add("usuario", completo);
                            Response.Redirect("FormularioCompra.aspx", false);
                        }
                        else
                        { 
                        Session.Add("usuario", completo);
                        Response.Redirect("Inicio.aspx", false);
                         }
                    }
                    else
                    {
                        Session.Add("error", "Su usario se encuentra inactivo contáctese con el administrador");
                        Response.Redirect("error.aspx", false);
                    }
                }
                else
                {
                    Session.Add("error", "Usuario o contraseña incorrectos");
                    Response.Redirect("error.aspx", false);
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("error.aspx", false);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx", false);
        }
    }
}
