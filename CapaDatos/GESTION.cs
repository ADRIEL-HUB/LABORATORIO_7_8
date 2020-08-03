using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CapaDatos
{
    public class GESTION
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int ID_GESTIONPRESTAMOS { get; set; }

        
        public virtual PAIS PAIS { get; set; }

        public PAIS NOMBRE { get; set; }

        public virtual IDIOMA IDIOMA { get; set; }

       
        public double PIB { get; set; }

        public int SUPERFICIE { get; set; }

        [StringLength(30)]
        public string RIESGO { get; set; }

        public Boolean PRESTAMO { get; set; }
    }
}
