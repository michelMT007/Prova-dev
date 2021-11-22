using ProvaA.Context;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ProvaA.Models.src.mac
{
    public class Categorias
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]   
        public Guid Id { get; set; }
        //public int Codigo { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "Ultrapasou o limite de 100 caracteres!")]
        public  string NomeCategoria { get; set; }
        [Required]
        [StringLength(1000, ErrorMessage = "Ultrapasou o limite de 1000 caracteres!")]
        public string Descricao { get; set; }
        //[Required(ErrorMessage ="Necessário Ativar  ou Desativar")]
        public bool Ativo { get; set; }
        public virtual ICollection<Produtos> Produtos { get; set; }
        private AplicacaoContext db = new AplicacaoContext();

        public List<Categorias> PopDropDown() {
            var list = db.Categorias.ToList();    
            return list;
        }
    }
}