%% RIESENIA - Cvicenia 3: Riadiace struktury, funkcie a retazce
% SPSE Karola Adlera 5
%
% POZOR: sekcia F pouziva vlastne funkcie, ktore su definovane
% na KONCI tohto suboru (lokalne funkcie skriptu).

clc; clear;

%% A1) Podmienka if
teplota = 18;
if teplota < 20
    disp('Je zima, zober si bundu')
end

%% A2) if - else
cislo = -7;
if cislo >= 0
    disp('Cislo je kladne alebo nula')
else
    disp('Cislo je zaporne')
end

%% A3) Znamkovanie cez elseif
body = 83;
if body >= 90
    znamka = 1;
elseif body >= 75
    znamka = 2;
elseif body >= 60
    znamka = 3;
elseif body >= 45
    znamka = 4;
else
    znamka = 5;
end
fprintf('Za %d bodov je znamka %d\n', body, znamka);

%% A4) Parne alebo neparne
n = 17;
if mod(n,2) == 0
    fprintf('%d je parne\n', n);
else
    fprintf('%d je neparne\n', n);
end

%% A5) switch - rimske cislice
cislica = 3;
switch cislica
    case 1
        disp('I')
    case 2
        disp('II')
    case 3
        disp('III')
    otherwise
        disp('Nepoznam')
end

%% A6) switch s viacerymi hodnotami
mesiac = 7;
switch mesiac
    case {12, 1, 2}
        disp('Zima')
    case {3, 4, 5}
        disp('Jar')
    case {6, 7, 8}
        disp('Leto')
    otherwise
        disp('Jesen')
end

%% B1) for - sucet a sucin
sucet = 0;
sucin = 1;
for i = 1:10
    sucet = sucet + i;
    sucin = sucin * i;
end
sucet
sucin        % to iste ako factorial(10)

%% B2) for - vypis mocnin
for i = 1:5
    fprintf('%d na druhu je %d\n', i, i^2);
end

%% B3) for cez prvky vektora
teploty = [12 18 25 9 31];
for t = teploty
    if t > 20
        fprintf('%d stupnov - teplo\n', t);
    else
        fprintf('%d stupnov - chladno\n', t);
    end
end

%% B4) Vnoreny cyklus - mala nasobilka
for i = 1:3
    for j = 1:4
        fprintf('%4d', i*j);
    end
    fprintf('\n');
end

%% B5) while - zdvojnasobovanie
x = 1;
krokov = 0;
while x < 500
    x = x * 2;
    krokov = krokov + 1;
end
fprintf('Po %d krokoch je x = %d\n', krokov, x);

%% B6) while - ciferny sucet
cislo = 4728;
sucetCifier = 0;
zvysok = cislo;
while zvysok > 0
    sucetCifier = sucetCifier + mod(zvysok, 10);
    zvysok = floor(zvysok / 10);
end
fprintf('Ciferny sucet cisla %d je %d\n', cislo, sucetCifier);

%% B7) break - prve prvocislo vacsie ako 100
n = 101;
while true
    if isprime(n)
        fprintf('Prve prvocislo nad 100: %d\n', n);
        break
    end
    n = n + 1;
end

%% B8) continue - sucet len kladnych
data = [5 -3 8 -1 12 -7];
sucetKladnych = 0;
for k = data
    if k < 0
        continue
    end
    sucetKladnych = sucetKladnych + k;
end
sucetKladnych

%% C1) Vektorizacia - porovnanie rychlosti
n = 1e6;
v = rand(1,n);

% zahriatie (prve volanie je vzdy pomalsie)
s1 = 0; for i = 1:n, s1 = s1 + v(i); end
s2 = sum(v);

t1 = 0; t2 = 0;
for r = 1:3
    tic; s1 = 0; for i = 1:n, s1 = s1 + v(i); end; t1 = t1 + toc;
    tic; s2 = sum(v); t2 = t2 + toc;
end
fprintf('cyklus: %.4f s,  sum(): %.4f s\n', t1/3, t2/3);
fprintf('vektorovy zapis je %.0fx rychlejsi\n', (t1/3)/(t2/3));

%% C2) Prepis cyklu na vektorovy zapis
% cyklus:
v = [3 -1 4 -5 9];
pocet = 0;
for k = v
    if k < 0
        pocet = pocet + 1;
    end
end
pocet
% to iste bez cyklu:
sum(v < 0)

%% C3) Predalokacia pola
n = 10000;
% spravne: miesto si pripravime vopred
vysledok = zeros(1,n);
for i = 1:n
    vysledok(i) = i^2;
end
vysledok(1:5)

%% D1) Anonymna funkcia
f = @(x) 2*x + 3;
f(5)
f([1 2 3])

%% D2) Anonymna funkcia s dvoma vstupmi
obvod = @(a,b) 2*(a+b);
obvod(3,4)

%% D3) Anonymna funkcia s prvkovou operaciou
g = @(x) x.^2 - 1;    % bodka je nutna, aby to fungovalo na vektore
g([1 2 3 4])

%% E1) Retazce - zaklady
meno = 'Bratislava';
length(meno)
meno(1)
meno(end)
meno(1:5)
upper(meno)

%% E2) string a jeho dlzka
s = "Bratislava";
class(s)
strlength(s)

%% E3) Spajanie
krstne = 'Jana';
priezvisko = 'Nova';
cele = [krstne ' ' priezvisko]
% cez string:
celes = "Jana" + " " + "Nova"

%% E4) Porovnavanie - preco strcmp
heslo = 'tajne';
zadane = 'tajne';
strcmp(heslo, zadane)
strcmpi('ANO','ano')
% == porovnava znak po znaku a pri roznej dlzke skonci chybou:
'abc' == 'abd'
try
    'ano' == 'anooo';
catch e
    disp('CHYBA:')
    disp(e.message)
end

%% E5) Hladanie v texte
veta = 'Dnes je krasny slnecny den';
contains(veta, 'slnecny')
startsWith(veta, 'Dnes')
endsWith(veta, 'den')
strfind(veta, 'e')

%% E6) Upravy textu
strrep('cierna mačka', 'cierna', 'biela')
strtrim('    okraje    ')
lower('KRIK')

%% E7) Rozdelenie a spojenie
datum = '2024-09-23';
casti = strsplit(datum, '-')
rok = casti{1}
join(["MATLAB" "je" "super"], " ")

%% E8) Cislo a text
vek = 17;
sprava = ['Mam ' num2str(vek) ' rokov']
str2double('3.14')
str2double('nieje cislo')   % vrati NaN

%% E9) Formatovany vypis
sprintf('%d ziakov', 24)
sprintf('%.2f stupnov', 21.456)
sprintf('%s ma %d rokov', 'Peter', 16)
fprintf('%-10s %5.2f\n', 'chlieb', 2.5);
fprintf('%-10s %5.2f\n', 'mlieko', 1.25);

%% F1) Vlastna funkcia - obsah obdlznika
obsahObdlznika(3, 5)

%% F2) Funkcia s viacerymi vystupmi
[mn, mx, rozdiel] = minMaxRozdiel([4 9 2 15 7])

%% F3) Funkcia s podmienkou vnutri
jeParne(10)
jeParne(7)

%% F4) Funkcia s cyklom - pocet samohlasok
pocetSamohlasok('programovanie')

% ============================================================
% LOKALNE FUNKCIE (musia byt na konci suboru)
% ============================================================

function S = obsahObdlznika(a, b)
%OBSAHOBDLZNIKA Vypocita obsah obdlznika so stranami a, b.
    S = a * b;
end

function [minimum, maximum, rozdiel] = minMaxRozdiel(v)
%MINMAXROZDIEL Vrati minimum, maximum a ich rozdiel.
    minimum = min(v);
    maximum = max(v);
    rozdiel = maximum - minimum;
end

function vysledok = jeParne(n)
%JEPARNE Vrati true, ak je cislo parne.
    if mod(n, 2) == 0
        vysledok = true;
    else
        vysledok = false;
    end
end

function pocet = pocetSamohlasok(text)
%POCETSAMOHLASOK Spocita samohlasky v texte.
    samohlasky = 'aeiouy';
    pocet = 0;
    for znak = lower(text)
        if any(znak == samohlasky)
            pocet = pocet + 1;
        end
    end
end
