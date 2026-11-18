%% RIESENIA - Cvicenia 5: Praca so subormi a nameranymi datami
% SPSE Karola Adlera 5
%
% DOLEZITE: Aktualny priecinok MATLABu musi byt priecinok "cvicenia"
% (ten, v ktorom je podpriecinok "data"). Over si to prikazom pwd.
% Subory, ktore ulohy vytvaraju (moje_meranie.mat, vysledky.csv, ...),
% vzniknu v aktualnom priecinku.

clc; clear; close all;

%% A1) Cesta k suboru a test existencie
subor = fullfile('data', 'ohm.csv')
isfile(subor)
isfile(fullfile('data', 'neexistuje.csv'))

%% A2) Zoznam CSV suborov v priecinku data
s = dir(fullfile('data', '*.csv'));
for k = 1:numel(s)
    fprintf('%-20s %6d B\n', s(k).name, s(k).bytes);
end

%% A3) Preklep v nazve suboru
try
    M = readmatrix(fullfile('data', 'ohm.cvs'));
catch chyba
    disp(chyba.message)
end

%% B1) Ulozenie vybranych premennych
U = 0:2:10;
I = U / 470 * 1000;
poznamka = 'meranie rezistora 470 Ohm';
docasne = 42;                                 % tuto neulozime
save('moje_meranie.mat', 'U', 'I', 'poznamka')
whos -file moje_meranie.mat

%% B2) Nacitanie spat do workspace
clear
load('moje_meranie.mat')
poznamka
I(end)

%% B3) Nacitanie do struktury
S = load('moje_meranie.mat');
fieldnames(S)
S.U

%% B4) load prepise existujucu premennu
U = 999;
load('moje_meranie.mat')
U
% Povodna hodnota 999 zmizla bez varovania - preto je S = load(...) bezpecnejsie.

%% C1) readmatrix a graf
M = readmatrix(fullfile('data', 'ohm.csv'));
U = M(:, 1);
I = M(:, 2);
figure
plot(U, I, 'o-')
xlabel('U [V]'); ylabel('I [mA]')
title('ohm.csv')
% V mieste NaN (7 V) je v ciare medzera.

%% C2) readtable
T = readtable(fullfile('data', 'ohm.csv'));
head(T)
T.Properties.VariableNames
height(T)

%% C3) Pristup k datam v tabulke
T = readtable(fullfile('data', 'ohm.csv'));
T.I_mA(5)
T(2:4, :)
T{2:4, :}
class(T(2:4, :))
class(T{2:4, :})

%% C4) CSV zo slovenskeho Excelu
M = readmatrix(fullfile('data', 'ohm_excel.csv'));
M(1:3, :)                                      % ZLE - druhy stlpec su NaN
T = readtable(fullfile('data', 'ohm_excel.csv'), ...
              'Delimiter', ';', 'DecimalSeparator', ',');
T(1:3, :)                                      % spravne

%% C5) Export z osciloskopu
M = readmatrix(fullfile('data', 'rc_osciloskop.csv'), 'NumHeaderLines', 4);
size(M)
t = M(:, 1);
u = M(:, 2);
figure
plot(t*1000, u)
xlabel('t [ms]'); ylabel('u [V]')
title('Nabijanie kondenzatora - surove data')

%% C6) Informacie z hlavicky pristroja
riadky = readlines(fullfile('data', 'rc_osciloskop.csv'));
riadky(1:4)
casti = split(riadky(2), ',')
vzorkovanie = casti(2)

%% C7) Excel s viacerymi harkami
sheetnames(fullfile('data', 'teplota.xlsx'))
T = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie');
size(T)
Info = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Info')

%% C8) Len cast harka
T5 = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie', 'Range', 'A1:B6')

%% D1) Tabulka s textom
Z = readtable(fullfile('data', 'ziaci.csv'));
head(Z, 5)
height(Z)
class(Z.Meno)

%% D2) Ziaci s aspon 80 bodmi
Z = readtable(fullfile('data', 'ziaci.csv'));
dobri = Z(Z.Body >= 80, :)
pocet = height(dobri)

%% D3) Priemer kazdej triedy
Z = readtable(fullfile('data', 'ziaci.csv'));
jeD  = strcmp(Z.Trieda, '4.D');
jeTL = strcmp(Z.Trieda, '4.TL');
fprintf('4.D : %.1f bodov (%d ziakov)\n', mean(Z.Body(jeD)),  sum(jeD));
fprintf('4.TL: %.1f bodov (%d ziakov)\n', mean(Z.Body(jeTL)), sum(jeTL));

%% D4) Traja najlepsi
Z = readtable(fullfile('data', 'ziaci.csv'));
Z = sortrows(Z, 'Body', 'descend');
Z(1:3, :)

%% D5) Novy stlpec so znamkou
Z = readtable(fullfile('data', 'ziaci.csv'));
Z.Znamka = zeros(height(Z), 1);
Z.Znamka(Z.Body >= 90)               = 1;
Z.Znamka(Z.Body >= 75 & Z.Body < 90) = 2;
Z.Znamka(Z.Body >= 60 & Z.Body < 75) = 3;
Z.Znamka(Z.Body >= 45 & Z.Body < 60) = 4;
Z.Znamka(Z.Body < 45)                = 5;
Z(1:6, :)

%% D6) Graf z tabulky
Z = readtable(fullfile('data', 'ziaci.csv'));
Z = sortrows(Z, 'Body', 'descend');
figure
bar(categorical(Z.Meno, Z.Meno), Z.Body)
yline(50, '--')                       % hranica uspechu
ylabel('body')
title('Vysledky pisomky')

%% E1) Chybajuca hodnota
T = readtable(fullfile('data', 'ohm.csv'));
mean(T.I_mA)
mean(T.I_mA, 'omitnan')
chyba = isnan(T.I_mA);
sum(chyba)
T.U_V(chyba)                     % pri akom napati hodnota chyba

%% E2) Odstranenie riadkov s NaN
T = readtable(fullfile('data', 'ohm.csv'));
pred = height(T)
T = rmmissing(T);
po = height(T)

%% E3) Doplnenie chybajucich hodnot
T = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie');
pocetChyb = sum(isnan(T.Teplota_C))
[Tf, doplnene] = fillmissing(T.Teplota_C, 'linear');
figure
plot(T.Hodina, Tf)
hold on
plot(T.Hodina(doplnene), Tf(doplnene), 'ro', 'MarkerFaceColor', 'r')
hold off
xlabel('hodina'); ylabel('T [C]')
legend('teplota', 'doplnene hodnoty', 'Location', 'northwest')

%% E4) Klzavy priemer s roznym oknom
M = readmatrix(fullfile('data', 'rc_osciloskop.csv'));
t = M(:, 1) * 1000;
u = M(:, 2);
figure
tiledlayout(1, 3, 'TileSpacing', 'compact')
for n = [5 25 151]
    nexttile
    plot(t, u, 'Color', [0.75 0.75 0.75])
    hold on
    plot(t, movmean(u, n), 'LineWidth', 1.5)
    hold off
    title(sprintf('okno %d bodov', n))
    xlim([0 120])
end
% Pri okne 151 bodov je krivka hladka, ale nabeh je rozmazany - priliz velke okno.

%% E5) Kedy bolo najteplejsie
T = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie');
[Tmax, imax] = max(T.Teplota_C);
[Tmin, imin] = min(T.Teplota_C);
h = T.Hodina(imax);
fprintf('Maximum %.1f C o %02d:%02d\n', Tmax, floor(h), round(mod(h, 1)*60));
h = T.Hodina(imin);
fprintf('Minimum %.1f C o %02d:%02d\n', Tmin, floor(h), round(mod(h, 1)*60));

%% E6) Suvisi teplota s vlhkostou?
T = rmmissing(readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie'));
figure
scatter(T.Teplota_C, T.Vlhkost_pct, 'filled')
xlabel('teplota [C]'); ylabel('vlhkost [%]')
K = corrcoef(T.Teplota_C, T.Vlhkost_pct);
korelacia = K(1, 2)
% Blizko -1: ked teplota rastie, relativna vlhkost klesa.

%% E7) Casova konstanta RC clanku
M = readmatrix(fullfile('data', 'rc_osciloskop.csv'));
t = M(:, 1);
us = movmean(M(:, 2), 15);
Uk  = mean(us(t > 0.2));                     % ustalene napatie
i0  = find(t >= 0.02, 1);                    % zapnutie zdroja (20 ms)
i63 = find(us >= 0.632*Uk, 1);               % 63,2 % ustalenej hodnoty
tau = t(i63) - t(i0);
fprintf('Ustalene napatie: %.2f V\n', Uk);
fprintf('Casova konstanta: %.1f ms (teoria R*C = 47 ms)\n', tau*1000);

%% F1) Odpor z merania - polyfit
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
p = polyfit(T.U_V, T.I_mA, 1)
R = 1000 / p(1)

%% F2) Graf merania s prelozenou priamkou
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
p = polyfit(T.U_V, T.I_mA, 1);
R = 1000 / p(1);
Ufit = linspace(0, 12, 100);
figure
plot(T.U_V, T.I_mA, 'o', 'MarkerFaceColor', 'b')
hold on
plot(Ufit, polyval(p, Ufit), 'r', 'LineWidth', 1.5)
hold off
xlabel('U [V]'); ylabel('I [mA]')
title(sprintf('R = %.1f Ohm', R))
legend('namerane', 'priamka', 'Location', 'northwest')
grid on

%% F3) Odchylky od priamky
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
p = polyfit(T.U_V, T.I_mA, 1);
odchylky = T.I_mA - polyval(p, T.U_V);
najvacsia = max(abs(odchylky))
figure
stem(T.U_V, odchylky, 'filled')
yline(0)
xlabel('U [V]'); ylabel('odchylka [mA]')
title('Namerane minus priamka')

%% F4) Predpoved z priamky
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
p = polyfit(T.U_V, T.I_mA, 1);
I15 = polyval(p, 15)                 % prud pri 15 V
U20 = (20 - p(2)) / p(1)             % napatie pre prud 20 mA

%% F5) Stupen polynomu
x = [0 0.5 1 1.5 2 2.5 3 3.5 4];
y = [1.1 1.4 2.2 3.0 4.9 6.8 10.1 12.9 17.2];
xx = linspace(0, 4, 200);
figure
tiledlayout(1, 3, 'TileSpacing', 'compact')
for st = [1 2 8]
    nexttile
    plot(x, y, 'o')
    hold on
    plot(xx, polyval(polyfit(x, y, st), xx), 'LineWidth', 1.5)
    hold off
    title(sprintf('stupen %d', st))
end

%% G1) Zapis tabulky a kontrola
Z = readtable(fullfile('data', 'ziaci.csv'));
Z.Uspel = Z.Body >= 50;
writetable(Z, 'vysledky.csv');
kontrola = readtable('vysledky.csv');
head(kontrola, 4)

%% G2) CSV pre slovensky Excel
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
T.R_Ohm = round(1000 * T.U_V ./ T.I_mA, 1);  % odpor z kazdeho bodu zvlast
writetable(T(2:4, :), 'ohm_pre_excel.csv', 'Delimiter', ';');
txt = fileread('ohm_pre_excel.csv');
txt = strrep(txt, '.', ',');                  % desatinna ciarka pre slovensky Excel
fid = fopen('ohm_pre_excel.csv', 'w');
fprintf(fid, '%s', txt);
fclose(fid);
type ohm_pre_excel.csv

%% G3) writematrix
U = (0:3)';
I = U / 470 * 1000;
writematrix([U I], 'matica.csv');
type matica.csv

%% G4) Protokol do textoveho suboru
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
p = polyfit(T.U_V, T.I_mA, 1);
fid = fopen('protokol.txt', 'w');
fprintf(fid, 'PROTOKOL - meranie odporu\n');
fprintf(fid, 'Pocet merani: %d\n', height(T));
fprintf(fid, 'Odpor: R = %.1f Ohm\n\n', 1000/p(1));
fprintf(fid, '%6s %8s\n', 'U [V]', 'I [mA]');
for k = 1:3
    fprintf(fid, '%6.1f %8.2f\n', T.U_V(k), T.I_mA(k));
end
fclose(fid);
type protokol.txt

%% G5) Pridanie na koniec suboru
fid = fopen('protokol.txt', 'a');
fprintf(fid, '\nVypracoval: Jano Student\n');
fclose(fid);
type protokol.txt

%% G6) Ulozenie grafu
T = rmmissing(readtable(fullfile('data', 'ohm.csv')));
figure
plot(T.U_V, T.I_mA, 'o-')
xlabel('U [V]'); ylabel('I [mA]')
exportgraphics(gcf, 'ohm_graf.png', 'Resolution', 200);
isfile('ohm_graf.png')

%% H1) Bonus - spracovanie celodenneho merania
T = readtable(fullfile('data', 'teplota.xlsx'), 'Sheet', 'Meranie');
T.Teplota_C = fillmissing(T.Teplota_C, 'linear');          % 1. vycistit
hodinove = mean(reshape(T.Teplota_C, 4, 24))';             % 2. 4 merania = 1 hodina
hodina = (0:23)';
figure                                                     % 3. vykreslit
bar(hodina, hodinove, 'FaceAlpha', 0.5)
hold on
plot(T.Hodina, T.Teplota_C, 'LineWidth', 1.2)
hold off
xlabel('hodina'); ylabel('T [C]')
legend('hodinovy priemer', 'meranie', 'Location', 'northwest')
title('Teplota na streche skoly')
writetable(table(hodina, hodinove), 'hodinove.csv');       % 4. ulozit
fid = fopen('suhrn.txt', 'w');
fprintf(fid, 'Priemer dna: %.1f C\n', mean(T.Teplota_C));
fprintf(fid, 'Najteplejsia hodina: %d. (%.1f C)\n', ...
        hodina(hodinove == max(hodinove)), max(hodinove));
fclose(fid);
type suhrn.txt
