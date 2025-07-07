# 🐳 CloudPanel Docker (Xfce + noVNC Web Desktop)

CloudPanel adalah image Docker ringan yang menyediakan **antarmuka desktop berbasis Xfce** langsung dari **web browser** melalui noVNC. Sangat cocok digunakan di platform cloud seperti Railway, Replit, atau Phalacloud yang tidak mengizinkan akses desktop langsung.

---

## ✨ Fitur Unggulan

- ✅ Akses desktop langsung dari browser
- ✅ Tanpa login/password (langsung masuk)
- ✅ Ringan dan stabil (tanpa systemd)
- ✅ Cocok untuk cloud yang blokir "VNC" atau "X desktop"
- ✅ Dapat dibangun ulang dari Dockerfile

---

## 🚀 Cara Menjalankan

### 🔹 Opsi 1: Jalankan dengan Docker CLI

```bash
docker run -it -p 8080:6901 sebastiansemua/cloudpanel:v1
