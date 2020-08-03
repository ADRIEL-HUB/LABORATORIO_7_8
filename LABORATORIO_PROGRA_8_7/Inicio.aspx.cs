using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Model;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace LABORATORIO_PROGRA_8_7
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargaGrid();
            }
        }

        public void cargaGrid()
        {
            using (ModeloUIA contextoBD = new ModeloUIA())
            {
                GridBD.DataSource = contextoBD.GESTION.ToList()
                GridBD.DataBind();
            }
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            using (ModeloUIA contextoBD = new ModeloUIA())
            {
                
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}