using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadMedico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProsseguir_Click(object sender, EventArgs e)
    {
        SqlConnection conexao = new SqlConnection(
            WebConfigurationManager.ConnectionStrings[
            "Data Source=regulus;Persist Security Info=True;User ID=PRII16172;Password=PRII16172"
            ].ConnectionString
        );

        string comandoInsert =
          " Insert into Medico (NomeCompleto, dataNascimento, email, celular, " +
          " telefoneResidencial, codEspecialidade) " +
          " values " +
          " (@NomeCompleto, @dataNascimento, @email,@celular, @telefoneResidencial, @codEspecialidade)";

        SqlCommand exec = new SqlCommand(comandoInsert, conexao);
        exec.Connection = conexao;
        exec.Parameters.AddWithValue("@NomeCompleto", txtNome.Text);
        exec.Parameters.AddWithValue("@dataNascimento", txtNascimento.Text);
        exec.Parameters.AddWithValue("@email", txtEmail.Text);
        exec.Parameters.AddWithValue("@celular", txtCelular.Text);
        exec.Parameters.AddWithValue("@telefoneResidencial", txtTelefone.Text);
        exec.Parameters.AddWithValue("@codEspecialidade", ddlEspec.SelectedItem.Text);

        try
        {
            conexao.Open();
            exec.ExecuteNonQuery();
        }
        catch (Exception exc)
        {
            lblMensagem.Text = "ERRO: " + exc.Message;
        }

        if (lblMensagem.Text.Equals("")) // se o label de mensagem está vazio,
            Response.Redirect("exibirCadastro.aspx"); // muda a página exibida no
                                                      // browser
    }
}