# Avtobuslar Bazasini Boshqarish

Ushbu loyiha shahar avtobuslari, ularning marshrutlari va haydovchilar haqidagi ma’lumotlarni saqlash uchun SQLite bazasini yaratadi.

## Jadval tuzilmalari

- **marshrutlar**
  - `id` – birincil kalit
  - `raqam` – marshrut raqami (unikal)
  - `bosh_bekat` – boshlang‘ich bekat (unikal)
  - `oxirgi_bekat` – oxirgi bekat

- **avtobuslar**
  - `id` – birincil kalit
  - `raqam` – avtobus davlat raqami (unikal)
  - `marshrut_id` – marshrutga bog‘lanish (foreign key)
  - `yil` – ishlab chiqarilgan yili

- **haydovchilar**
  - `id` – birincil kalit
  - `ism` – haydovchi ismi
  - `familiya` – haydovchi familiyasi
  - `avtobus_id` – avtobusga bog‘lanish (foreign key)
  - `litsenziya` – haydovchi litsenziya raqami (unikal)

## Namunaviy ma’lumotlar

- Marshrutlar: 5, 12, 23, 67, 89
- Avtobuslar: `01A123BC`, `02B$56DE`, `03C789FG`, `04DO12HI`, `05E345JK`
- Haydovchilar: Otabek Karimov, Jamshid Toshev, Rustam Aliev, Sardor Yunusov, Aziz Valiev
