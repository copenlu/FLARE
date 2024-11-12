% Define initial count of fries Griffin had
initial_fries(24).
% Define the number of fries Kyle took
kyle_took(KyleTook) :-
KyleTook is 5.
% Define the number of fries Billy took
billy_took(KyleTook, BillyTook) :-
billy_took(KyleTook, BillyTook) :- KyleTook is 5, BillyTook is 2 * KyleTook.
% Define the number of fries Ginger gave Griffin
ginger_gave(GingerGave) :-
GingerGave is 1.
% Define the number of fries Colby took from Griffin
colby_took(KyleTook, ColbyTook) :-
ColbyTook is KyleTook - 3.
% Define the final count of fries with Griffin
final_fries(27).
% Define the predicate to calculate how many fries Ginger gave Griffin
calculate_ginger_fries(GingerGave) :-
initial_fries(InitialFries),
kyle_took(KyleTook),
billy_took(KyleTook, BillyTook),
ginger_gave(GingerGave),
colby_took(KyleTook, ColbyTook),
final_fries(FinalFries),
GriffinFinal is InitialFries - KyleTook - BillyTook + GingerGave - ColbyTook,
FinalFries = GriffinFinal.
% Query predicate to run the program and get the result
query(GingerGave) :-
calculate_ginger_fries(GingerGave).
% Uncomment the following line to run the query
% ?- query(GingerGave).
%query(GingerGave).