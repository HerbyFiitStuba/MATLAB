%% CVICENIA 4: Grafika a vizualizacia dat
% SPSE Karola Adlera 5
%
% Ako pracovat s tymto suborom:
%   - Kazda sekcia zacina znakmi %%  -> spustis ju cez Ctrl+Enter
%   - Svoje riesenie pis pod komentar so zadanim
%   - Na zaciatok kazdej ulohy napis  figure  -> graf sa otvori v novom okne
%     a predchadzajuci ti zostane na porovnanie
%   - Ked mas okien privela, napis do Command Window:  close all
%   - Kazdy graf ma mat popisy osi - graf bez jednotiek nic nedokazuje!
%   - Riesenia najdes v subore riesenia_cv_04.m (ale najprv skus sam!)

clc; clear; close all;


% =============================================================
%  A - PRVY GRAF
% =============================================================

%% A1) Vytvor x = 0:4 a y = x.^2 a nakresli ich prikazom plot(x, y, 'o-').
% Pozri sa pozorne medzi body: je to naozaj parabola?
% Pomoc: MATLAB nepozna funkciu, vidi len body.



%% A2) Do jedneho grafu nakresli sin(x) na intervale <0, 2pi> dvakrat: raz z
% 10 bodov so znackami 'o-' a raz z 200 bodov. Pridaj legendu.
% Pomoc: linspace(0, 2*pi, 10), druhu krivku pridas po hold on.



%% A3) Nakresli vektor y = [3 7 2 9 4] prikazom plot len s jednym argumentom.
% Ake hodnoty su na osi x?



%% A4) Spusti plot(1:5, 1:6). Precitaj chybovu hlasku a prikaz oprav tak, aby
% fungoval.
% Pomoc: Konstrukcia try ... catch chybu zachyti, takze skript pobezi
% dalej.



%% A5) Vytvor a = 0:0.3:1 a b = linspace(0, 1, 4) a porovnaj ich posledne
% prvky. Potom nakresli funkciu e^(-x) na <0, 5> z 200 bodov a do
% nadpisu napis vzorec s exponentom.
% Pomoc: Exponent v nadpise: title('e^{-x}').




% =============================================================
%  B - VZHLAD CIARY
% =============================================================

%% B1) Do jedneho grafu nakresli styri krivky (30 bodov), kazdu inym
% LineSpec: sin(x) ako 'r-', cos(x) ako 'b--', sin(x)+1 ako 'g:o' a
% cos(x)-1 ako 'k-.s'. Do legendy napis pouzite LineSpec.



%% B2) Nakresli sin(x) z 20 bodov iba stvorcekmi, bez spojovacej ciary.
% Pomoc: Staci LineSpec, ktory obsahuje len znacku.



%% B3) Nakresli sin(x) z 15 bodov takto: hrubka ciary 3, fialova farba [0.5 0
% 0.8], znacky velkosti 10 so zltou vyplnou a ciernym obrysom.
% Pomoc: Parametre LineWidth, Color, MarkerSize, MarkerFaceColor,
% MarkerEdgeColor.



%% B4) Nakresli dve sinusovky s hrubkou 4. Prva ma farbu RGB [0.85 0.33
% 0.10], druha je posunuta o -0,3 a ma farbu zapisanu ako hex '#D95319'.
% Vidis medzi farbami rozdiel?
% Pomoc: RGB je v rozsahu 0 az 1. Hex je retazec zacinajuci mriezkou.



%% B5) Nakresli sin(x) na <0, 4pi> z 500 bodov so znackami 'o-'. Vysledok je
% necitatelna "husenica". Oprav to tak, aby sa znacka nakreslila len v
% kazdom 25. bode.
% Pomoc: 'MarkerIndices', 1:25:length(x)



%% B6) V cykle for nakresli do jedneho grafu devat kriviek sin(x) + k pre k =
% 1 az 9, bez zadavania farby. Ktore krivky maju rovnaku farbu? Vypis
% zoznam predvolenych farieb.
% Pomoc: get(gca, 'ColorOrder')



%% B7) Vysledok prikazu plot uloz do premennej h. Cez nu potom zmen hrubku
% ciary na 3, farbu na cervenu a styl na ciarkovany. Nakoniec vypis
% aktualnu hrubku a farbu.
% Pomoc: h.LineWidth = 3 alebo set(h, 'Color', 'r'); citanie cez get(h,
% 'Color').




% =============================================================
%  C - POPIS A OSI
% =============================================================

%% C1) Nakresli napatie v sieti u(t) = 325*sin(2pi*50*t) za prvych 40 ms. Cas
% zobraz v milisekundach. Pridaj nadpis, popisy oboch osi s jednotkami a
% mriezku.
% Pomoc: Pocitaj v sekundach, prepocet urob az pri kresleni: plot(t*1000,
% u).



%% C2) Vedla seba (dva podgrafy) nakresli sin a cos s legendou. Vlavo legendu
% vytvor zoznamom textov (umiestnenie southwest), vpravo cez DisplayName
% (umiestnenie eastoutside).



%% C3) Nakresli u_C = 12(1 - e^(-t)) a vyskusaj TeX: nadpis so vzorcom s
% pismenom tau, os x s popisom omegat, os y s popisom u_C [V]. Potom cez
% text vypis do grafu nazov suboru subor_vysledky.m tromi sposobmi:
% obycajne, s \_ a s 'Interpreter', 'none'. Co sa stane s
% podciarkovnikom?
% Pomoc: _ = dolny index, ^ = horny index, \tau, \omega = grecke pismena,
% {...} zoskupi viac znakov.



%% C4) Nakresli tan(x) na <-pi, pi> z 1000 bodov. Graf je necitatelny, tak
% obmedz os y na <-5, 5>. Potom skus xlim([5 1]) a precitaj chybu.



%% C5) Nakresli kruznicu x = cos t, y = sin t do dvoch podgrafov: vlavo bez
% uprav, vpravo s axis equal.



%% C6) Nakresli y = x*e^(-x) na <0, 4>. Pomocou max najdi maximum a vyznac
% ho: cervenym bodom, zvislou ciarou xline s popisom a textom s hodnotou
% na tri desatinne miesta. Pridaj aj vodorovnu ciaru yline(0).
% Pomoc: [ymax, i] = max(y) vrati hodnotu aj jej index, takze x-ova
% suradnica je x(i).



%% C7) Nakresli sin(x) na <0, 2pi>. Znacky na osi x nastav na nasobky pi/2 s
% popismi 0, pi/2, pi, 3pi/2, 2pi. Pismo osi zvacsi na 12 a zapni jemnu
% mriezku.
% Pomoc: xticks, xticklabels, set(gca, 'FontSize', 12), grid minor



%% C8) Nakresli funkciu 10^(x) na <0, 5> dvakrat vedla seba: raz s linearnou
% osou y, raz prikazom semilogy. Co sa stalo s krivkou?




% =============================================================
%  D - VIAC KRIVIEK A VIAC GRAFOV
% =============================================================

%% D1) Do jedneho grafu nakresli sin(x), cos(x) a sin(2x) s legendou. Potom
% vyskusaj to iste bez hold on.



%% D2) Nakresli sin, cos a sin*cos jedinym prikazom plot, kazdu inym stylom a
% vsetky s hrubkou 1,5.
% Pomoc: Dvojice x, y, LineSpec sa daju za sebou opakovat. Parameter na
% konci plati pre vsetky krivky.



%% D3) Vytvor maticu Y, ktorej stlpce su sin(x), sin(2x) a sin(3x), a
% nakresli ju prikazom plot(x, Y). Over rozmer matice Y.
% Pomoc: Aby sa z vektorov dali poskladat stlpce, x musi byt stlpcovy: x =
% x(:).



%% D4) Pomocou subplot nakresli mriezku 2x2 s funkciami sin x, cos x, x^2 a
% e^(-x). Kazdy graf ma vlastny nadpis a cela mriezka spolocny nadpis.
% Pomoc: Spolocny nadpis pre subplot: sgtitle.



%% D5) Vytvor rozlozenie, kde horny graf zabera celu sirku a pod nim su dva
% mensie vedla seba.
% Pomoc: subplot(2, 2, [1 2]) spoji policka 1 a 2.



%% D6) Pomocou tiledlayout 2x3 a cyklu nakresli sin(k*x) pre k = 1 az 6.
% Nadpisy vytvor cez sprintf, pridaj spolocny nadpis, spolocne popisy
% osi a tesne rozostupy.
% Pomoc: 'TileSpacing', 'compact', v cykle nexttile.



%% D7) Vytvor dve okna figure(1) a figure(2) a do kazdeho nakresli iny graf.
% Druhemu oknu nastav nazov a bielu farbu pozadia. Potom sa vrat do okna
% 1 a dokresli donho dalsiu krivku. Nakoniec vypis cislo aktualneho
% okna.
% Pomoc: set(gcf, 'Name', ...), get(gcf, 'Number')




% =============================================================
%  E - DALSIE TYPY GRAFOV
% =============================================================

%% E1) Pocty znamok [4 9 8 5 2] zobraz v mriezke 2x2 styrmi sposobmi: bar,
% barh a pre dve triedy (matica 5x2) ako skupiny a ako naskladane
% stlpce.
% Pomoc: bar(M) pre maticu; bar(M, 'stacked')



%% E2) Nakresli diskretny signal x[n] = 0,8^(n) pre n = 0 az 20 prikazom stem
% s vyplnenymi kruzkami a s popisom osi.



%% E3) Digitalny signal [0 1 1 0 1 0 0 1 1 1 0] nakresli prikazom stairs.
% Porovnaj ho s tym, co by nakreslil plot. Preco je tu stairs
% spravnejsi?



%% E4) Vygeneruj 200 nahodnych bodov x = randn(1,200), y = x +
% 0.5*randn(1,200) a nakresli ich cez scatter: velkost kazdeho bodu
% nahodna, farba podla y, priehladnost 0,6 a farebna skala.
% Pomoc: rng(1) na zaciatku zaruci, ze vyjdu vzdy tie iste "nahodne"
% cisla.



%% E5) Vygeneruj 1000 hodnot randn a nakresli tri histogramy vedla seba: s 20
% intervalmi, so sirkou intervalu 0,1 a s osou y ako pravdepodobnostou.
% Pomoc: 'BinWidth', 'Normalization', 'probability'



%% E6) Vedla seba nakresli kolacovy graf oblubenych jazykov (45, 25, 20, 10 %
% pre Python, C, MATLAB, HTML) s popismi a graf area mesacnej spotreby
% energie.
% Pomoc: pie(hodnoty, {'Python', 'C', ...})



%% E7) Pri merani si namerali prudy 0,21; 0,39; 0,62; 0,79 a 1,02 A pri
% napatiach 1 az 5 V. Neistoty boli 0,03; 0,03; 0,04; 0,05 a 0,05 A.
% Nakresli meranie aj s chybovymi useckami.
% Pomoc: errorbar(x, y, neistota, 'o')



%% E8) Nakresli v polarnych suradniciach krivku r = |cos 2theta|.
% Pomoc: polarplot(theta, r)




% =============================================================
%  F - PRAKTICKE PRIKLADY Z ELEKTROTECHNIKY
% =============================================================

%% F1) Nakresli nabijanie kondenzatora C = 100 uF na U = 12 V cez odpory 10,
% 22 a 47 kOhm do jedneho grafu. Legendu vytvor cez DisplayName a
% sprintf. Pre prvy odpor vyznac bod v case t = tau a pridaj k nemu
% popis "63 %". Napatie zdroja vyznac ciarkovanou ciarou, ktora nebude v
% legende.
% Pomoc: u_C = U(1 - e^(-t/tau)), tau = RC; 'HandleVisibility', 'off'
% vynecha ciaru z legendy.



%% F2) Obdlznikovy signal 50 Hz sa da poskladat z neparnych harmonickych:
% (4/pi)*sin(komegat)/k pre k = 1, 3, 5, ... Nakresli do mriezky 2x2
% sucet harmonickych az do 1., 3., 7. a 21.
% Pomoc: Dva vnorene cykly: vonkajsi cez pocty [1 3 7 21], vnutorny for k
% = 1:2:p.



%% F3) Nakresli dvojcestne usmernene napatie |325*sin(2pi*50*t)| za 40 ms
% dvakrat pod sebou: hore ako spojity priebeh, dole ako vzorky odobrate
% kazdu 1 ms.
% Pomoc: Pod sebou: subplot(2, 1, ...); vzorky: tn = 0:0.001:0.04 a stem.



%% F4) Nakresli napatie 325 V a prud 5 A, ktory sa oneskoruje o 45 stupnov,
% do jedneho grafu s dvoma osami y.
% Pomoc: yyaxis left / yyaxis right; 45 stupnov = pi/4.



%% F5) Nakresli VA charakteristiku diody podla Shockleyho rovnice I =
% I_S(e^(U/(n*U_T)) - 1), kde I_S = 10^(-12) A, n = 1,5, U_T = 25,85 mV
% a U z <0; 0,8> V. Vlavo s linearnou osou (prud v mA), vpravo cez
% semilogy.
% Pomoc: Pozor na bodove operacie: exp(U/(n*UT)) funguje pre cely vektor
% naraz.



%% F6) Nakresli funkciu sin(x)/x na <-20, 20> bez vytvarania vektora x,
% pomocou anonymnej funkcie a fplot.
% Pomoc: f = @(x) sin(x)./x; a fplot(f, [-20 20])




% =============================================================
%  G - TRETI ROZMER
% =============================================================

%% G1) Nakresli skrutkovicu x = cos t, y = sin t, z = t s tromi zavitmi.
% Popis vsetky tri osi.
% Pomoc: Tri zavity = t od 0 po 6pi; plot3, zlabel.



%% G2) Spusti [X, Y] = meshgrid(1:3, 1:4) a pozri sa na obe matice. Vysvetli,
% co obsahuju.



%% G3) Na mriezke 60x60 z <-8, 8> nakresli "sombrero" z = sin(r)/r, kde r =
% sqrt(x^2 + y^2). Pridaj farebnu skalu.
% Pomoc: V strede je r = 0 a delenie nulou da NaN. Pripocitaj k r male
% cislo eps.



%% G4) Pre z = x*e^(-x^2-y^2) na <-2, 2>^2 nakresli vedla seba mesh, surf a
% contour s 15 vrstevnicami.
% Pomoc: Vo vzorci musia byt bodove operacie .* a .^.



%% G5) Tu istu plochu nakresli dvakrat: vlavo s plynulym tienovanim a
% farebnou mapou hot, vpravo pri pohlade zhora s farebnou skalou.
% Pomoc: shading interp, colormap(gca, hot), view(2)




% =============================================================
%  H - ULOZENIE GRAFU
% =============================================================

%% H1) Nakresli lubovolny graf a uloz ho trikrat: ako PNG s rozlisenim 300
% dpi, ako vektorove PDF a pre porovnanie aj cez saveas. Potom vypis
% nazvy a velkosti vzniknutych suborov.
% Pomoc: exportgraphics; zoznam suborov: dir('moj_graf*')




% =============================================================
%  I - BONUSOVA ULOHA
% =============================================================

%% I1) Simuluj meranie teploty za 24 hodin kazdych 15 minut: T = 15 +
% 7*sin(2*pi*(t-9)/24) + 0.8*randn(size(t)). Vytvor prehlad 2x2 so
% spolocnym nadpisom: (1) priebeh teploty s vyznacenym maximom a minimom
% a ich hodnotami v nadpise, (2) histogram, (3) hodinove priemery ako
% stlpcovy graf, (4) odchylka od priemeru ako stem.
% Pomoc: 96 merani = 24 hodin x 4. reshape(T, 4, 24) da do kazdeho stlpca
% jednu hodinu, mean potom spriemeruje stlpce.
