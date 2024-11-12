% Define the crucifixion icon and its general acceptance based on religion
icon(crucifixion).
religion(christianity).
religion(islam).
religion(judaism).
religion(hinduism).
religion(buddhism).
religion(secular).
% Assumed acceptance of crucifixion icon in different religions
acceptance(christianity, crucifixion, high).
acceptance(islam, crucifixion, low). % Assumed based on religious sensitivities
acceptance(judaism, crucifixion, low). % Assumed based on religious sensitivities
acceptance(hinduism, crucifixion, medium). % Assumed neutral tolerance
acceptance(buddhism, crucifixion, medium). % Assumed neutral tolerance
acceptance(secular, crucifixion, medium). % Assumed based on secular indifference to religious symbols
% Define various settings where the icon might be worn
setting(school).
setting(workplace).
setting(public_space).
setting(religious_site).
% Assumed norms for wearing religious symbols in different settings
norm(school, religious_symbols, restricted).
norm(workplace, religious_symbols, restricted).
norm(public_space, religious_symbols, unrestricted).
norm(religious_site, religious_symbols, unrestricted).
% Define the relationship between settings, religions, and norm compliance
setting_acceptance(Setting, Religion, AcceptanceLevel) :-
norm(Setting, religious_symbols, Norm),
acceptance(Religion, crucifixion, ReligionAcceptance),
( (Norm = unrestricted, AcceptanceLevel = high);
(Norm = restricted, ReligionAcceptance = high, AcceptanceLevel = medium);
(Norm = restricted, ReligionAcceptance \= high, AcceptanceLevel = low) ).
% Evaluate overall social acceptability of wearing the crucifixion icon
social_acceptability(Religion, Setting, Acceptable) :-
setting_acceptance(Setting, Religion, AcceptanceLevel),
Acceptable = (AcceptanceLevel = high).
% Query to determine if it is socially acceptable to wear the crucifixion icon in a given setting for a given religion
query :-
religion(X), % Choose a religion
setting(Y), % Choose a setting
social_acceptability(X, Y, true).
% Uncomment the line below to run the query
 :- query.
%query.