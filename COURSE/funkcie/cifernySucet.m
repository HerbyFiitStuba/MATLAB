function s = cifernySucet(n)
%CIFERNYSUCET Spocita cifry cisla.
%   CIFERNYSUCET(n) vrati sucet vsetkych cifier cisla n.
%   Ukazka cyklu while - vopred nevieme, kolko cifier cislo ma.
%
%   Priklad:
%       cifernySucet(4728)   % vrati 21

    s = 0;
    zvysok = abs(n);
    while zvysok > 0
        s = s + mod(zvysok, 10);      % posledna cifra
        zvysok = floor(zvysok / 10);  % odstranime poslednu cifru
    end
end
