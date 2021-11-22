using ProvaA.Context;
using ProvaA.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProvaA.Controllers
{
    public class ProdutoController : Controller
    {
        AplicacaoContext db = new AplicacaoContext();
        public ActionResult Cadastro()
        {
            var categorias = db.Categorias.ToList();
            var modelvm = new ProdutoViewModel
            {
                NomeProduto="",
                Valor= 0,
                
                CodigoBarras ="",
                DescricaoProduto="",
                CategoriasOpcoes = new SelectList(categorias, "NomeCategoria")
            };
            return View();
        }

    }
}
