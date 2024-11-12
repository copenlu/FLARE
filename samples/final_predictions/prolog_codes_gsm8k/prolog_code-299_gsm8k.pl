% Define the rule to calculate the total number of chocolate bars in the packets
total_bars(TotalBars) :-
TotalBars is 8 * 5.  % 8 packets with 5 bars each
% Define the rule to calculate the total number of chocolate bars consumed by the adults
adult_bars(AdultBars) :-
AdultBars is 4 * 6.  % 4 adults each getting 6 bars
% Calculate the number of chocolate bars each child will receive
chocolate_bars_per_child(ChocolateBarsPerChild) :-
total_bars(TotalBars),
adult_bars(AdultBars),
RemainingBars is TotalBars - AdultBars,
ChildrenCount is 8,
ChocolateBarsPerChild is RemainingBars // ChildrenCount.  % Distribute remaining bars equally among children
% Query predicate to run the program and get the result
query(ChocolateBarsPerChild) :-
chocolate_bars_per_child(ChocolateBarsPerChild).
% Uncomment the following line to run the query
% ?- query(ChocolateBarsPerChild).
%query(ChocolateBarsPerChild).