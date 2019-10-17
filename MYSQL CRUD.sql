-- Pertemuan - 2 DB 29 Agustus 2019


-- cara menghubungkan MYSQL via terminal
D:
cd xamp/mysql/bin
mysql -u root -p;

-- cara menampilkan  darabase 
SHOW DATABASES;

-- CARA MEMBUAT TABLE
CREATE TABLE `siswa`{
    id_siswa INT (11) PRIMARY KEY AUTO_INCREMENT ;
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(1),
    tmp_lahir VARCHAR(255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tanggal_entri DATETIME;
};

-- menampilkan table
SHOW TABLE;

-- MENAMPILKAN RINCI TABLE 
DESCREIBE `siswa`;

-- menambahkan record ke table 
    id_siswa = NULL,
    nis = 11800825,
    nama_lengkap = 'Bagas Pratama W',
    jk = 'L',
    tmp_lahir = 'SUBANG',
    tgl_lahir = '2003-04-06',
    alamat = 'Griya Cinangsi Asri',
    no_hp = '0897xxxxxxx'
    tanggal_entri = NOW();

-- MENAMPILKAN DATA DENGAN KONDISI TERTENTU
SELECT * FROM `siswa` WHERE jk = 'P';

-- Munculkan SELURUH DATA
SELECT * FROM `siswa`;

-- Menampilkan Beberapa Record=limit
SELECT * FROM `siswa` limit 3;

--mengurutkan data sesuai usia termuda / field tertentu
SELECT * FROM `siswa` ORDER BY tgl_lahir DESC;

-- menampilkan alamat yg di ubah menjadi uppercase
SELECT UPPER(alamat) FROM `siswa`;

-- menampilkan beberapa field dengan kondisi tertentu
SELECT nama_lengkap,tmp_lahir,tgl_lahir FROM `siswa` WHERE tgl_lahir = '2002';

-- menampilkan beberapa field dengan kondisi tahun kurang dari 2005 / dll ( <, >)

SELECT nama_lengkap,tmp_lahir,tgl_lahir FROM `siswa` WHERE tgl_lahir < '2005';

-- menampilkan filed yang berawalan dari suku kata 
SELECT * FROM siswa WHERE nama_lengkap LIKE 'A%';

-- Menampilkan data yang lahir tahun 2002
SELECT * FROM `siswa` WHERE YEAR(tgl_lahir) = 2002

--UPDATE TANGGAL LAHIR / yang lain
UPDATE `siswa` SET tgl_lahir = "2000-05-25" WHERE id_siswa = '2';

-- Delete Baris
DELETE FROM `siswa` WHERE id_siswa = id_siswa;

-- Insert  
 INSERT INTO `siswa` SET
