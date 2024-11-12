% Defining rulers
ruler('Suleiman the Magnificent', 1520, 1566).
ruler('Selim II', 1566, 1574).
ruler('Murad III', 1574, 1595).
% Defining events
event('Conquest of Jerusalem', 1517, 'Jerusalem was conquered by the Ottoman Empire').
event('Construction of Suleymaniye Mosque', 1550, 'Suleiman ordered the construction of the Suleymaniye Mosque in Istanbul').
% Querying the knowledge base
query :- ruler(Name, StartYear, EndYear), StartYear =< 1550, EndYear >= 1550.
%query.