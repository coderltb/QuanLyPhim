using System.Collections.Generic;

namespace CacLopTrongCSDL
{
    public class PhimTheoDoi
    {
        private List<Phim> dsphim = new List<Phim>();

        public int MaTV { get; set; }

        public int MaPhim { get; set; }

        public string HinhAnh { get; set; }

        public string TenPhim { get; set; }

        public string SoTap { get; set; }
    }
}