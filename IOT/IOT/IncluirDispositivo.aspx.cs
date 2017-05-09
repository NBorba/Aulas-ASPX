using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IoTModel;
using IoTBLL;

namespace IOT
{
    public partial class IncluirDispositivo : System.Web.UI.Page
    {
        private static DispositivoService dispositivoService = new DispositivoService();
 
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Dispositivo dispositivo = new Dispositivo();
            dispositivo.Nome = txtNome.Text;
            dispositivo.Tipo = radioTipo.SelectedValue == "1" ? 1 : 0; // Se valor for 1 então int 1, se não 0
            int id = dispositivoService.incluir(dispositivo);
            Session["id"] = id;
            Session["msg"] = "Dispositivo incluído com sucesso!";
            
            // Todo: inserir label de resultado
            lblResultado.Text = (string)Session["msg"];
        }
    }
}