using ProvaA.Models.src.mac;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProvaA.ViewModels
{
    public class ProdutoViewModel
    {
		[Display(Name = "Código Identificador")]
		public Guid Id { get; set; }
		[Required]
		[Display(Name = "Código de Barras")]
		[StringLength(13, ErrorMessage = "Ultrapasou o limite de 13 caracteres!")]
		public string CodigoBarras { get; set; }
		[Required]
		[Display(Name = "Produto")]
		[StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
		public string NomeProduto { get; set; }
		[Required]
		[StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
		[Display(Name = "Descrição")]
		public string DescricaoProduto { get; set; }
		[Required(ErrorMessage = "Necessário Ativar  ou Desativar")]
		[Display(Name = "Ativo")]
		public bool Ativo { get; set; }
		[Required]
		[Display(Name = "Preço")]
		[Range(0.01, 99999999999.00, ErrorMessage = "Preço deve ser maio que 0")]
		public decimal Valor { get; set; }
		[Required]
		[StringLength(36, ErrorMessage = "Campo obrigatorio")]
		[Display(Name = "Quantidade")]
		public int QuantidadeEstoque { get; set; }
		public IEnumerable<Produtos> lprodutos { get; set; }
		public Produtos produtos { get; set; }
		[Display(Name = "Quantidade")]
		public Categorias categoriaNome { get; set; }
		public Guid CategoriaId { get; set; }
        public int Cod { get; set; }

        public SelectList CategoriasOpcoes { get; set; }

		public Produtos ConverterProdutos(ProdutoViewModel prodvm) {
			return new Produtos {
				Id = prodvm.Id,
				CodigoBarras = prodvm.CodigoBarras,
				NomeCategoria=prodvm.categoriaNome,
				FKCategoriaId = prodvm.CategoriaId,
				DescricaoProduto=prodvm.DescricaoProduto,
				NomeProduto=prodvm.NomeProduto,
				Ativo = prodvm.Ativo, 
				QuantidadeEstoque=prodvm.QuantidadeEstoque, 
				Valor = prodvm.Valor
			};
		}
        public ProdutoViewModel() { }
		public ProdutoViewModel(Produtos prod)
        {
			this.produtos.Id = prod.Id;
			this.produtos.NomeProduto = prod.NomeProduto;
			this.produtos.Valor = prod.Valor;
			this.produtos.CodigoBarras = prod.CodigoBarras;
			this.produtos.DescricaoProduto = prod.DescricaoProduto;
			this.produtos.Ativo = prod.Ativo;
			this.produtos.Categorias.NomeCategoria = prod.Categorias.NomeCategoria;
			this.produtos.QuantidadeEstoque = prod.QuantidadeEstoque;
			this.produtos.Valor = prod.Valor;
		}
		public ProdutoViewModel(IEnumerable<Produtos> prod)
		{
			lprodutos = prod;
		}
		public Categorias categoriasDropDown { get; set; }
        public List<Categorias> PopularDropdown()
        {
            return categoriasDropDown.PopDropDown();
        }
	}
}