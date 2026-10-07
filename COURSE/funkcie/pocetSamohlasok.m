function pocet = pocetSamohlasok(text)
%POCETSAMOHLASOK Spocita samohlasky v texte.
%   POCETSAMOHLASOK(text) prejde text znak po znaku a spocita samohlasky.
%   Velke a male pismena sa nerozlisuju.
%
%   Priklad:
%       pocetSamohlasok('programovanie')   % vrati 6

    samohlasky = 'aeiouy';
    pocet = 0;
    for znak = lower(text)          % retazec char je vektor znakov
        if any(znak == samohlasky)
            pocet = pocet + 1;
        end
    end
end
