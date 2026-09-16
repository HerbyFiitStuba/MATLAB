# MATLAB — príkazy a klávesové skratky

Stredná priemyselná škola elektrotechnická, Karola Adlera 5

> Skratky platia pre **Windows**. Zmeniť si ich môžeš v *Home → Settings → MATLAB → Keyboard → Shortcuts*.

---

## Spúšťanie kódu

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `Enter` | Spustí **sekciu**, v ktorej je kurzor |
| `Ctrl` + `Shift` + `Enter` | Spustí sekciu a presunie sa na ďalšiu |
| `F9` | Spustí **označený** kód (aj časť riadku) |
| `F5` | Spustí **celý** súbor |
| `Ctrl` + `F5` | Pozastaví bežiaci súbor |
| `Shift` + `F5` | Ukončí beh |
| `Ctrl` + `C` | Preruší výpočet (v Command Window) |

**Pozor pri `F9`:** funguje len na označenom texte — MATLAB nemá skratku na spustenie riadku, na ktorom stojí kurzor. Trik: klikni do bieleho okraja vľavo od čísla riadku, tým sa označí celý riadok, a potom stlač `F9`.

---

## Sekcie

Sekcia je blok kódu, ktorý sa dá spustiť samostatne. Vytvoríš ju tak, že riadok začneš **dvoma percentami**:

```matlab
%% A1) Premenné
a = 12;
b = 5;

%% A2) Ďalšia úloha
c = 100;
```

Keď klikneš do sekcie, MATLAB ju v editore podfarbí a `Ctrl+Enter` spustí presne ten podfarbený blok.

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `Alt` + `Enter` | Vloží zlom sekcie |
| `Ctrl` + `↑` | Skočí na predchádzajúcu sekciu |
| `Ctrl` + `↓` | Skočí na nasledujúcu sekciu |

---

## Písanie a úprava kódu

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `R` | Zakomentuje označené riadky |
| `Ctrl` + `Shift` + `R` | Odkomentuje označené riadky |
| `Ctrl` + `I` | Zarovná odsadenie (smart indent) |
| `Ctrl` + `]` / `Ctrl` + `[` | Zväčší / zmenší odsadenie |
| `Ctrl` + `L` | Skopíruje riadok |
| `Ctrl` + `Shift` + `C` | Zduplikuje riadok |
| `Ctrl` + `Shift` + `A` | Zmení veľkosť písmen v označení |
| `Ctrl` + `J` | Zalomí dlhý komentár |
| `Ctrl` + `Z` / `Ctrl` + `Y` | Späť / znova |
| `Tab` | Dopĺňanie názvov funkcií a premenných |

---

## Navigácia a hľadanie

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `F` | Nájsť |
| `F3` / `Shift` + `F3` | Nájsť ďalší / predchádzajúci |
| `Ctrl` + `H` | Nájsť a nahradiť |
| `Ctrl` + `G` | Skočiť na riadok |
| `Ctrl` + `F2` | Vloží / zruší záložku |
| `F2` / `Shift` + `F2` | Ďalšia / predchádzajúca záložka |
| `Alt` + `←` / `Alt` + `→` | Späť / vpred v histórii pohybu |
| `Alt` + `↑` / `Alt` + `↓` | Predchádzajúci / ďalší výskyt premennej |
| `↑` / `↓` | História príkazov (v Command Window) |

---

## Ladenie (debugging)

| Skratka | Čo urobí |
|---|---|
| `F12` | Vloží / zruší breakpoint na riadku |
| `F10` | Krok (vykoná riadok) |
| `F11` | Krok dovnútra funkcie |
| `Shift` + `F11` | Krok von z funkcie |
| `F5` | Pokračuj po zastavení |

---

## Súbory a okná

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `N` | Nový skript |
| `Ctrl` + `O` | Otvoriť súbor |
| `Ctrl` + `S` | Uložiť |
| `Ctrl` + `W` | Zavrieť súbor |
| `Ctrl` + `Shift` + `T` | Znova otvoriť naposledy zavretý súbor |
| `Ctrl` + `Shift` + `M` | Maximalizovať editor |
| `Ctrl` + `F11` | Celá obrazovka |
| `Ctrl` + `+` / `Ctrl` + `-` | Priblížiť / oddialiť |

---

## Skladanie kódu (code folding)

| Skratka | Čo urobí |
|---|---|
| `Ctrl` + `.` | Zbalí aktuálny blok |
| `Ctrl` + `Shift` + `.` | Rozbalí aktuálny blok |
| `Ctrl` + `,` | Zbalí všetko |
| `Ctrl` + `Shift` + `,` | Rozbalí všetko |

---

## Základné príkazy prostredia

| Príkaz | Čo urobí |
|---|---|
| `clc` | Vyčistí príkazové okno |
| `clear` | Zmaže všetky premenné z pamäte |
| `clear x y` | Zmaže konkrétne premenné |
| `close all` | Zavrie všetky okná s grafmi |
| `who` | Vypíše mená premenných |
| `whos` | Vypíše premenné aj s typom a veľkosťou v pamäti |
| `class(x)` | Zistí typ (triedu) premennej |
| `help funkcia` | Stručná nápoveda k funkcii |
| `doc funkcia` | Podrobná dokumentácia s príkladmi |
| `lookfor slovo` | Hľadá v nápovede podľa slova |
| `save subor` | Uloží premenné do súboru `.mat` |
| `save subor x y` | Uloží len vybrané premenné |
| `load subor` | Načíta premenné späť |
| `pwd` | Vypíše aktuálny priečinok |
| `cd cesta` | Zmení aktuálny priečinok |
| `ls` | Vypíše obsah priečinka |
| `format long` / `format short` | Prepne počet zobrazených desatinných miest |
| `tic` … `toc` | Zmeria, ako dlho výpočet trval |
| `ver` | Zoznam nainštalovaných toolboxov |
| `quit` alebo `exit` | Ukončí MATLAB |

---

## Drobnosti, ktoré ušetria čas

- **Bodkočiarka `;`** na konci riadku potlačí výpis výsledku — výpočet sa aj tak vykoná.
- **Tri bodky `...`** rozdelia dlhý príkaz na viac riadkov.
- **`ans`** je premenná, kam sa uloží výsledok, ktorý si nikam nepriradil. Prepíše sa pri každom ďalšom takom výraze, takže sa na ňu nespoliehaj.
- **Šípka hore** v Command Window vyvolá predchádzajúci príkaz — netreba prepisovať dlhé výrazy.
- Napíš začiatok názvu funkcie a stlač **`Tab`** — MATLAB ho doplní alebo ponúkne možnosti.
