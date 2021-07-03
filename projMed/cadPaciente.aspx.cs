using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cadPaciente : System.Web.UI.Page
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
          " Insert into Paciente (NomeCompleto, endereco, dataNascimento, email, celular, " +
          " telefone) " +
          " values " +
          " (@NomeCompleto,@endereco @dataNascimento, @email,@celular, @telefone)";

        SqlCommand exec = new SqlCommand(comandoInsert, conexao);
        exec.Connection = conexao;
        exec.Parameters.AddWithValue("@NomeCompleto", txtNome.Text);
        exec.Parameters.AddWithValue("@endereco", txtEndereco.Text);
        exec.Parameters.AddWithValue("@dataNascimento", txtNascimento.Text);
        exec.Parameters.AddWithValue("@email", txtEmail.Text);
        exec.Parameters.AddWithValue("@celular", txtCelular.Text);
        exec.Parameters.AddWithValue("@telefone", txtTelefone.Text);
        

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