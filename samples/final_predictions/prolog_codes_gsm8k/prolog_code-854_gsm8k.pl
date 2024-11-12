% Define the lifting height of Pompei as the base height (1 inch)
lift_height(pompei, 1).  % Assumed lifting height of Pompei as 1 inch
% Calculate the lifting height of Saskay based on Pompei's height
lift_height(saskay, Height) :-
lift_height(pompei, PompeiHeight),
Height is 12 * PompeiHeight.
% Calculate the lifting height of Kagiyami based on Saskay's height
lift_height(kagiyami, Height) :-
lift_height(saskay, SaskayHeight),
Height is 4 * SaskayHeight.
% Calculate the lifting height of Naruto based on Kagiyami's height
lift_height(naruto, Height) :-
lift_height(kagiyami, KagiyamiHeight),
Height is 10 * KagiyamiHeight.
% Convert the final lifting height from inches to feet
convert_to_feet(Inches, Feet) :-
Feet is Inches / 12.
% Query predicate to find the height to which Naruto can lift a mountain in feet
query(HeightInFeet) :-
lift_height(naruto, HeightInInches),
convert_to_feet(HeightInInches, HeightInFeet).
% Uncomment the line below to run the query
% query(HeightInFeet).
%query(HeightInFeet).