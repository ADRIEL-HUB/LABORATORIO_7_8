using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CapaDatos
{
    public class PAIS
    {
        [Key]
        public int ID_CODIGO { get; set; }

        [StringLength(80)]
        public String NOMBRE { get; set; }

        public int HABITANTES { get; set; }


    }
}
