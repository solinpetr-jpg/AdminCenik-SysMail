# Emailing Admin

Šablony cenových nabídek (pricing-offer-v1, v2, v3) a base template.

## Osobní Git + osobní Vercel

Používej **svůj osobní GitHub** a **svůj osobní Vercel účet** (ne firemní), aby byl projekt jen u tebe.

---

### 1. Osobní Git (GitHub)

Projekt je na tvém osobním GitHubu: **solinpetr-jpg/AdminCenik-SysMail**.

- **main** – hlavní větev (production)
- **develop** – vývojová větev (preview)

Další změny: `git add .` → `git commit -m "..."` → `git push origin main` (nebo `develop`).

---

### 2. Deploy na tvůj osobní Vercel (včetně větví)

**Repo:** [github.com/solinpetr-jpg/AdminCenik-SysMail](https://github.com/solinpetr-jpg/AdminCenik-SysMail)

**Větve:**
- **`main`** – production (hlavní nasazení)
- **`develop`** – vývojová větev (preview nasazení na Vercelu)

**Důležité:** Nasazení jde vždy na účet přihlášený ve Vercel. Přihlas se **osobním** účtem.

1. **Přes Vercel dashboard (doporučeno):**  
   Na [vercel.com](https://vercel.com) se přihlas **osobním** účtem → **Add New… → Project** → **Import** repozitáře **solinpetr-jpg/AdminCenik-SysMail** z GitHubu.  
   - **Production Branch** nech `main` (nebo nastav dle potřeby).  
   - Každý push do `main` = production deploy.  
   - Každý push do `develop` (nebo jiné větve) = preview deploy na vlastní URL.

2. **Přes CLI:**
   ```bash
   cd "/Users/petr/Documents/Coweo/Localhost/Emailing Admin"
   npx vercel login
   npx vercel --prod
   ```
   Když Vercel nabídne tým/scope, zvol **svůj osobní účet**.

**URL po nasazení:**
- Production (z `main`): `https://admin-cenik-sys-mail.vercel.app/pricing-offer-v3.html` (název se může lišit)
- Preview (z `develop`): např. `https://admin-cenik-sys-mail-xxx.vercel.app/...` (Vercel přiřadí automaticky)

## Jak spustit lokálně

1. **Otevřít v prohlížeči:**  
   Dvojklik na `index.html` nebo `pricing-offer-v3.html`.

2. **Lokální server:**
   ```bash
   npx -y serve .
   ```
   Pak např. http://localhost:3000/pricing-offer-v3.html

## Struktura

- `pricing-offer-v3.html` – cenová nabídka varianta 3 (hlavní)
- `pricing-offer-v1.html`, `pricing-offer-v2.html` – další varianty
- `base-template.html` – základní šablona
- `index.html` – vstupní stránka
- `vercel.json` – konfigurace pro Vercel
