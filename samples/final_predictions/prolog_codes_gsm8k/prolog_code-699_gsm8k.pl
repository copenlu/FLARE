% Calculate the original length of the dress
calculate_original_length(OriginalLength) :-
% Let x be the original length
% Shania extended the dress by 50% of its original length
Extension is 0.5 * OriginalLength,
% She also added 20cm to the bottom of the dress
AdditionalLength = 20,
% The final length of the dress is 140cm
FinalLength is OriginalLength + Extension + AdditionalLength,
% Formulate the equation and solve for the original length
OriginalLength is FinalLength - Extension - AdditionalLength.
% Query to calculate the original length of the dress
query(OriginalLength) :-
FinalLength = 140,  % Assumed final length of the dress
calculate_original_length(OriginalLength).
% Uncomment the following line to run the query and calculate the original length of the dress
% ?- query(OriginalLength).
%query(OriginalLength).