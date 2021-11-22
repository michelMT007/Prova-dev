using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using ProvaA.Models.src.mac;
using ProvaA.ViewModels;

namespace ProvaA.Context
{
    public class AplicacaoContext : DbContext
    {
        public AplicacaoContext() : base("VendasContext") { }
        public DbSet<Categorias> Categorias { get; set; }
        public DbSet<Produtos> Produtos { get; set; }

    }
}