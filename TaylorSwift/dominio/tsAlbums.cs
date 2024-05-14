using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio
{
    public class tsAlbums
    {

        public int id { get; set; }
        public string nombreAlbum { get; set; } = string.Empty;
        public string songs { get; set; } = string.Empty;
        public string color { get; set; } = string.Empty;
        public DateTime fechaLanzamiento { get; set; }
        public string estilo { get; set; } = string.Empty;

        public bool taylorsVersion { get; set; }


    }
}