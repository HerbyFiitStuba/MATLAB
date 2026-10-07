function vysledok = obratText(text)
%OBRATTEXT Obrati poradie znakov v texte.
%   OBRATTEXT(text) vrati text odzadu. Vyuziva, ze retazec je vektor.
%
%   Priklad:
%       obratText('MATLAB')   % vrati 'BALTAM'

    vysledok = text(end:-1:1);
end
