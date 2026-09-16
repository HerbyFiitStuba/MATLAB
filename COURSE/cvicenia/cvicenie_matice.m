%% CVICENIA: Matice v MATLABe
% SPSE Karola Adlera 5
% Nadvazuje na teoreticku prednasku "Teoria matic" - to, co sme
% pocitali rucne, si teraz overime v MATLABe.
%
% Ako pracovat s tymto suborom:
%   - Kazda sekcia zacina znakmi %%  -> spustis ju cez Ctrl+Enter
%   - Svoje riesenie pis pod komentar so zadanim
%   - Riesenia najdes v subore riesenia_cv_matice.m (ale najprv skus sam!)

clc; clear;

%% A1) Vytvor matice A = [1 2 3; 4 5 6] a B = [7 8; 9 10; 11 12].
% Zisti ich rozmery, over, ci sa daju vynasobit, a vynasob ich.
% Vysledok porovnaj s tym, co sme pocitali rucne na prednaske.



%% A2) Skus nasobit v opacnom poradi: B*A.
% Ide to? Aky rozmer ma vysledok? Je rovnaky ako A*B?



%% A3) Skus vynasobit A*A. Co sa stane a preco?
% Precitaj si chybovu hlasku - hovori presne, co je zle.



%% A4) Transponuj maticu A. Potom over, ze dvojita transpozicia
% vrati povodnu maticu. Pomoc: isequal



%% A5) Over vlastnost (A*B)' = B'*A' na maticiach A a B.
% Pozor na poradie - pri transpozicii sucinu sa obracia!



%% B1) Pre maticu D = [2 7 1; 0 5 3; 4 6 9] vypis hlavnu diagonalu a stopu.
% Over, ze stopa je naozaj sucet prvkov diagonaly.
% Pomoc: diag, trace, sum
D = [2 7 1; 0 5 3; 4 6 9];



%% B2) Vytvor diagonalnu maticu, ktora ma na diagonale hodnoty 3, 5, 7.
% Pomoc: diag s vektorom



%% B3) Vytvor jednotkovu maticu 4x4 a over, ze nasobenie nou nic nezmeni.
M = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];



%% B4) Z matice M vyber hornu a dolnu trojuholnikovu cast.
% Pomoc: triu, tril



%% C1) Vypocitaj determinant matice P = [3 1; 2 4] funkciou det.
% Potom to iste vypocitaj rucne podla vzorca a*d - b*c a porovnaj.
P = [3 1; 2 4];



%% C2) Vypocitaj determinant matice T = [1 2 3; 0 1 4; 5 6 0].
% Na prednaske nam vysla 1 - sedi to?
T = [1 2 3; 0 1 4; 5 6 0];



%% C3) Vypocitaj determinant matice 4x4 z prednasky. Ma vyjst -22.
A4 = [1 2 0 1;
      3 0 2 1;
      2 1 3 0;
      0 1 0 2];



%% C4) Over Laplaceov rozvoj podla 4. riadku.
% Minor M42 ziskas tak, ze z A4 vyberies riadky 1,2,3 a stlpce 1,3,4.
% Minor M44 tak, ze vyberies riadky 1,2,3 a stlpce 1,2,3.
% Potom zloz: det = 1*M42 + 2*M44 a porovnaj s det(A4).
% POZOR: desatinne cisla neporovnavaj cez ==, ale cez toleranciu!



%% C5) Vytvor singularnu maticu (napr. taku, kde je jeden riadok
% nasobkom ineho) a over, ze jej determinant je nulovy.



%% C6) Over na lubovolnych dvoch maticiach 2x2 vlastnosti:
%   det(A') = det(A)
%   det(A*B) = det(A)*det(B)



%% C7) Vytvor hornu trojuholnikovu maticu a over, ze jej determinant
% je sucin prvkov na diagonale. Pomoc: prod(diag(...))



%% D1) Pre maticu G = [4 7; 2 6] vypocitaj inverznu maticu
% a urob skusku G*inv(G) - ma vyjst jednotkova matica.
G = [4 7; 2 6];



%% D2) Vypocitaj tu istu inverznu maticu aj rucne podla vzorca
%   1/det(A) * [d -b; -c a]
% a porovnaj s vysledkom funkcie inv.



%% D3) Skus zavolat inv na singularnej matici z ulohy C5.
% Co MATLAB vypise a co vrati?



%% D4) Over, ze inv(inv(G)) je zase povodna matica G.



%% D5) Over vlastnost (A*B)^(-1) = B^(-1) * A^(-1) na dvoch maticiach 2x2.



%% D6) Vypocitaj E = G*inv(G) a potom otestuj E == eye(2).
% Vysli vsetky prvky ako true? Preco nie?
% Ako sa to ma testovat spravne?



%% E1) Vyries sustavu rovnic z prednasky pomocou laveho delenia:
%   x + 2y +  z = 8
%  2x +  y -  z = 1
%  3x -  y + 2z = 7



%% E2) Vyries tu istu sustavu aj cez inv(A)*b a porovnaj oba vysledky.



%% E3) Over spravnost riesenia dosadenim - vynasob A*x a porovnaj s b.



%% E4) Pouzi funkciu rref na rozsirenu maticu [A b].
% Porovnaj vysledok s tym, co nam vyslo rucnou Gaussovou eliminaciou.



%% E5) Vytvor sustavu, ktora nema riesenie (napr. dva rovnobezne "riadky"):
%   x + 2y = 3
%  2x + 4y = 7
% Zisti determinant matice sustavy a pozri sa na vysledok rref.



%% E6) Porovnaj rychlost A\b a inv(A)*b na matici 500x500.
% POZOR: prve volanie kazdej operacie je vzdy pomalsie (rezia na pozadi),
% takze oba postupy najprv raz spusti "naprazdno" a az potom meraj.
% Meranie zopakuj 3x a spocitaj priemer. Pomoc: tic, toc, fprintf



%% F1) BONUS: Vytvor anonymnu funkciu, ktora spocita determinant
% matice 2x2 bez pouzitia det(). Over ju na matici P.
% Pomoc: mojDet2 = @(Z) ...



%% F2) BONUS: Zisti hodnost (rank) regularnej a singularnej matice.
% Ako suvisi hodnost s determinantom?
