function vysledok = jePalindrom(text)
%JEPALINDROM Zisti, ci sa text cita rovnako spredu aj odzadu.
%   Medzery a velkost pismen sa ignoruju.
%
%   Priklad:
%       jePalindrom('kajak')        % vrati 1
%       jePalindrom('matlab')       % vrati 0

    ocisteny = lower(strrep(text, ' ', ''));
    vysledok = strcmp(ocisteny, obratText(ocisteny));
end
