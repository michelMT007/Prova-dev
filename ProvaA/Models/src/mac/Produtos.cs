using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ProvaA.Models.src.mac
{
	public class Produtos
	{
		public Guid Id { get; set; }
		[Required]
		[StringLength(13, ErrorMessage = "Ultrapasou o limite de 13 caracteres!")]
		public string CodigoBarras { get; set; }
		[Required]
		[StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
		public string NomeProduto { get; set; }
		[Required]
		[StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
		public string DescricaoProduto { get; set; }
		[Required(ErrorMessage = "Necessário Ativar  ou Desativar")]
		public bool Ativo { get; set; }
		[Required]
		[Range(0.01, 99999999999.00, ErrorMessage ="Preço deve ser maio que 0")]
		public decimal Valor { get; set; }
		[Required]
		[StringLength(36, ErrorMessage ="Campo obrigatorio")]
		public Guid FKCategoriaId { get; set; }
		public int QuantidadeEstoque { get; set; }
		public virtual Categorias Categorias { get; set; }
		public Categorias NomeCategoria { get; set; }
		public Categorias IdCategoria { get; set; }

		public Produtos()
        {
			this.Id = Guid.NewGuid(); 
        }
	}
}