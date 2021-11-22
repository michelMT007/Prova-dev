using ProvaA.Context;
using System.Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProvaA.ViewModels;
using ProvaA.Models.src.mac;

namespace ProvaA.Controllers
{
    public class CategoriaController : Controller
    {
        public AplicacaoContext db = new AplicacaoContext();
        public CategoriaViewModel cvm = new CategoriaViewModel();
        
        public CategoriaViewModel lcvm;

        public ActionResult Categoria()
        {
            var pesquisa = (from Cat in db.Categorias select Cat);
            List<CategoriaViewModel> listavm = new List<CategoriaViewModel>();
            foreach (var item in pesquisa)
            {
                CategoriaViewModel c = new CategoriaViewModel();
                c.Id = item.Id;
                //c.Codigo = item.Codigo;
                c.Descricao = item.Descricao;
                c.NomeCategoria = item.NomeCategoria;
                c.Ativo = item.Ativo;
                listavm.Add(c);
            }   
            return View(listavm);
            //return View(db.Categorias.ToList()); 
        }
        [HttpGet]
        public ActionResult CategoriaCadastro()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CategoriaCadastro(CategoriaViewModel categoriavm)
        {
            var categoria = cvm.ConverterCategorias(categoriavm);
            db.Categorias.Add(categoria);
            try{
                db.SaveChanges();
                ModelState.Clear();
            }catch(Exception ex){
                ex.ToString();
            }   
            return View();
        }

        //[HttpPost]
        //public String CategoriaCadastro(String categoriavm)
        //{
        //    //var categoria = cvm.ConverterCategorias(categoriavm);
        //    return categoriavm;
        //}
    }
}
