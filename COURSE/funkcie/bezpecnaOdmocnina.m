function v = bezpecnaOdmocnina(x)
%BEZPECNAODMOCNINA Odmocnina s kontrolou vstupu.
%   Ak dostane zaporne cislo, vypise zrozumitelnu chybu namiesto
%   komplexneho vysledku. Ukazka funkcie error a kontroly vstupov.
%
%   Priklad:
%       bezpecnaOdmocnina(16)    % vrati 4
%       bezpecnaOdmocnina(-4)    % vypise chybu

    if ~isnumeric(x)
        error('Vstup musi byt cislo.');
    end

    if x < 0
        error('Nemozno odmocnit zaporne cislo (dostal som %g).', x);
    end

    v = sqrt(x);
end
