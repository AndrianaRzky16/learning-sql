# Tata Cara Penggunaan MySQL di Terminal

## 1. Login ke MySQL Server

Buka terminal dan ketik perintah berikut, kemudian tekan Enter. Anda akan diminta untuk memasukkan kata sandi:

```bash
mysql -u username -p
Gantilah "username" dengan nama pengguna MySQL Anda.

2. Membuat Database Baru
Setelah masuk, Anda dapat membuat database baru dengan perintah berikut:

sql
CREATE DATABASE nama_database;
Gantilah "nama_database" dengan nama yang Anda inginkan.

3. Pilih Database yang Akan Digunakan
Pilih database yang baru dibuat atau yang sudah ada dengan perintah:

sql
USE nama_database;
4. Membuat Tabel
Buat tabel di dalam database dengan menentukan kolom-kolomnya:

sql
CREATE TABLE nama_tabel (
  kolom1 TIP_DATA,
  kolom2 TIP_DATA,
  // ...
);
Gantilah "nama_tabel" dan tentukan kolom-kolom sesuai kebutuhan.

5. Menjalankan Query SQL
Jalankan query SQL untuk menyisipkan, mengambil, memperbarui, atau menghapus data dari tabel. Contoh:

sql
INSERT INTO nama_tabel (kolom1, kolom2) VALUES ('nilai1', 'nilai2');
6. Melihat Data dalam Tabel
Tampilkan data dalam tabel dengan perintah SELECT:

sql
SELECT * FROM nama_tabel;
Ini akan menampilkan semua data dalam tabel.

7. Keluar dari MySQL
Keluar dari sesi MySQL dengan perintah:
sql

EXIT;
Atau cukup ketik exit atau quit.

Langkah-langkah Tambahan
Menampilkan Struktur Tabel
Untuk melihat struktur kolom dalam sebuah tabel, gunakan perintah DESC:
sql

DESC nama_tabel;
Memperbarui Data dalam Tabel
Untuk memperbarui data yang sudah ada dalam tabel, gunakan perintah UPDATE:

sql
UPDATE nama_tabel SET kolom1 = 'nilai_baru' WHERE kondisi;

Menghapus Data dari Tabel
Hapus data dari tabel dengan perintah DELETE:
sql

DELETE FROM nama_tabel WHERE kondisi;

Menambahkan Indeks
Untuk meningkatkan kinerja pencarian, Anda dapat menambahkan indeks pada satu atau beberapa kolom dalam tabel:
sql

CREATE INDEX nama_index ON nama_tabel (kolom);

Melihat Daftar Tabel
Tampilkan daftar tabel yang ada dalam database dengan perintah SHOW TABLES:
sql

SHOW TABLES;

Export dan Import Data
Untuk membuat cadangan (export) atau mengimpor (import) data, Anda dapat menggunakan perintah mysqldump dan mysql pada terminal.

Export:
bash
mysqldump -u username -p nama_database > nama_file.sql

Import:
bash
mysql -u username -p nama_database < nama_file.sql
Gantilah "nama_file" dengan nama file yang diinginkan.

Menambahkan Pengguna MySQL
Jika Anda ingin membuat pengguna baru dengan hak akses tertentu, gunakan perintah CREATE USER dan GRANT:
sql

CREATE USER 'nama_pengguna'@'localhost' IDENTIFIED BY 'kata_sandi';
GRANT ALL PRIVILEGES ON nama_database.* TO 'nama_pengguna'@'localhost';
FLUSH PRIVILEGES;
Gantilah "nama_pengguna" dan "kata_sandi" dengan informasi yang diinginkan.


# sql Tutor Mas Harry

-- Active: 1705656597221@@127.0.0.1@3306@simple_campus
CREATE TABLE Students(  
    StudentID INT PRIMARY KEY NOT NULL,
    StudentName VARCHAR(50) not null
) COMMENT '';

DROP Table table_name;

CREATE TABLE Courses (
    CourseID CHAR(4) PRIMARY KEY NOT NULL,
    CourseName VARCHAR(50) NOT NULL
);

CREATE Table Enrollments(
    EnrollmentID CHAR(4) PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL,
    CourseID CHAR(4) NOT NULL,
    Foreign Key (StudentID) REFERENCES Students (StudentID),
    Foreign Key (CourseID) REFERENCES Courses (CourseID)
);

INSERT INTO students (StudentID, StudentName) VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'Valencia');

SELECT * FROM students;

INSERT INTO
	Courses (CourseID, CourseName)
VALUES
	('C103', 'Math'),
	('C102', 'Science'),
	('C104', 'Literature'),
	('C105', 'Geography');
SELECT * FROM courses;
