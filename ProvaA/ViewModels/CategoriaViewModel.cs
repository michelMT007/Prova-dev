using ProvaA.Models.src.mac;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ProvaA.ViewModels
{
    public class CategoriaViewModel
    {
        [Display(Name="Código Identificador")]
        public Guid Id { get; set; }
        //[Display(Name = "Código")]
        //public int Codigo { get; set; }
        [Required]
        [Display(Name = "Categoria")]
        [StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
        public string NomeCategoria { get; set; }
        [Required]
        [Display(Name = "Descrição")]
        [StringLength(1000, ErrorMessage = "Ultrapasou o limite de 1000 caracteres!")]
        public string Descricao { get; set; }
        [Display(Name = "Categoria Ativo")]
        public bool Ativo { get; set; }

        public IEnumerable<Categorias> categorias ;

        //public CategoriaViewModel(Categorias _categoria) {
        //    this.Id = _categoria.Id;
        //    //this.Codigo = _categoria.Codigo;
        //    this.NomeCategoria = _categoria.NomeCategoria;
        //    this.Descricao = _categoria.Descricao;
        //    this.Ativo = _categoria.Ativo;
        //}
        public Categorias ConverterCategorias(CategoriaViewModel vm)
        {
            return new Categorias
            {
                Id = Guid.NewGuid(),//vm.Id,
                //Codigo = vm.Codigo,
                NomeCategoria = vm.NomeCategoria,
                Descricao = vm.Descricao,
                Ativo = vm.Ativo
            };
        }

        public CategoriaViewModel(IEnumerable<Categorias> categoria)
        {
            categorias = categoria;
        }

        public CategoriaViewModel()
        {
            // TODO: Complete member initialization
        }
    }
}