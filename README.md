# KeuTrack - Sistem Akuntansi Sederhana

KeuTrack adalah aplikasi web untuk mengelola keuangan dan akuntansi sederhana dengan fitur CRUD lengkap menggunakan backend API dan database SQLite.

## Fitur Utama

- **Manajemen Akun**: Tambah, edit, hapus akun dengan kode dan kategori
- **Transaksi Keuangan**: Pencatatan transaksi debit-kredit dengan validasi
- **Laporan Keuangan**: Laporan laba rugi dan neraca otomatis
- **Dashboard**: Visualisasi data keuangan dengan grafik
- **Siklus Akuntansi**: Jurnal umum, buku besar, dan neraca saldo
- **Export Data**: Export ke Excel dan PDF
- **Responsive Design**: Kompatibel dengan desktop dan mobile

## Teknologi yang Digunakan

### Frontend
- HTML5, CSS3, JavaScript (ES6+)
- Tailwind CSS untuk styling
- Chart.js untuk grafik
- Material Icons

### Backend
- Node.js dengan Express.js
- SQLite database
- RESTful API dengan endpoint CRUD lengkap
- CORS support untuk cross-origin requests

## Cara Menjalankan Project

### 1. Install Dependencies Backend

```bash
cd backend
npm install
```

### 2. Jalankan Backend Server

```bash
cd backend
npm start
```

Backend akan berjalan di `http://localhost:3001`

### 3. Akses Website

**Cara 1: Melalui Backend Server (Direkomendasikan)**
- Buka browser dan akses: `http://localhost:3001`
- Website akan otomatis redirect ke dashboard
- Semua file HTML dapat diakses melalui port 3001

**Cara 2: Buka file HTML langsung**
- Buka file `index.html` atau `dashboard.html` langsung di browser (double-click)
- Atau drag file HTML ke browser

**Cara 3: Menggunakan Python HTTP Server**
```bash
# Di terminal baru, di folder project root
python -m http.server 8080
# Kemudian buka http://localhost:8080 di browser
```

## Struktur API

### Endpoints Utama

#### Users
- `POST /api/users/login` - Login user
- `POST /api/users/register` - Registrasi user baru

#### Accounts
- `GET /api/accounts` - Ambil semua akun
- `POST /api/accounts` - Buat akun baru
- `PUT /api/accounts/:id` - Update akun
- `DELETE /api/accounts/:id` - Hapus akun

#### Transactions
- `GET /api/transactions` - Ambil semua transaksi
- `POST /api/transactions` - Buat transaksi baru
- `PUT /api/transactions/:id` - Update transaksi
- `DELETE /api/transactions/:id` - Hapus transaksi

#### Reports
- `GET /api/reports/income-statement` - Laporan laba rugi
- `GET /api/reports/balance-sheet` - Laporan neraca

### Database Schema

#### Users
- id, username, email, password_hash, created_at

#### Accounts
- id, user_id, name, code, balance, category, created_at

#### Transactions
- id, user_id, debit_account_id, credit_account_id, amount, description, transaction_date, created_at

## Fitur Keamanan

- Validasi input di frontend dan backend
- Error handling yang komprehensif
- CORS protection
- SQL injection protection dengan parameterized queries

## Struktur File

```
KeuTrack_Fix-1/
├── backend/                 # Backend API
│   ├── server.js           # Express server
│   ├── db.js              # Database setup
│   ├── package.json       # Dependencies
│   └── keutrack.db        # SQLite database
├── js/
│   └── api.js             # API client
├── Images/                 # Assets
├── *.html                  # Halaman frontend
├── style.css              # Styling tambahan
└── README.md              # Dokumentasi
```

## Penggunaan

1. **Login/Register**: Buat akun atau login dengan akun yang ada
2. **Setup Akun**: Tambahkan akun-akun sesuai kebutuhan (Kas, Bank, Pendapatan, Beban, dll)
3. **Input Transaksi**: Catat setiap transaksi keuangan dengan akun debit dan kredit
4. **Lihat Laporan**: Dashboard dan laporan akan otomatis terupdate
5. **Export Data**: Download laporan dalam format Excel atau PDF

## Troubleshooting

### Backend tidak bisa dijalankan
- Pastikan Node.js sudah terinstall
- Cek apakah port 3001 sudah digunakan
- Jalankan `npm install` di folder backend

### API tidak bisa diakses
- Pastikan backend server sudah running di port 3001
- Cek console browser untuk error CORS
- Pastikan URL API di `js/api.js` sudah benar (http://localhost:3001/api)

### Database error
- Hapus file `keutrack.db` dan restart server
- Database akan otomatis dibuat ulang dengan struktur yang benar

## Kontribusi

Silakan buat pull request atau issue untuk bug report dan feature request.

## License

Project ini menggunakan MIT License.
