%% CVICENIA 3: Riadiace struktury, funkcie a retazce
% SPSE Karola Adlera 5
%
% Ako pracovat s tymto suborom:
%   - Kazda sekcia zacina znakmi %%  -> spustis ju cez Ctrl+Enter
%   - Svoje riesenie pis pod komentar so zadanim
%   - Nezabudni, ze kazdy if, for, while aj function konci slovom end
%   - Riesenia najdes v subore riesenia_cv_03.m (ale najprv skus sam!)

clc; clear;

%% A1) Vytvor premennu teplota = 18. Ak je mensia ako 20, vypis odkaz,
% aby si zobral bundu.



%% A2) Pre cislo -7 vypis, ci je kladne (alebo nula), alebo zaporne.
% Pouzi if - else.



%% A3) Pre 83 bodov urci znamku podla stupnice:
%   90 a viac -> 1,  75-89 -> 2,  60-74 -> 3,  45-59 -> 4,  menej -> 5
% Vysledok vypis vetou pomocou fprintf.



%% A4) Zisti, ci je cislo 17 parne alebo neparne, a vypis to.
% Pomoc: mod(n,2)



%% A5) Pomocou switch vypis rimsku cislicu pre hodnotu 1, 2 alebo 3.
% Pre ine hodnoty vypis "Nepoznam".



%% A6) Pomocou switch urc rocne obdobie pre mesiac 7.
% zima = 12,1,2   jar = 3,4,5   leto = 6,7,8   inak jesen
% Pomoc: case {12, 1, 2}



%% B1) Pomocou cyklu for spocitaj sucet a sucin cisel od 1 do 10.



%% B2) Pomocou cyklu vypis druhe mocniny cisel 1 az 5 vo forme:
%   "1 na druhu je 1"



%% B3) Prejdi cyklom vektor teplot [12 18 25 9 31] a pre kazdu hodnotu
% vypis, ci je nad 20 (teplo) alebo nie (chladno).
% Pomoc: cyklus moze ist priamo cez hodnoty: for t = teploty



%% B4) Pomocou vnoreneho cyklu vypis malu nasobilku 3x4
% (tri riadky, styri stlpce). Pomoc: fprintf('%4d', ...) a fprintf('\n')



%% B5) Pomocou while zisti, kolkokrat treba zdvojnasobit cislo 1,
% aby presiahlo 500. Vypis pocet krokov aj vyslednu hodnotu.



%% B6) Pomocou while spocitaj ciferny sucet cisla 4728.
% Pomoc: posledna cifra je mod(x,10), cislo bez poslednej cifry je floor(x/10)



%% B7) Najdi prve prvocislo vacsie ako 100 a hned potom cyklus ukonci.
% Pomoc: isprime, break



%% B8) Z vektora [5 -3 8 -1 12 -7] spocitaj sucet len kladnych cisel.
% Zaporne preskoc pomocou continue.



%% C1) Porovnaj rychlost cyklu a funkcie sum na vektore s milionom prvkov.
% POZOR: prve volanie je vzdy pomalsie - oba postupy najprv spusti
% naprazdno a az potom meraj. Meranie zopakuj 3x a sprav priemer.



%% C2) Nasledujuci cyklus spocita, kolko je vo vektore zapornych cisel.
% Prepis ho do jedineho riadku bez cyklu.
v = [3 -1 4 -5 9];
% pocet = 0;
% for k = v
%     if k < 0
%         pocet = pocet + 1;
%     end
% end



%% C3) Vytvor vektor druhych mocnin cisel 1 az 10000 pomocou cyklu,
% ale pole si najprv predalokuj cez zeros. Preco je to dolezite?



%% D1) Vytvor anonymnu funkciu f(x) = 2x + 3 a vyskusaj ju
% na cisle 5 aj na vektore [1 2 3].



%% D2) Vytvor anonymnu funkciu, ktora pre strany a, b vrati obvod obdlznika.



%% D3) Vytvor anonymnu funkciu g(x) = x^2 - 1 tak, aby fungovala
% aj na celom vektore naraz. Na co treba dat pozor?



%% E1) Pre retazec 'Bratislava' zisti dlzku, prvy znak, posledny znak,
% prvych pat znakov a cely retazec velkymi pismenami.



%% E2) Vytvor to iste slovo ako typ string. Zisti jeho triedu a dlzku.
% Preco tu nepouzijeme length?



%% E3) Spoj krstne meno 'Jana' a priezvisko 'Nova' do jedneho retazca
% aj s medzerou. Sprav to raz pre char a raz pre string.



%% E4) Over, ci sa zadane heslo 'tajne' zhoduje s ulozenym heslom.
% Preco na to NEMOZES pouzit == ? Vyskusaj aj porovnanie 'ANO' a 'ano'
% bez ohladu na velkost pismen.



%% E5) Vo vete 'Dnes je krasny slnecny den' zisti:
% ci obsahuje slovo 'slnecny', ci zacina na 'Dnes', ci konci na 'den'
% a na ktorych poziciach sa nachadza pismeno 'e'.



%% E6) V texte 'cierna macka' nahrad slovo 'cierna' za 'biela'.
% Potom odstran medzery na okrajoch retazca '    okraje    '.



%% E7) Rozdel datum '2024-09-23' na tri casti a vypis rok.
% Potom spoj slova "MATLAB", "je", "super" do jednej vety.
% Pomoc: strsplit, join



%% E8) Vytvor vetu "Mam 17 rokov" tak, ze cislo 17 bude ulozene
% v premennej. Potom preved text '3.14' na cislo.



%% E9) Pomocou sprintf a fprintf vypis:
%   pocet ziakov ako cele cislo
%   teplotu na dve desatinne miesta
%   jednoduchy cenník, kde su nazvy zarovnane vlavo a ceny vpravo
% Pomoc: %-10s zarovna text vlavo na sirku 10 znakov



%% F1) Napis funkciu obsahObdlznika(a, b), ktora vrati obsah obdlznika.
% POZOR: vlastne funkcie musia byt na KONCI skriptu (alebo vo vlastnom subore).



%% F2) Napis funkciu minMaxRozdiel(v), ktora vrati tri hodnoty:
% minimum, maximum a ich rozdiel.



%% F3) Napis funkciu jeParne(n), ktora vrati true alebo false.



%% F4) Napis funkciu pocetSamohlasok(text), ktora spocita samohlasky.
% Pomoc: prejdi text cyklom a pouzi any(znak == 'aeiouy')



% ============================================================
% Sem pis svoje funkcie k ulohám F1 az F4
% (v skripte musia byt uplne na konci)
% ============================================================
