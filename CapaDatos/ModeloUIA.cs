using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace CapaDatos
{
   public class ModeloUIA : DbContext
    {
        public ModeloUIA() : base("name=UIABD")
        { 
        
        }
        
      
        public virtual DbSet<PAIS> PAIS { get; set; }

        public virtual DbSet<IDIOMA> IDIOMA { get; set; }

        public virtual DbSet<GESTION> GESTION { get; set; }

    }
}
