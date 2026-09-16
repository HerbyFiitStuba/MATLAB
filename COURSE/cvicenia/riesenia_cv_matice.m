%% RIESENIA - Cvicenia: Matice v MATLABe
% SPSE Karola Adlera 5
% Nadvazuje na teoreticku prednasku "Teoria matic".

clc; clear;

%% A1) Nasobenie matic a kontrola rozmerov
A = [1 2 3; 4 5 6];
B = [7 8; 9 10; 11 12];
size(A)
size(B)
% vnutorne rozmery: 3 = 3 -> nasobenie je mozne
C = A*B

%% A2) Nasobenie v opacnom poradi
% B je 3x2, A je 2x3 -> vnutorne rozmery 2 = 2, takze to ide,
% ale vysledok ma iny rozmer (3x3) a ine cisla!
D = B*A
size(D)

%% A3) A*A neexistuje
% A je 2x3, vnutorne rozmery by boli 3 a 2 -> nesedia
try
    A*A
catch e
    disp('CHYBA:')
    disp(e.message)
end

%% A4) Transpozicia
At = A'
% dvojita transpozicia vrati povodnu maticu
isequal((A')', A)

%% A5) Vlastnost (A*B)' = B'*A'
lavaStrana = (A*B)'
pravaStrana = B'*A'
isequal(lavaStrana, pravaStrana)

%% B1) Diagonala a stopa
D1 = [2 7 1; 0 5 3; 4 6 9];
diag(D1)'         % hlavna diagonala ako riadok
trace(D1)
sum(diag(D1))     % to iste, len inak spocitane

%% B2) Diagonalna matica z vektora
diag([3 5 7])

%% B3) Jednotkova matica
I4 = eye(4);
M = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
isequal(M*I4, M)  % nasobenie jednotkovou maticou nic nezmeni

%% B4) Trojuholnikove casti matice
triu(M)           % horna trojuholnikova
tril(M)           % dolna trojuholnikova

%% C1) Determinant 2x2
P = [3 1; 2 4];
det(P)
% rucne podla vzorca ad - bc:
P(1,1)*P(2,2) - P(1,2)*P(2,1)

%% C2) Determinant 3x3 z prednasky
T = [1 2 3; 0 1 4; 5 6 0];
det(T)

%% C3) Determinant 4x4 z prednasky
A4 = [1 2 0 1;
      3 0 2 1;
      2 1 3 0;
      0 1 0 2];
det(A4)           % ma vyjst -22

%% C4) Overenie Laplaceovho rozvoja podla 4. riadku
% minory: skrtneme 4. riadok a prislusny stlpec
M42 = det(A4([1 2 3],[1 3 4]))
M44 = det(A4([1 2 3],[1 2 3]))
% znamienka pre 4. riadok: - + - +, prvky su 0 1 0 2
rozvoj = 1*M42 + 2*M44
% porovnanie s det() - pouzivame toleranciu, nie ==
abs(rozvoj - det(A4)) < 1e-10

%% C5) Singularna matica
S = [1 2 3; 2 4 6; 7 8 9];   % druhy riadok je dvojnasobok prveho
det(S)                       % vyjde (takmer) nula

%% C6) Vlastnosti determinantu
X = [2 1; 5 3];
Y = [1 4; 2 7];
det(X') - det(X)                 % det(A') = det(A)
det(X*Y) - det(X)*det(Y)         % det(A*B) = det(A)*det(B)

%% C7) Determinant trojuholnikovej matice
U = [2 9 4; 0 3 7; 0 0 5];
det(U)
prod(diag(U))     % sucin prvkov na diagonale - to iste

%% D1) Inverzna matica a skuska
G = [4 7; 2 6];
det(G)
Ginv = inv(G)
G*Ginv            % ma vyjst jednotkova matica

%% D2) Porovnanie s rucnym vzorcom
a = G(1,1); b = G(1,2); c = G(2,1); d = G(2,2);
rucne = (1/det(G)) * [d -b; -c a]
isequal(round(rucne,10), round(Ginv,10))

%% D3) Inverzna k singularnej matici
% MATLAB vypise varovanie a vrati Inf
warning('off','MATLAB:singularMatrix');
warning('off','MATLAB:nearlySingularMatrix');
Sinv = inv(S)
warning('on','MATLAB:singularMatrix');
warning('on','MATLAB:nearlySingularMatrix');

%% D4) Dvojita inverzia
max(max(abs(inv(inv(G)) - G)))   % rozdiel je zanedbatelny

%% D5) Vlastnost (A*B)^-1 = B^-1 * A^-1
lava = inv(X*Y);
prava = inv(Y)*inv(X);
max(max(abs(lava - prava))) < 1e-10

%% D6) Pozor na presnost
% A*inv(A) casto NIE JE presne jednotkova matica
E = G*inv(G);
E == eye(2)                      % niektore prvky nemusia sediet presne
abs(E - eye(2)) < 1e-10          % takto sa to porovnava spravne

%% E1) Sustava rovnic cez lave delenie
Ag = [1 2 1; 2 1 -1; 3 -1 2];
bg = [8; 1; 7];
x = Ag \ bg

%% E2) To iste cez inverznu maticu
x2 = inv(Ag) * bg
max(abs(x - x2))

%% E3) Overenie riesenia dosadenim
Ag*x              % ma vyjst povodne b = [8; 1; 7]
max(abs(Ag*x - bg)) < 1e-10

%% E4) Gaussova eliminacia cez rref
rref([Ag bg])
% posledny stlpec obsahuje riesenie, vlavo je jednotkova matica

%% E5) Sustava, ktora nema jednoznacne riesenie
As = [1 2; 2 4];      % druhy riadok je nasobok prveho
bs = [3; 7];
det(As)               % nula -> singularna
rref([As bs])         % posledny riadok hovori 0 = 1, teda spor

%% E6) Ktory sposob je rychlejsi
n = 500;
R = rand(n) + n*eye(n);   % pripocitanim diagonaly zabezpecime "peknu" maticu
v = rand(n,1);

% DOLEZITE: prve volanie je vzdy pomalsie (rezia na pozadi),
% preto si oba postupy najprv "zahrejeme" a az potom merame.
x1 = R\v;  x2 = inv(R)*v;

t1 = 0; t2 = 0;
for k = 1:3
    tic; x1 = R\v;       t1 = t1 + toc;
    tic; x2 = inv(R)*v;  t2 = t2 + toc;
end
fprintf('A\\b       priemerne %.4f s\n', t1/3);
fprintf('inv(A)*b  priemerne %.4f s\n', t2/3);
% Lave delenie je rychlejsie - nepocita celu inverznu maticu,
% co je zbytocny medzikrok. Preto sa odporuca A\b.

%% F1) BONUS: vlastny vypocet determinantu 2x2
mojDet2 = @(Z) Z(1,1)*Z(2,2) - Z(1,2)*Z(2,1);
mojDet2(P)
det(P)

%% F2) BONUS: hodnost matice
rank(Ag)          % 3 = plna hodnost, matica je regularna
rank(S)           % 2 < 3, matica je singularna
