% Define monthly banana consumption for monkeys, gorillas, and baboons
monkeys_bananas(200).
gorillas_bananas(400).
baboons_bananas(100).
% Calculate total monthly banana consumption
total_monthly_bananas(Total) :-
monkeys_bananas(Monkeys),
gorillas_bananas(Gorillas),
baboons_bananas(Baboons),
Total is Monkeys + Gorillas + Baboons.
% Calculate total bananas needed for 2 months
total_bananas_2_months(Total) :-
total_monthly_bananas(MonthlyTotal),
Total is MonthlyTotal * 2.
% Query to find the total bananas needed for 2 months
query(Total) :-
total_bananas_2_months(Total).
% Uncomment the following line to run the query and find out the total bananas needed for 2 months.
% ?- query(Total).
%query(Total).