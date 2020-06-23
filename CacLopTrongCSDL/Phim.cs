namespace CacLopTrongCSDL
{
    public class Phim
    {
        public int MaPhim { get; set; }

        public string TenPhimGoc { get; set; }

        public string TenPhim { get; set; }

        public string HinhAnh { get; set; }

        public string NoiDung { get; set; }

        public string NamPhatSong { get; set; }

        public string QuocGia { get; set; }

        public string TrangThai { get; set; }

        public int ThoiLuong { get; set; }

        public string TheLoai { get; set; }

        public string DuongDan { get; set; }

        public override string ToString()
        {
            return this.TenPhim;
        }
    }
}