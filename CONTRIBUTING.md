# Panduan Kontribusi

Terima kasih atas minat Anda untuk berkontribusi pada proyek KeuTrack! 

## Cara Berkontribusi

### 1. Melaporkan Bug
- Gunakan template issue yang disediakan
- Jelaskan langkah-langkah untuk mereproduksi bug
- Sertakan screenshot jika diperlukan
- Berikan informasi sistem operasi dan browser

### 2. Mengusulkan Fitur Baru
- Jelaskan fitur yang diusulkan dengan detail
- Berikan alasan mengapa fitur ini diperlukan
- Sertakan mockup atau wireframe jika memungkinkan
- Diskusikan dengan tim pengembang terlebih dahulu

### 3. Submit Pull Request
- Fork repository ini
- Buat branch baru untuk fitur Anda
- Commit perubahan dengan pesan yang jelas
- Pastikan semua test berjalan
- Submit pull request dengan deskripsi yang lengkap

## Standar Kode

### JavaScript
```javascript
// Gunakan ES6+ features
const example = () => {
  // Gunakan arrow functions
  return 'Hello World';
};

// Gunakan template literals
const message = `Hello ${name}`;

// Gunakan destructuring
const { title, content } = data;

// Gunakan async/await
const fetchData = async () => {
  try {
    const response = await fetch('/api/data');
    return await response.json();
  } catch (error) {
    console.error('Error:', error);
  }
};
```

### CSS
```css
/* Gunakan BEM methodology */
.block__element--modifier {
  /* properties */
}

/* Gunakan CSS custom properties */
:root {
  --primary-color: #2c3e50;
  --secondary-color: #64748b;
}

/* Responsive design */
@media (max-width: 768px) {
  /* mobile styles */
}
```

### HTML
```html
<!-- Gunakan semantic HTML -->
<main>
  <section>
    <article>
      <header>
        <h1>Judul</h1>
      </header>
      <p>Konten</p>
    </article>
  </section>
</main>

<!-- Gunakan ARIA labels -->
<button aria-label="Tutup modal">×</button>
```

## Struktur Proyek

```
Pencatatan-Sederhana/
├── Images/              # Gambar dan aset
├── netlify/             # Konfigurasi deployment
├── *.html              # Halaman aplikasi
├── style.css           # CSS tambahan
├── sw.js              # Service Worker
├── manifest.json      # PWA manifest
├── package.json       # Dependensi
├── README.md          # Dokumentasi
├── CHANGELOG.md       # Riwayat perubahan
├── LICENSE            # Lisensi
└── CONTRIBUTING.md    # Panduan ini
```

## Workflow Development

### 1. Setup Local Development
```bash
# Clone repository
git clone https://github.com/username/keutrack-pencatatan-sederhana.git

# Masuk ke direktori
cd keutrack-pencatatan-sederhana

# Install dependensi (jika ada)
npm install

# Jalankan development server
npm run dev
```

### 2. Membuat Branch
```bash
# Buat branch baru
git checkout -b feature/nama-fitur

# Atau untuk bug fix
git checkout -b fix/nama-bug
```

### 3. Commit Changes
```bash
# Tambahkan file yang diubah
git add .

# Commit dengan pesan yang jelas
git commit -m "feat: tambah fitur export PDF"

# Push ke remote
git push origin feature/nama-fitur
```

### 4. Pull Request
- Buka GitHub dan buat Pull Request
- Isi template yang disediakan
- Tunggu review dari maintainer
- Lakukan perubahan jika diminta

## Konvensi Penamaan

### Branch Names
- `feature/nama-fitur` - untuk fitur baru
- `fix/nama-bug` - untuk perbaikan bug
- `docs/update-readme` - untuk dokumentasi
- `refactor/restructure-code` - untuk refactoring

### Commit Messages
Gunakan format Conventional Commits:
- `feat:` - fitur baru
- `fix:` - perbaikan bug
- `docs:` - perubahan dokumentasi
- `style:` - perubahan format (tidak mempengaruhi kode)
- `refactor:` - refactoring kode
- `test:` - menambah atau memperbaiki test
- `chore:` - perubahan build process atau tools

### File Names
- Gunakan kebab-case untuk file HTML/CSS
- Gunakan camelCase untuk file JavaScript
- Gunakan PascalCase untuk komponen

## Testing

### Manual Testing
- Test di berbagai browser (Chrome, Firefox, Safari, Edge)
- Test di berbagai ukuran layar (mobile, tablet, desktop)
- Test fitur offline dengan service worker
- Test accessibility dengan screen reader

### Automated Testing
- Unit tests untuk fungsi JavaScript
- Integration tests untuk API
- E2E tests untuk user flows
- Performance tests untuk loading time

## Performance Guidelines

### Loading Speed
- Optimasi gambar (compress, WebP format)
- Minify CSS dan JavaScript
- Gunakan lazy loading untuk komponen besar
- Implementasi caching yang efisien

### Accessibility
- Gunakan semantic HTML
- Tambahkan ARIA labels
- Pastikan keyboard navigation berfungsi
- Test dengan screen reader

### Security
- Validasi input user
- Sanitasi data sebelum render
- Gunakan HTTPS untuk production
- Implementasi CSP headers

## Code Review Process

### Checklist untuk Reviewer
- [ ] Kode mengikuti standar yang ditetapkan
- [ ] Tidak ada security vulnerabilities
- [ ] Performance tidak terpengaruh negatif
- [ ] Accessibility requirements terpenuhi
- [ ] Documentation diupdate jika diperlukan
- [ ] Tests ditambahkan untuk fitur baru

### Checklist untuk Author
- [ ] Kode sudah di-test secara lokal
- [ ] Tidak ada console errors
- [ ] Responsive design berfungsi
- [ ] Accessibility requirements terpenuhi
- [ ] Documentation diupdate
- [ ] Changelog diupdate

## Getting Help

Jika Anda membutuhkan bantuan:
- Buka issue di GitHub
- Tanyakan di discussion forum
- Hubungi tim pengembang
- Cek dokumentasi yang tersedia

## Recognition

Kontributor akan diakui di:
- README.md file
- Release notes
- Contributors page
- Special mentions dalam dokumentasi

Terima kasih atas kontribusi Anda! 🎉
