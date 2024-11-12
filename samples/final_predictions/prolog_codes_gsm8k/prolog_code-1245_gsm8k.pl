% Define a predicate to calculate the total volume of the jar
total_volume_jar(Volume) :- Volume is 6 * 6 * 15.
% Define a predicate to calculate the volume occupied by jelly beans with 80% efficiency
volume_jelly_beans(Volume) :- total_volume_jar(TotalVolume), Volume is TotalVolume * 0.80.
% Define a predicate to calculate the volume occupied by red jelly beans based on Tim's estimate
volume_red_jelly_beans(Volume) :- volume_jelly_beans(TotalVolume), Volume is TotalVolume * 0.30.
% Define a predicate to convert the volume of red jelly beans to the number of jelly beans
num_red_jelly_beans(NumBeans) :- volume_red_jelly_beans(Volume), NumBeans is Volume / 0.15.
% Define a predicate to calculate the absolute difference between Tim's estimate and the actual number of red jelly beans
difference_estimate_actual(Difference) :- num_red_jelly_beans(NumBeans), Difference is abs(900 - NumBeans).
% Define a query predicate to find out how far off Tim's guess was
query(Difference) :-
difference_estimate_actual(Difference).
% Uncomment the line below to run the query in SWI-Prolog
% query(Difference).
%query(Difference).