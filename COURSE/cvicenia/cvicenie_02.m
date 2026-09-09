%% CVICENIA 2: Vektory a matice
% SPSE Karola Adlera 5
%
% Ako pracovat s tymto suborom:
%   - Kazda sekcia zacina znakmi %%  -> v editore ju spustis cez "Run Section"
%   - Svoje riesenie pis pod komentar so zadanim
%   - Ak si nevies rady, pouzi help alebo doc, napr.:  help linspace
%   - Riesenia najdes v subore riesenia_cv_02.m (ale najprv skus sam!)

clc; clear;

%% A1) Vytvor vektor [2 4 6 8 10] tromi roznymi sposobmi:
% a) vypisanim hodnot, b) operatorom dvojbodky, c) funkciou linspace.
% Over funkciou isequal, ze su naozaj rovnake.



%% A2) Vytvor klesajucu postupnost od 20 do 0 s krokom 5.



%% A3) Vytvor postupnost: 6, 5, 4, 3, 2, 1, 0, -1



%% A4) Vytvor vektor 11 rovnomerne rozlozenych hodnot od 0 do 1.



%% A5) Vytvor stlpcovy vektor s hodnotami 1, 2, 3 dvoma sposobmi
% (priamo bodkociarkami a transpoziciou riadkoveho vektora).



%% A6) Vytvor maticu 3x3 s cislami 1 az 9 (po riadkoch).



%% A7) Vytvor: maticu nul 3x2, maticu samych sedmiciek 2x4, jednotkovu maticu 4x4.
% Pomoc: zeros, ones, eye



%% A8) Vytvor maticu 3x4 nahodnych celych cisel od 1 do 10.
% Pomoc: randi



%% B1) Pre maticu M = [1 2 3 4; 5 6 7 8; 9 10 11 12] zisti:
% rozmery (aj do dvoch premennych), length a numel.
M = [1 2 3 4; 5 6 7 8; 9 10 11 12];



%% B2) Z matice M vyber: prvok v 2. riadku a 3. stlpci, cely 3. stlpec,
% posledny riadok a posledny prvok prveho riadku (pouzi end).



%% B3) Pre vektor v = [10 20 30 40 50 60] vyber:
% prvky 2 az 4, prvy a posledny prvok, posledne dva prvky.
v = [10 20 30 40 50 60];



%% B4) V matici A = [1 2 3; 4 5 6; 7 8 9] vymen prvy a treti RIADOK.
A = [1 2 3; 4 5 6; 7 8 9];



%% B5) V tej istej matici vymen prvy a druhy STLPEC.



%% B6) Z matice A zmaz druhy riadok. Potom (z povodnej A) zmaz prvy a treti stlpec.
% Pomoc: priradenie prazdnej matice []



%% B7) Nahrad druhy riadok matice A tretim stlpcom matice B.
% B = [1 2 3; 7 8 9; 4 5 6]
% Pomoc: stlpec treba transponovat na riadok



%% C1) Pre vektor w = [3 7 2 1] vypocitaj: w krat 3, w deleno 2, w plus 10.
w = [3 7 2 1];



%% C2) Scitaj a odcitaj vektory u1 = [1 2 3 4] a u2 = [10 20 30 40].



%% C3) Pre matice X = [1 2; 3 4] a Y = [5 6; 7 8] vypocitaj X .* Y aj X * Y.
% Porovnaj vysledky a vysvetli rozdiel.
X = [1 2; 3 4];
Y = [5 6; 7 8];



%% C4) Pre maticu X vypocitaj X .^ 2 aj X ^ 2. V com je rozdiel?



%% C5) Transponuj maticu X.



%% C6) Pre maticu S = [1 2 3; 4 5 6] vypocitaj sucty po stlpcoch, po riadkoch
% a sucet uplne vsetkych prvkov.
% Pomoc: sum(S), sum(S,2), sum(S(:))
S = [1 2 3; 4 5 6];



%% C7) Pre vektor t = [4 8 15 16 23 42] zisti minimum, maximum, priemer
% a zorad ho zostupne.
% Pomoc: min, max, mean, sort(...,'descend')
t = [4 8 15 16 23 42];



%% D1) Z vektora c = [5 12 3 18 7 25] vyber len prvky vacsie ako 10.
c = [5 12 3 18 7 25];



%% D2) Zisti, kolko prvkov vektora z = [-3 5 -8 2 0 -1] je zapornych.
z = [-3 5 -8 2 0 -1];



%% D3) Zisti INDEXY zapornych prvkov vektora z a index nulového prvku.
% Pomoc: find



%% D4) Vo vektore h = [50 120 90 300 75] nahrad vsetky hodnoty vacsie
% ako 100 hodnotou 100.
h = [50 120 90 300 75];



%% D5) Pre vektor q = [2 4 6 8] zisti, ci su vsetky prvky kladne
% a ci je aspon jeden neparny.
% Pomoc: all, any, mod
q = [2 4 6 8];



%% D6) Vo vektore n = [1 NaN 3 NaN 5] zisti, kde su NaN hodnoty,
% kolko ich je, a nahrad ich nulou.
% Pomoc: isnan
n = [1 NaN 3 NaN 5];



%% E1) Vyries sustavu rovnic:
%   2*x1 + 5*x2 + 3*x3 = 1
%   4*x1 + 6*x2 + 2*x3 = 5
%   1*x1 - 5*x2 + 3*x3 = 3
% Pomoc: zapis maticu A a vektor b, potom pouzi A \ b



%% E2) Over spravnost riesenia - vynasob A krat x, ma vyjst povodne b.



%% E3) Vyries tu istu sustavu aj cez inv(A)*b a porovnaj oba vysledky.



%% F1) BONUS: Vytvor maticu 4x4 s cislami 1 az 16 (po riadkoch).
% Vyber jej hlavnu diagonalu a spocitaj jej sucet.
% Pomoc: reshape, diag, trace



%% F2) BONUS: Vytvor maticu 4x4, ktora vyzera ako sachovnica z nul a jednotiek.
% Pomoc: indexovanie s krokom, napr. 1:2:end


