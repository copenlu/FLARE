% Define the rule to calculate the total number of instructions
total_instructions(FirstRecipeInstructions, TotalInstructions) :-
SecondRecipeInstructions is FirstRecipeInstructions * 2,  % Calculate the number of instructions in the second recipe
TotalInstructions is FirstRecipeInstructions + SecondRecipeInstructions.  % Calculate the total number of instructions
% Query to find the total number of instructions when the first recipe has 20 instructions
query_total_instructions(TotalInstructions) :-
total_instructions(20, TotalInstructions).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_instructions(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).