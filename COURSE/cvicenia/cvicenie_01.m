%% CVICENIA 1: Uvod do MATLABu a datove typy
% SPSE Karola Adlera 5
%
% Ako pracovat s tymto suborom:
%   - Kazda sekcia zacina znakmi %%  -> v editore ju spustis cez "Run Section"
%   - Svoje riesenie pis pod komentar so zadanim
%   - Ak si nevies rady, pouzi help alebo doc, napr.:  help class
%   - Riesenia najdes v subore riesenia_cv_01.m (ale najprv skus sam!)

clc; clear;

%% A1) Vytvor premenne a = 12 a b = 5.
% Vypocitaj a vypis ich sucet, rozdiel, sucin a podiel.



%% A2) Vytvor premennu c s hodnotou 100 tak, aby sa jej hodnota NEVYPISALA.
% Potom ju vypis tak, ze napises len jej meno.



%% A3) Napis vyraz 7 * 6 bez priradenia do premennej.
% Do akej premennej sa vysledok ulozil? Pripocitaj k nej 1.



%% A4) Vypocitaj obsah kruhu s polomerom 3.
% Pomoc: obsah = pi * r^2



%% A5) Postupne vykonaj: x = 5, potom x = x + 3, potom x = x * 2.
% Skus najprv odhadnut vysledok a az potom to spusti.



%% B1) Zisti typ (triedu) tychto hodnot: 5, 5.5, 'a', "ahoj", true, int8(5).
% Pomoc: funkcia class



%% B2) Zisti najmensie a najvacsie cislo, ktore sa zmesti do typu int16.
% Pomoc: intmin, intmax



%% B3) Co vrati int8(150)? A co uint8(-3)? Vysvetli preco.



%% B4) Vytvor tri premenne typu double, int8 a logical.
% Zisti, kolko bajtov kazda zabera. Pomoc: whos



%% B5) Zisti cislo znaku 'M' v kodovani a naopak znak s cislom 77.
% Este zisti cislo znaku 'z'.



%% B6) Posun pismena slova 'abc' o 3 miesta v kodovani (ma vyjst 'def').



%% B7) Je vyraz 'A' < 'a' pravdivy? Zisti cisla oboch znakov a vysvetli preco.



%% C1) Zobraz podiel 22/7 najprv s 15 desatinnymi miestami a potom so 4.
% Pomoc: format long / format short



%% C2) Vypocitaj sucet cisel 1 az 8 tak, ze vyraz rozdelis na dva riadky.
% Pomoc: tri bodky ...



%% C3) Zaokruhli cislo -3.6 styrmi sposobmi: round, floor, ceil, fix.
% Porovnaj vysledky - v com sa lisia?



%% C4) Vypocitaj zvysok po deleni 100 siedmimi (rem aj mod).
% Potom vyskusaj rem(-7,3) a mod(-7,3). Preco su vysledky rozdielne?



%% C5) Vypocitaj: 5. odmocninu z 32, log10(1000), exp(2) a sqrt(144).
% Pomoc: nthroot



%% C6) Preved 90 stupnov na radiany a over, ze vysledok je pi/2.



%% D1) Otestuj vyrazy: 7 > 3, 7 == 7.0, 'b' > 'a'.



%% D2) Uloz vysledok porovnania 7 > 3 do premennej a zisti jej typ.



%% D3) Napis vyraz, ktory je pravdivy prave vtedy, ked x lezi v intervale <10, 20>.
% Vyskusaj pre x = 15 aj x = 25.
% POZOR: zapis 10 <= x <= 20 je chyba! Preco?



%% D4) Otestuj, ci plati 0.1 + 0.2 == 0.3.
% Prekvapil ta vysledok? Vypocitaj 0.1 + 0.2 - 0.3.
% Ako by si tieto dve cisla porovnal spravne?



%% D5) Vyskusaj logicke operatory: xor(true,false), xor(true,true), ~(3 > 5).



%% E1) Vytvor tri lubovolne premenne a uloz ich do suboru mojedata.
% Potom ich vymaz z pamate, over cez who, ze tam nie su, a nacitaj ich spat.
% Pomoc: save, clear, who, load


