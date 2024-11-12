% Predicate to calculate the population of a country
% Params: NumCities, PopulationPerCity, TotalPopulation
country_population(NumCities, PopulationPerCity, TotalPopulation) :-
TotalPopulation is NumCities * PopulationPerCity.
% Predicate to calculate the total population of South America
% Params: NumCountries, PopulationPerCountry, TotalPopulationSA
total_population_sa(NumCountries, PopulationPerCountry, TotalPopulationSA) :-
TotalPopulationSA is NumCountries * PopulationPerCountry.
% Main predicate to compute the total population of South America
% Params: TotalPopulationSA
calculate_total_population_sa(TotalPopulationSA) :-
% Constants
NumCitiesPerCountry = 5,
PopulationPerCity = 1000,
NumCountriesSA = 26,
% Calculate population per country
country_population(NumCitiesPerCountry, PopulationPerCity, PopulationPerCountry),
% Calculate total population of South America
total_population_sa(NumCountriesSA, PopulationPerCountry, TotalPopulationSA).
% Query predicate to get the total population of South America
query(TotalPopulationSA) :-
calculate_total_population_sa(TotalPopulationSA).
% Uncomment the following line to run the query
% query(TotalPopulationSA).
%query(TotalPopulationSA).