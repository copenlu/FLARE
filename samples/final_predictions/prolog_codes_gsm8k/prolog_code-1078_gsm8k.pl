% Predicate to calculate the total number of people after boarding
% Params: InitialPeople, AdditionalPeople, TotalPeople
board_train(InitialPeople, AdditionalPeople, TotalPeople) :-
TotalPeople is InitialPeople + AdditionalPeople.
% Predicate to calculate the total number of people after descending
% Params: InitialPeople, DescendingPeople, TotalPeople
descend_train(InitialPeople, DescendingPeople, TotalPeople) :-
TotalPeople is InitialPeople - DescendingPeople.
% Main predicate to calculate the total number of people on the train at the final stop
% Params: TotalPeopleFinalStop
calculate_final_stop(TotalPeopleFinalStop) :-
InitialPeople = 120,  % Initial number of people on the train
% Actions at each stop
board_train(InitialPeople, 20, TotalPeopleStop1),
descend_train(TotalPeopleStop1, 50, TotalPeopleStop2),
board_train(TotalPeopleStop2, 100, TotalPeopleStop3),
descend_train(TotalPeopleStop3, 80, TotalPeopleFinalStop).
% Query predicate to get the total number of people on the train at the final stop
query(TotalPeopleFinalStop) :-
calculate_final_stop(TotalPeopleFinalStop).
% Uncomment the following line to run the query
% query(TotalPeopleFinalStop).
%query(TotalPeopleFinalStop).