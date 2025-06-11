# flutter_superbase_2025

## Projekt áttekintés

Ez a projekt egy egyszerű, Flutter alapú mobilalkalmazás, amely a **Supabase** szolgáltatást használja felhasználói regisztrációhoz, bejelentkezéshez, kijelentkezéshez és profilkezeléshez.

## Miért hoztam létre ezt a projektet?

A célom az volt, hogy:
- Megtanuljam és bemutassam, hogyan lehet a Supabase-t Flutterrel összekötni hitelesítéshez.
- Egy tiszta példát adjak email/jelszó alapú regisztrációs és bejelentkezési folyamatra.
- Megmutassam, hogyan lehet biztonságosan kezelni a felhasználói állapotot egy Flutter alkalmazásban.

## Fő funkciók

- **Regisztráció:**  
  A felhasználók email-címmel és jelszóval regisztrálhatnak.  
  A jelszónak meg kell felelnie a Supabase által elvárt erősségi követelményeknek, és email megerősítés szükséges.

- **Bejelentkezés:**  
  A regisztrált felhasználók bejelentkezhetnek a fiókjukkal.

- **Kijelentkezés:**  
  A felhasználók biztonságosan kijelentkezhetnek a profil oldalon.

- **Profil oldal:**  
  Megjeleníti a bejelentkezett felhasználó adatait.

- **Supabase integráció:**  
  A hitelesítés és felhasználókezelés a Supabase-en keresztül történik.

## Technológiai háttér

- **Nyelv:** Dart  
- **Keret:** Flutter  
- **Backend:** Supabase (csak auth)
- **Állapotkezelés:** setState (beépített Flutter)
- **Környezeti változók:** flutter_dotenv

## Használat

1. Klónozd a repót.
2. Hozz létre egy `.env` fájlt a projekt gyökerében az alábbi tartalommal:
    ```
    SUPABASE_URL=ide_írd_a_supabase_url-t
    SUPABASE_ANON_KEY=ide_írd_a_supabase_anon_key-t
    ```
3. Futtasd: `flutter pub get`
4. Indítsd el az appot emulátoron vagy eszközön: `flutter run`

## Megjegyzések

- A Supabase anon kulcs és URL frontend appban biztonságosan használható.
- Győződj meg róla, hogy a Supabase projektedben engedélyezve van az email/jelszó alapú hitelesítés.
- Alapértelmezetten email megerősítés szükséges a regisztráció után.

---

**A projekt tanulási és bemutató céllal készült.**
