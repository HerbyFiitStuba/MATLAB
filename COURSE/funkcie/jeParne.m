function vysledok = jeParne(n)
%JEPARNE Zisti, ci je cislo parne.
%   JEPARNE(n) vrati true (1) ak je n parne, inak false (0).
%
%   Priklad:
%       jeParne(10)   % vrati 1
%       jeParne(7)    % vrati 0

    if mod(n, 2) == 0
        vysledok = true;
    else
        vysledok = false;
    end
end
