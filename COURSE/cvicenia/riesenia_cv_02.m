%% RIESENIA - Cvicenia 2: Vektory a matice
% SPSE Karola Adlera 5
% Spustis cely subor tlacidlom Run, alebo jednotlivu sekciu cez Run Section.

clc; clear;

%% A1) Tri sposoby, ako vytvorit ten isty vektor
v1 = [2 4 6 8 10]
v2 = 2:2:10
v3 = linspace(2,10,5)
isequal(v1,v2,v3)      % overenie, ze su rovnake

%% A2) Klesajuca postupnost
k = 20:-5:0

%% A3) Postupnost zo skolskych materialov
p = 6:-1:-1

%% A4) linspace s 11 hodnotami
d = linspace(0,1,11)

%% A5) Stlpcovy vektor
s1 = [1; 2; 3]
s2 = transpose(1:3)  % transpoziciou riadkoveho vektora (to iste ako (1:3)')

%% A6) Matica 3x3 s cislami 1 az 9
A = [1 2 3; 4 5 6; 7 8 9]

%% A7) Specialne matice
zeros(3,2)
ones(2,4) * 7        % matica samych sedmiciek
eye(4)

%% A8) Nahodne cele cisla
R = randi(10, 3, 4)  % 3x4, hodnoty 1 az 10 (vysledok bude zakazdym iny)

%% B1) Rozmery
M = [1 2 3 4; 5 6 7 8; 9 10 11 12];
size(M)
[riadky, stlpce] = size(M)
length(M)            % najvacsi rozmer = 4
numel(M)             % celkovy pocet prvkov = 12

%% B2) Vyber prvkov
M(2,3)               % 2. riadok, 3. stlpec
M(:,3)               % cely 3. stlpec
M(end,:)             % posledny riadok
M(1,end)             % posledny prvok prveho riadku

%% B3) Vyber rozsahu a vektor indexov
v = [10 20 30 40 50 60];
v(2:4)
v([1 6])             % prvy a posledny
v(end-1:end)         % posledne dva

%% B4) Vymena riadkov (zo skolskych materialov)
A = [1 2 3; 4 5 6; 7 8 9];
A([1 3],:) = A([3 1],:)

%% B5) Vymena stlpcov
A = [1 2 3; 4 5 6; 7 8 9];
A(:,[1 2]) = A(:,[2 1])

%% B6) Mazanie riadku a stlpcov
A = [1 2 3; 4 5 6; 7 8 9];
A(2,:) = []          % zmazeme druhy riadok

A = [1 2 3; 4 5 6; 7 8 9];
A(:,[1 3]) = []      % zmazeme prvy a treti stlpec

%% B7) Nahradenie riadku stlpcom inej matice (zo skolskych materialov)
A = [1 2 3; 4 5 6; 7 8 9];
B = [1 2 3; 7 8 9; 4 5 6];
A(2,:) = transpose(B(:,3))   % treti stlpec B transponujeme na riadok

%% C1) Skalarne operacie
w = [3 7 2 1];
w * 3
w / 2
w + 10               % pripocita 10 ku kazdemu prvku

%% C2) Prvkove scitanie a odcitanie
u1 = [1 2 3 4];
u2 = [10 20 30 40];
u1 + u2
u2 - u1

%% C3) Prvkove vs. maticove nasobenie
X = [1 2; 3 4];
Y = [5 6; 7 8];
X .* Y               % prvok po prvku
X * Y                % maticove nasobenie - uplne iny vysledok!

%% C4) Mocnina prvkova vs. maticova
X .^ 2               % kazdy prvok na druhu
X ^ 2                % X * X (matica musi byt stvorcova)

%% C5) Transpozicia
X

%% C6) Sucty
S = [1 2 3; 4 5 6];
sum(S)               % sucty po stlpcoch
sum(S,2)             % sucty po riadkoch
sum(S(:))            % sucet uplne vsetkych prvkov

%% C7) Statistika vektora
t = [4 8 15 16 23 42];
min(t)
max(t)
mean(t)
sort(t,'descend')

%% D1) Vyber prvkov podla podmienky
c = [5 12 3 18 7 25];
c(c > 10)

%% D2) Kolko prvkov splna podmienku
z = [-3 5 -8 2 0 -1];
sum(z < 0)           % pocet zapornych

%% D3) Indexy prvkov (find)
find(z < 0)          % na ktorych poziciach su zaporne
find(z == 0)

%% D4) Nahradenie hodnot podla podmienky
h = [50 120 90 300 75];
h(h > 100) = 100
% vsetky hodnoty nad 100 sme "orezali" na 100

%% D5) any a all
q = [2 4 6 8];
all(q > 0)           % su vsetky kladne?
any(mod(q,2) == 1)   % je aspon jedno neparne?

%% D6) Praca s NaN (zo skolskych materialov)
n = [1 NaN 3 NaN 5];
isnan(n)             % kde su NaN hodnoty
sum(isnan(n))        % kolko ich je
n(isnan(n)) = 0      % nahradime ich nulou

%% E1) Sustava rovnic
As = [2 5 3; 4 6 2; 1 -5 3];
bs = [1; 5; 3];
x = As \ bs

%% E2) Overenie vysledku
As * x               % malo by vyjst povodne b = [1; 5; 3]

%% E3) Porovnanie s inv
x2 = inv(As) * bs
max(abs(x - x2))     % rozdiel je zanedbatelny, ale A\b je presnejsie a rychlejsie

%% F1) BONUS: matica 4x4 a jej diagonala
D = transpose(reshape(1:16, 4, 4))   % transpozicia, lebo reshape plni po stlpcoch
diag(D)              % hlavna diagonala
trace(D)             % sucet diagonaly

%% F2) BONUS: vytvorenie sachovnice 0/1
sachovnica = zeros(4);
sachovnica(1:2:end, 1:2:end) = 1;
sachovnica(2:2:end, 2:2:end) = 1;
sachovnica
