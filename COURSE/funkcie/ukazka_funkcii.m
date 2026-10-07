%% UKAZKA FUNKCII - demo skript pre vyucbu
% SPSE Karola Adlera 5
%
% Tento skript postupne predvedie vsetky funkcie z tohto priecinka.
% Spustaj po sekciach cez Ctrl+Enter, nie naraz - inak vsetko prebehne
% prilis rychlo a studenti nestihnu sledovat.
%
% DOLEZITE: aktualny priecinok (Current Folder) musi byt tento priecinok,
% inak MATLAB funkcie nenajde. Viac v subore README.md

clc; clear;

%% 1) Najjednoduchsia funkcia - jeden vstup, jeden vystup
obsahKruhu(3)

% vysledok si mozeme ulozit do premennej
S = obsahKruhu(2)

% a funguje aj na cely vektor naraz
obsahKruhu([1 2 3])

%% 2) Kazda funkcia ma nápovedu - staci napisat help
help obsahKruhu

%% 3) Funkcia s viacerymi vystupmi
[priemer, minimum, maximum] = statistiky([4 8 15 16 23 42])

% ak nas zaujima len prvy vystup:
p = statistiky([1 2 3])

%% 4) Funkcia, ktora vracia true/false
jeParne(10)
jeParne(7)

% da sa rovno pouzit v podmienke:
if jeParne(8)
    disp('Osem je parne cislo')
end

%% 5) Funkcia s vetvenim - znamka z bodov
znamkaZBodov(95)
znamkaZBodov(83)
znamkaZBodov(30)

% pre viac hodnot naraz pouzijeme cyklus
for b = [95 83 70 50 20]
    fprintf('%3d bodov -> znamka %d\n', b, znamkaZBodov(b));
end

%% 6) Funkcia s cyklom while
cifernySucet(4728)
cifernySucet(999)

%% 7) Praca s textom
pocetSamohlasok('programovanie')
obratText('MATLAB')
jePalindrom('kajak')
jePalindrom('matlab')

%% 8) Funkcia s dvoma vystupmi - prevod teploty
[f, k] = prevedTeplotu(25)

% funguje aj na vektor
prevedTeplotu([0 100])

%% 9) Funkcia, ktora nic nevracia - iba vypisuje
tabulkaNasobenia(5)

%% 10) Volitelny argument (nargin)
pozdrav('Jana')              % len jeden argument
pozdrav('Jana', 'rano')      % dva argumenty
pozdrav('Peter', 'vecer')

%% 11) Rekurzia - funkcia vola samu seba
faktorial(5)
faktorial(10)

%% 12) Kontrola vstupov a chybove hlasky
bezpecnaOdmocnina(16)

% toto skonci zrozumitelnou chybou:
try
    bezpecnaOdmocnina(-4)
catch e
    fprintf('Zachytena chyba: %s\n', e.message);
end

%% 13) Funkcie sa daju kombinovat
% obsah kruhu, ktoreho polomer je ciferny sucet cisla 1234
r = cifernySucet(1234)
obsahKruhu(r)

% alebo rovno v jednom vyraze:
obsahKruhu(cifernySucet(1234))
