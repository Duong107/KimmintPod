go
use MINTPOD
go
select * from Accounts
insert into Accounts values 
(N'admin','123',N'admin','0000000000',N'adminlocation','work.voduong@gmail.com','/img/admin.jpg','2022-06-05',1),
(N'user','123',N'Nguyễn Dương','0867151745',N'Go Vap,HCM','work.voduong@gmail.com','/img/user.jpg','2022-06-05',0)
go
insert into Brands values 
('LIO','/img/lio.jpg',1,'admin','2022-06-05'),
('DOT','/img/dot.jpg',1,'admin','2022-06-05'),
('RK','/img/rk.jpg',1,'admin','2022-06-05'),
('TO','/img/to.jpg',1,'admin','2022-06-05'),
('MIKE','/img/MK.jpg',1,'admin','2022-06-05'),
('VEIK','/img/veik.jpg',1,'admin','2022-06-05'),
('CP','/img/cp.jpg',1,'admin','2022-06-05'),
('BAL','/img/bal.jpg',1,'admin','2022-06-05')
go
insert into Products values 
('Lio Boom','/img/lioboom.jpg',350,5,10,0,100,0,1,5,'admin',1,'2022-06-05'),
('Lio Bar','/img/liobar.jpg',250,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Lio Bee','/img/liobee.jpg',200,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),

('DOT MOD','/img/dot1.jpg',300,3,10,0,100,0,1,10,'admin',2,'2022-06-05'),
('DOT MOD V2','/img/dot2.jpg',330,5,10,0,100,0,1,0,'admin',2,'2022-06-05'),

('Raldm 7000','/img/rk7.jpg',350,5,10,0,100,0,1,30,'admin',3,'2022-06-05'),
('Raldm 6000','/img/rk6.jpg',3300,5,10,0,100,0,1,0,'admin',3,'2022-06-05'),
('Raldm 5000','/img/rk5.jpg',310,5,10,0,100,0,1,20,'admin',3,'2022-06-05'),

('Tobaco 3ni','/img/to3.jpg',330,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Tobaco 5ni','/img/to5.jpg',350,5,10,0,100,0,1,0,'admin',1,'2022-06-05'),

('Minion','/img/mi1.jpg',350,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Minion v2','/img/mi2.jpg',350,5,10,0,100,0,1,0,'admin',1,'2022-06-05'),

('Veik Shark','/img/skr.jpg',200,5,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Veik Luxury','/img/lxy.jpg',250,5,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Veik Micko','/img/mko.jpg',220,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),

('Coolplay','/img/col.jpg',350,5,10,0,100,0,1,0,'admin',1,'2022-06-05'),

('Balmy Pro','/img/balp.jpg',210,3,10,0,100,0,1,0,'admin',1,'2022-06-05'),
('Balmy Extra','/img/bale.jpg',270,5,10,0,100,0,1,0,'admin',1,'2022-06-05')
go
