%% RIESENIA - Cvicenia 1: Uvod do MATLABu a datove typy
% SPSE Karola Adlera 5
% Spustis cely subor tlacidlom Run, alebo jednotlivu sekciu cez Run Section.

clc; clear;

%% A1) Premenne a zakladne operacie
a = 12;
b = 5;
sucet   = a + b
rozdiel = a - b
sucin   = a * b
podiel  = a / b

%% A2) Potlacenie vypisu bodkociarkou
c = 100;      % bodkociarka potlaci vypis
c             % samotne meno premennej ju vypise

%% A3) Premenna ans
7 * 6         % vysledok sa ulozi do premennej ans
ans + 1       % s ans sa da dalej pocitat

%% A4) Obsah kruhu
r = 3;
obsah = pi * r^2

%% A5) Postupne prepisovanie premennej
x = 5;
x = x + 3;    % x je teraz 8
x = x * 2     % x je teraz 16

%% B1) Zistovanie typu
class(5)
class(5.5)
class('a')
class("ahoj")
class(true)
class(int8(5))
% Vsimni si: 5 aj 5.5 su double - MATLAB nerozlisuje cele a desatinne cislo

%% B2) Rozsah typu int16
intmin('int16')
intmax('int16')
% int16 pouziva 16 bitov: rozsah je -32768 az 32767

%% B3) Saturacia
int8(150)     % nezmesti sa (max 127) -> oreze sa na 127
uint8(-3)     % zaporne cislo sa nezmesti -> oreze sa na 0

%% B4) Kolko pamate zaberaju typy
p1 = 5;
p2 = int8(5);
p3 = true;
whos p1 p2 p3
% double = 8 bajtov, int8 = 1 bajt, logical = 1 bajt

%% B5) Znaky a ich cisla
double('M')
char(77)
double('z')

%% B6) Posun slova v kodovani
char('abc' + 3)

%% B7) Porovnanie velkych a malych pismen
'A' < 'a'
double('A')
double('a')
% 'A' ma hodnotu 65, 'a' ma 97 - velke pismena su v kodovani skor

%% C1) Format vypisu
format long
22/7
format short
22/7
% format meni len ZOBRAZENIE, ulozena hodnota je stale rovnaka

%% C2) Dlhy vyraz na viac riadkov
sucet_dlhy = 1 + 2 + 3 + 4 + ...
             5 + 6 + 7 + 8

%% C3) Zaokruhlovanie zaporneho cisla
round(-3.6)   % na najblizsie cele  -> -4
floor(-3.6)   % vzdy nadol          -> -4
ceil(-3.6)    % vzdy nahor          -> -3
fix(-3.6)     % smerom k nule       -> -3

%% C4) Zvysok po deleni
rem(100,7)
mod(100,7)
% pre kladne cisla daju rem aj mod rovnaky vysledok
rem(-7,3)
mod(-7,3)
% pri zapornych cislach sa uz lisia

%% C5) Odmocniny a logaritmy
nthroot(32,5)
log10(1000)
exp(2)
sqrt(144)

%% C6) Stupne na radiany
deg2rad(90)
% kontrola: malo by to byt pi/2
pi/2

%% D1) Relacne operatory
7 > 3
7 == 7.0
'b' > 'a'

%% D2) Typ vysledku porovnania
vysledok = 7 > 3;
class(vysledok)
% vysledkom porovnania je typ logical, nie double

%% D3) Cislo v intervale
x = 15;
x >= 10 && x <= 20     % spravne
% POZOR: zapis 10 <= x <= 20 by bol VZDY pravdivy - nerobit!

%% D4) Zaokruhlovacia chyba
0.1 + 0.2 == 0.3       % da 0 (nepravda)!
0.1 + 0.2 - 0.3        % nie je presna nula
abs((0.1+0.2) - 0.3) < 1e-10    % takto sa desatinne cisla porovnavaju spravne

%% D5) Logicke operatory
xor(true, false)
xor(true, true)
~(3 > 5)
(3 < 5) && (2 > 1)

%% E1) Ukladanie premennych do MAT-suboru
prem1 = 10;
prem2 = [1 2 3];
prem3 = 'test';
save mojedata prem1 prem2 prem3
clear prem1 prem2 prem3
who                    % premenne uz neexistuju
load mojedata
who                    % a su spat
delete mojedata.mat    % upraceme po sebe
