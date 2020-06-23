create database Quan_Ly_Phim
use Quan_Ly_Phim
go
create table ThanhVien
(
	MaTV int not null primary key,
	UserName varchar(100),
	Password varchar(100),
	TenTV nvarchar(100),
	NgaySinh date,
	GioiTinh nchar(15),
	Email varchar (100),
	ChkAddmin bit
)
go
create table Phim
(
	MaPhim int not null primary key,
	TenPhimGoc nvarchar(100),
	TenPhimTV nvarchar(100),
	HinhAnh nvarchar(100),
	NoiDungPhim nvarchar(max),
	NamPhatSong char(30),
	QuocGia nvarchar(30),
	TrangThai char(30),
	ThoiLuong int,
	TheLoai nvarchar(200),
	DuongDanPhim nvarchar(250)
)
--drop table PhimTheoDoi
go
create table PhimTheoDoi
(
	MaTV int not null,
	MaPhim int not null,
	HinhAnh varchar(100),
	TenPhim nvarchar(100),
	SoTap char(30),
	Primary key(MaTV,MaPhim)
)
go
--------------------------------------------------------------------------------------------
--									    Foreign Key								      	  --
--------------------------------------------------------------------------------------------
go
Alter table PhimTheoDoi
add constraint FK_PhimTheoDoi_Phim foreign key(MaPhim) references Phim(MaPhim)
go
alter table PhimTheoDoi
add constraint FK_PhimTheoDoi_ThanhVien foreign key(MaTV) references ThanhVien(MaTV)

--------------------------------------------------------------------------------------------
--									    ADD Value								      	  --
--------------------------------------------------------------------------------------------

---------------------------------------Thành Viên-------------------------------------------
go
set dateformat dmy
Insert into ThanhVien values(1,'LongAdmin','1',N'Trần Bảo Long','11/7/1999',N'Nam','lockhanhlong007@gmail.com',1)
Insert into ThanhVien values(2,'TrinhAdmin','1',N'Ngô Khánh Trình','2/2/1999',N'Nam','null ',1)
Insert into ThanhVien values(3,'TuanAdmin','1',N'Nguyễn Tuấn','1/1/1999',N'Nam','null',1)
Insert into ThanhVien values(4,'UsertTest','1',N'Người Dùng Test','19/5/2019',N'Nam','null',0)
--------------------------------------------------------------------------------------------

------------------------------------------Phim----------------------------------------------
go
Insert into Phim values('1',N'Overlord',N'Overlord Season 1','Overlord.jpg',N'Cốt truyện anime sẽ đưa khán giả đến năm 2138 trong tương lai, khi khoa học công nghệ phát triển vượt bậc và ngành game thực tế ảo đang nở rộ hơn bao giờ hết. Yggdrasil, một game online vô cùng phổ biến thời gian đó bỗng dưng bị đóng cửa đột ngột, nhưng nhân vật chính Momonga lại quyết định không thoát ra ngoài và khám phá những điều bí ẩn khi thế giới ảo quanh mình ngày một thay đổi.','Q3 2015',N'Nhật Bản','13/13',24,N'Anime,Hành Động',N'Overlord I.mp4')
Insert into Phim values('2',N'Overlord II',N'Overlord Season 2','Overlord(SS2).jpg',N'Mùa thứ 2 của Series anime Overlord','Q1 2018',N'Nhật Bản','13/13',22,N'Anime,Hành Động',N'Overlord II.mp4')
Insert into Phim values('3',N'Overlord III',N'Overlord Season 3','Overlord(SS3).jpg',N'Mùa thứ 3 của anime Overlord','Q3 2018',N'Nhật Bản','13/13',23,N'Anime,Hành Động',N'Overlord III.mp4')
Insert into Phim values('4',N'Sword Art Online',N'Đao Kiếm Thần Vực','Sword Art Online(SS1).jpg',N'Năm 2022, thế hệ game chạy trên NERvGear tiếp theo đã được công bố, người dùng có thể kết nối với thế giới ảo thông qua chức năng FullDive. SAO (Sword Art Online) - dòng game VRMMORPG chính thống đầu tiên trên nền NERvGear đã gây xôn xao trên toàn thế giới. Một trong số rất nhiều người chơi, Kirito, quyết tâm chinh phục trò chơi này. Thế nhưng, người sáng tạo ra SAO, Akihiko Kayaba lại thông báo rằng: Một khi đã tham gia thì không người chơi nào có thể thoát ra ngoài cho đến khi phá đảo. Game Over tương đương với cái chết thực sự ngoài đời.','Q3 2012',N'Nhật Bản','25/25',23,N'Anime,Hành Động',N'Sword Art Online 1.mp4')
Insert into Phim values('5',N'Sword Art Online II',N'Sword Art Online Season 2','Sword Art Online(SS2).jpg',N'Một năm sau khi phá đảo Sword Art Online (SAO), Kirito đã được Kikuoka mời khám phá thử Gun Gale Online, mà cụ thể là Death Gun, một vũ khí dường như là liên kết những cái chết trong thế giới thực tế ảo và thế giới thật. Khi vào game, Kirito gặp Sinon, người hướng dẫn cậu cách chơi (cày cuốc, sắm đồ, PK này nọ). Dần dần Kirito phát hiện ra những cái chết bí ẩn đều có liên quan đến một Guild có tên là Laughing Coffin trong SAO ngày xưa.','Q3 2014',N'Nhật Bản','24/24',23,N'Anime,Hành Động',N'Sword Art Online 2.mp4')
Insert into Phim values('6',N'Sword Art Online III',N'Sword Art Online Season 3','Sword Art Online(SS3).jpg',N'Kirito tỉnh dậy trong một khu rừng rộng lớn, hoang sơ đầy những cây cao chót vót. Trong cuộc tìm kiếm manh mối về sự thật xung quanh, anh gặp một cậu bé có vẻ quen biết anh. Cậu ta dường như là một NPC đơn giản, nhưng chiều sâu cảm xúc của cậu ta dường như không khác gì một con người. Khi họ cùng đi tìm kiếm tung tích cha mẹ của cậu bé đó, Kirito tìm thấy một ký ức đặc biệt trở lại với cậu. Một ký ức từ thời thơ ấu của anh, của một cậu bé và một cô gái, với mái tóc vàng, và một cái tên anh đáng lẽ không bao giờ quên - Alice.','Q4 2018',N'Nhật Bản','24/24',23,N'Anime,Hành Động',N'Sword Art Online 3.mp4')
Insert into Phim values('7',N'Fat Buddies',N'ĐIỆP VỤ XXXL','DiepVienXXXL.jpg',N'Nội dung phim xoay quanh cặp đôi cảnh sát “cồng kềnh, bồng bềnh” và hành trình phá án vạch trần một công ty sản xuất thuốc phiện. Trong đó, một người là Hách Anh Tuấn, 175 kg và đang làm nhân viên bảo vệ, anh luôn mơ ước trở thành một thám tử thực thụ và người còn lại là đại úy J, một cựu nhân viên đặc vụ cao cấp.','Q4 2018',N'Trung Quốc','1/1',109,N'Hài',N'FAT BUDDIES.mp4')
Insert into Phim values('8',N'Tensei Shitara Slime Datta Ken',N'Slime Chuyển Sinh','Tensai Shitara Slime Datta Ken.jpg',N'Câu chuyện bắt đầu với anh chàng Satoru Mikami, một nhân viên 37 tuổi sống cuộc sống chán chường và không vui vẻ gì. Trong một lần gặp cướp, anh đã bị mất mạng. Tưởng chừng cuộc sống chán ngắt ấy đã kết thúc, nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới. Mikami thức dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh không còn hình dạng người nữa, mà anh đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh bắt đầu khám phá thế giới cùng với những quái vật khác, và công cuộc thay đổi thế giới mới đã bắt đầu.','Q4 2018',N'Nhật Bản','24.5/24.5',109,N'Anime',N'Tensei Shitara Slime Datta Ken.mp4')
Insert into Phim values('9',N'Three Kingdoms',N'Tân Tam Quốc Diễn Nghĩa','TanTamQuocChi.jpg',N'Phim xoay quanh quá trình hình thành và phát triển theo thế chân vạc giữa ba nước với các nhân vật chủ đạo như Gia Cát Lượng, Tào Tháo, Lưu Bị, Tôn Quyền, Chu Du, Tư Mã Ý… đan xen về những mâu thuẫn trong việc tranh giành ngôi thứ trong gia đình họ Tào; những rắc rối tính ái giữa Tào Phi, Tào Thực và nàng Chân Phi với những bất đồng chiến lược, những cuộc chiến tài trí giữa Gia Cát Lượng và Lưu Bị, giữa Chu Du và Tôn Quyền...','2010',N'Trung Quốc','1/1',109,N'Võ Thuật',N'Three Kingdoms.mp4')
Insert into Phim values('10',N'Touch Your Heart',N'Chạm Vào Tim Em','ChamVaoTimEm.jpg',N'Chua Cap Nhap','2019',N'Hàn Quốc','16/16',60,N'Tâm Lý',N'Touch your heart.mp4')
Insert into Phim values('11',N'The Incredible Monk',N'Tế Công Hàng Yêu','TeCongHangYeu.jpg',N'Chua Cap Nhap','2019',N'Trung Quốc','?/1',95,N'Hài,Võ Thuật',N'The Incredible Monk.mp4')
Insert into Phim values('12',N'Hellboy',N'Quỷ Đỏ 1','Hellboy.jpg',N'Chua Cap Nhap','2019',N'Âu Mỹ','1/1',122,N'Hành Động,Khoa Học Viễn Tưởng',N'HELLBOY.mp4')
Insert into Phim values('13',N'Hellboy 2:The Golden Army',N'Quỷ Đỏ 2:Binh Đoàn Địa Ngục','Hellboy2.jpg',N'Chua Cap Nhap','2019',N'Âu Mỹ','?/1',120,N'Hành Động,Khoa Học Viễn Tưởng',N'Hellboy 2-The Golden Army.mp4')
Insert into Phim values('14',N'Cua Lại Vợ Bầu',N'Cua Lại Vợ Bầu','Cualaivobau.jpg',N'Chua Cap Nhap','2019',N'Việt Nam','1/1',102,N'Tâm Lý,Hài',N'CUA LẠI VỢ BẦU.mp4')
Insert into Phim values('15',N'The Great Battle',N'Đại Chiến Thành Ansi','daichienthanhansi.jpg',N'Chua Cap Nhap','2019',N'Hàn Quốc','1/1',135,N'Hành Động,Võ Thuật',N'The Great Battle.mp4')
Insert into Phim values('16',N'Men In Black: International',N'Đặc Vụ Áo Đen: Sứ Mệnh Toàn Cầu','MIB(2019).jpg',N'Chua Cap Nhap','2019',N'Âu Mỹ','?/1',120,N'Hành Động,Hài,Khoa Học Viễn Tưởng',N'MEN IN BLACK-ILACKINTERNL.mp4')
Insert into Phim values('17',N'One Cut of the Dead',N'Quay Trối Chết','quaytroichet.jpg',N'Chua Cap Nhap','2018',N'Nhật Bản','1/1',95,N'Kinh Dị,Hài',N'One Cut of the Dead.mp4')
Insert into Phim values('18',N'The End?',N'Thang Máy Định Mệnh','thangmaydinhmenh.jpg',N'Chua Cap Nhap','2019',N'Âu Mỹ','1/1',100,N'Kinh Dị',N'THANG MÁY ĐỊNH MỆNH.mp4')
Insert into Phim values('19',N'Live Again, Love Again',N'Hãy Để Em Yêu Anh','Haydeemyeuanh.jpg',N'Chua Cap Nhap','2018',N'Hàn Quốc','1/1',97,N'Tâm Lý',N'Live again Love again..mp4')
Insert into Phim values('20',N'The Dude In Me',N'Đại Ca Hóa Soái Ca','Daicahoasoaica.jpg',N'Chua Cap Nhap','2019',N'Hàn Quốc','1/1',122,N'Hài',N'The Dude in Me.mp4')
Insert into Phim values('21',N'Alien',N'Quái Vật Không Gian','Alien.png',N'Chua Cap Nhap','1979',N'Âu Mỹ','1/1',117,N'Khoa Học Viễn Tưởng,Kinh Dị',N'Alien.mp4')
Insert into Phim values('22',N'Alien 2',N'Quái Vật Không Gian 2','Alien2.png',N'Chua Cap Nhap','1986',N'Âu Mỹc','1/1',137,N'Khoa Học Viễn Tưởng,Kinh Dị',N'Alien 2.mp4')
Insert into Phim values('23',N'Alien 3',N'Quái Vật Không Gian 3','Alien3.png',N'Chua Cap Nhap','1992',N'Âu Mỹ','1/1',114,N'Khoa Học Viễn Tưởng,Kinh Dị',N'Alien 3.mp4')
Insert into Phim values('24',N'Alien 4',N'Quái Vật Không Gian 4','Alien4.png',N'Chua Cap Nhap','1997',N'Âu Mỹ','1/1',109,N'Khoa Học Viễn Tưởng,Kinh Dị',N'Alien 4.mp4')
Insert into Phim values('25',N'Ant-Man',N'Người Kiến','AntMan1.png',N'Chua Cap Nhap','2015',N'Âu Mỹ','1/1',117,N'Hành Động,Khoa Học Viễn Tưởng',N'Ant Man 1.mp4')
Insert into Phim values('26',N'Ant-Man And The Wasp',N'Người Kiến Và Chiến Binh Ong','AntMan2.png',N'Chua Cap Nhap','2018',N'Âu Mỹ','1/1',118,N'Hành Động,Khoa Học Viễn Tưởng',N'Ant Man 2.mp4')
Insert into Phim values('27',N'IP Man',N'Diệp Vấn 1','diepvan1.png',N'Vào năm 1937, chiến tranh bùng nổ, và quân Nhật nhanh chóng chiếm đóng Phật Sơn. Diệp gia bị niêm phong, Diệp Vấn cũng vợ con phải chuyển đến một căn nhà lụp xụp; anh phải đi xúc than để kiếm miếng ăn cho gia đình. Tên tướng Nhật là Miura bị ám ảnh bởi võ thuật, và dùng lương thực để thưởng cho những trận đấu võ giữa người dân và quân lính của hắn. Vài người bạn của Diệp Vấn không kiềm chế được và xin tham gia. Lam võ khùng vốn có lòng tự tôn dân tộc rất cao, không hề sợ hãi lao lên thách thức Miura nhưng đã phải trả giá bằng tính mạng của mình. Ngày hôm sau, chứng kiến thêm cái chết của Lưu sư phụ, Diệp Vấn nổi cơn thịnh nộ và hạ gục 10 tên lính nhật trong một lượt đấu.Chứng kiến tài nghệ của Diệp Vấn, tên Miura tìm mọi cách để bắt anh lên thi đấu trên võ đài cùng hắn, trước sự chứng kiến của nhân dân Phật Sơn. Dó không chỉ là so tài võ công, mà còn liên quan đến danh dự của đất nước Trung Hoa. Liệu Diệp Vấn sẽ hành động ra sao trước sức ép của kẻ thù, liệu người dân Phật Sơn sẽ làm gì để cổ vũ cho người anh hùng của mình trong một trận đấu căng thẳng như vậy?','2008',N'Trung Quốc','1/1',106,N'Hành Động,Võ Thuật',N'Diep Van 1.mp4')
Insert into Phim values('28',N'IP Man 2',N'Diệp Vấn 2:Tôn Sư Truyền Kỳ','diepvan2.png',N'Diệp Vấn 2 tiếp nối kết thúc của phần 1, tập trung vào những sóng gió trong cuộc đời của Diệp Vấn tại Hong Kong. Diệp Vấn là bậc thầy của môn phái Vịnh Xuân và chính những năm tháng sống tại Hong Kong đã giúp ông sáng tạo nhiều thế võ đặc sắc riêng của mình. Ngoài ra, ông còn chính sư phụ của huyền thoại võ thuật Lý Tiểu Long. Với cốt truyện li kì hấp dẫn, cộng với đạo diễn và dàn diễn viên nổi tiếng, tài năng Chân Tử Đan và Hùng Đại còn có nhiều diễn viên tên tuổi khác như Hồng Kim Bảo, Huỳnh Hiểu Minh, Thích Tiểu Long...., Diệp Vấn 2 đã tạo ra cơn sốt khi công chiếu rộng rãi tại các rạp Trung Quốc.','2010',N'Trung Quốc','1/1',108,N'Hành Động,Võ Thuật',N'Diep Van 2.mp4')
Insert into Phim values('29',N'IP Man 3',N'Diệp Vấn 3','diepvan3.png',N'Diệp Vấn 3 là phần cuối cùng trong series phim Diệp Vấn, bộ phim xoay quanh cuộc đời lúc về già của Diệp Vấn, khắc họa một thế hệ tông sư võ học "chiến đấu vì tính mạng','2015',N'Trung Quốc','1/1',105,N'Hành Động,Võ Thuật',N'Diep Van 3.mp4')
Insert into Phim values('30',N'IP Man 4',N'Diệp Vấn 4','diepvan4.png',N'Sư phụ Diệp Vấn tái ngộ Lý Tiểu Long tại Mỹ.','2019',N'Trung Quốc','?/1',120,N'Hành Động,Võ Thuật',N'Diep Van 4.mp4')

select * from Phim
--------------------------------------------------------------------------------------------

----------------------------------------Phim Theo Doi--------------------------------------------
go
insert into PhimTheoDoi values(1,1,'Overlord.jpg',N'Overlord','13')
insert into PhimTheoDoi values(1,2,'Overlord(SS2).jpg',N'Overlord II','13')
insert into PhimTheoDoi values(1,3,'Overlord(SS3).jpg',N'Overlord III','13')
insert into PhimTheoDoi values(1,5,'Sword Art Online(SS2).jpg',N'Sword Art Online II','24')
insert into PhimTheoDoi values(2,6,'Sword Art Online(SS3).jpg',N'Sword Art Online III','24')
--------------------------------------------------------------------------------------------
-----------------------------------Store Procedures-----------------------------------

------------------------------------Phim----------------------------------------------

create proc Phim_Select_All
as
begin
	select * from Phim
end

create proc Phim_Insert
(
	@MaPhim int,
	@TenPhimTV nvarchar(100),
	@TenPhimGoc nvarchar(100),
	@HinhAnh varchar(100),
	@NoiDungPhim nvarchar(max),
	@NamPhatSong char(30),
	@QuocGia Nvarchar(30),
	@TrangThai char(30),
	@ThoiLuong int,
	@TheLoai nvarchar(200),
	@DuongDanPhim nvarchar(250)
)
as
begin
	Insert into Phim (MaPhim,TenPhimTV,TenPhimGoc,HinhAnh,NoiDungPhim,NamPhatSong,QuocGia,TrangThai,ThoiLuong,TheLoai,DuongDanPhim) values(@MaPhim,@TenPhimTV,@TenPhimGoc,@HinhAnh,@NoiDungPhim,@NamPhatSong,@QuocGia,@TrangThai,@ThoiLuong,@TheLoai,@DuongDanPhim)
end
go
create proc Phim_Update
(
	@MaPhim int,
	@TenPhimTV nvarchar(100),
	@TenPhimGoc nvarchar(100),
	@HinhAnh varchar(100),
	@NoiDungPhim nvarchar(max),
	@NamPhatSong char(30),
	@QuocGia Nvarchar(30),
	@TrangThai char(30),
	@ThoiLuong int,
	@TheLoai nvarchar(200),
	@DuongDanPhim nvarchar(250)
)
as
begin
	Update Phim
	set TenPhimTV = @TenPhimTV,TenPhimGoc = @TenPhimGoc,HinhAnh = @HinhAnh,NoiDungPhim = @NoiDungPhim,NamPhatSong = @NamPhatSong,QuocGia = @QuocGia,TrangThai = @TrangThai,ThoiLuong = @ThoiLuong,TheLoai = @TheLoai,DuongDanPhim = @DuongDanPhim
	where MaPhim = @MaPhim
end

create proc Phim_Delete
(
	@MaPhim int,
	@TenPhimGoc nvarchar(100)
)
as
begin
	Delete from Phim where MaPhim = @MaPhim and TenPhimGoc = @TenPhimGoc
end
----drop proc Phim_Delete
create proc Phim_Search
(
	@TenPhimGoc nvarchar(100)
)
as
begin
	select Phim.MaPhim,Phim.HinhAnh, Phim.TenPhimGoc 
	from Phim
	where Phim.TenPhimGoc like @TenPhimGoc + '%'
end
----drop proc Phim_Search
create proc Phim_HienThiTheoMa
(
	@MaPhim int
)
as
begin
	select *
	from Phim
	where MaPhim = @MaPhim
end
select * from Phim
----drop proc Phim_HienThiTheoMa
create proc Phim_HienThiTheoQuocGia
(
	@QuocGia nvarchar(30)
)
as
begin
	select Phim.MaPhim,Phim.HinhAnh,Phim.TenPhimGoc from Phim where QuocGia = @QuocGia
end
----drop proc Phim_HienThiTheoQuocGia
--------------------------------Thanh Vien----------------------------------------------
go
create proc ThanhVien_Select_All
as
begin
	select ThanhVien.MaTV,ThanhVien.TenTV,ThanhVien.NgaySinh,ThanhVien.GioiTinh,ThanhVien.Email from ThanhVien
end
----drop proc ThanhVien_Select_All
go
create proc ThanhVien_Register
(
	@MaTV int,
	@UserName varchar(100),
	@Password varchar(100),
	@TenTV nvarchar(100),
	@NgaySinh date,
	@GioiTinh nchar(15),
	@Email varchar (100),
	@ChkAddmin bit
)
as
begin
	Insert into ThanhVien (MaTV,UserName,Password,TenTV,NgaySinh,GioiTinh,Email,ChkAddmin) values(@MaTV,@UserName,@Password,@TenTV,@NgaySinh,@GioiTinh,@Email,@ChkAddmin)
end
----drop proc ThanhVien_Register
go
create proc ThanhVien_Login
(
	@UserName varchar(100),
	@Password varchar(100)
)
as
begin
	select ThanhVien.MaTV,ThanhVien.TenTV,ThanhVien.ChkAddmin
	from ThanhVien
	where ThanhVien.UserName = @UserName and ThanhVien.Password = @Password
end

----drop proc ThanhVien_Login
go
create proc ThanhVien_Foreign_Password
(
	@Email varchar(100)
)
as
begin
	select ThanhVien.UserName,ThanhVien.Password
	from ThanhVien
	where ThanhVien.Email = @Email
end
----drop proc ThanhVien_Foreign_Password
go
create proc ThanhVien_LayMaTV
as
begin
	Select MaTV 
	from ThanhVien
end
create proc ThanhVien_ChinhSuaThongTin
(
	@UserName varchar(100),
	@Password varchar(100),
	@TenTV nvarchar(100),
	@NgaySinh date,
	@GioiTinh nchar(15),
	@Email varchar (100)
)
as
begin
	update ThanhVien set Password = @Password,TenTV = @TenTV,NgaySinh = @NgaySinh,GioiTinh = @GioiTinh,Email=@Email where UserName = @UserName
end
create proc ThanhVien_HienThiThanhVienTheoMa
(
	@MaTV int
)
as
begin
	Select UserName,Password,TenTV,NgaySinh,GioiTinh,Email
	from ThanhVien
	where MaTV=@MaTV
end
go
create proc ThanhVien_CheckThanhVienTheoMa
(
	@UserName varchar(100)
)
as
begin
	select * from ThanhVien where UserName = @UserName
end
--drop proc ThanhVien_CheckThanhVienTheoMa
go
--------------------------------Phim Đang Theo Dõi----------------------------------------------
go
create proc PhimTheoDoi_Select
(
	@MaTV int
)
as
begin
	select MaPhim,PhimTheoDoi.HinhAnh,TenPhim ,SoTap
	from ThanhVien,PhimTheoDoi
	where ThanhVien.MaTV = PhimTheoDoi.MaTV and PhimTheoDoi.MaTV = @MaTV
end
----drop proc PhimTheoDoi_Select
go
create proc PhimTheoDoi_Select_All
as
begin
	select *
	from PhimTheoDoi
end
----drop proc PhimTheoDoi_Select_All
go
create proc PhimTheoDoi_Delete
(
	@MaPhim	int,
	@MaTV int
)
as
begin
	Delete from PhimTheoDoi where PhimTheoDoi.MaPhim = @MaPhim and PhimTheoDoi.MaTV = @MaTV
end
----drop proc PhimTheoDoi_Delete
go
create proc PhimTheoDoi_Insert
(
	@MaTV int,
	@MaPhim int,
	@HinhAnh varchar(100),
	@TenPhim nvarchar(100),
	@SoTap char(30)
)
as
begin
	Insert into PhimTheoDoi(MaTV,MaPhim,HinhAnh,TenPhim,SoTap) values(@MaTV,@MaPhim,@HinhAnh,@TenPhim,@SoTap)
end
----drop proc PhimTheoDoi_Insert
create proc PhimTheoDoi_Search
(
	@MaTV int,
	@MaPhim int
)
as
begin
	select PhimTheoDoi.* from PhimTheoDoi,ThanhVien,Phim where ThanhVien.MaTV = PhimTheoDoi.MaTV and PhimTheoDoi.MaPhim = Phim.MaPhim and PhimTheoDoi.MaTV = @MaTV and PhimTheoDoi.MaPhim = @MaPhim
end
----drop proc PhimTheoDoi_Search
create proc PhimTheoDoi_Search_MaPhim
(
	@MaPhim int
)
as
begin
	select PhimTheoDoi.* from PhimTheoDoi where MaPhim=@MaPhim
end