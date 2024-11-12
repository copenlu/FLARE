% Define the background of Charles Manson
criminal(charles_manson).
% Define his death and the attention it garnered
died(charles_manson, 2017).
public_attention(charles_manson, high).
% Legal claims for Manson's body
% Assumed atom/predicate: no family members or followers claimed the body
legal_claim(charles_manson, none). % Assumed no legal claims were successful
% Family and associate responses
% Assumed atom/predicate: family and close associates did not want the body
family_response(charles_manson, unwanted).
associate_response(charles_manson, unwanted).
% Public sentiment
% Assumed atom/predicate: general public sentiment was negative
public_sentiment(charles_manson, negative).
% Final resolution of Manson's body
% Assumed atom/predicate: the state had to take responsibility
final_resolution(charles_manson, state_responsibility).
% Predicate to determine if Manson's body was unwanted
body_unwanted(Person) :-
criminal(Person),
died(Person, _),
public_attention(Person, _),
legal_claim(Person, none),
family_response(Person, unwanted),
associate_response(Person, unwanted),
public_sentiment(Person, negative),
final_resolution(Person, state_responsibility).
% Query to check if Manson's body was unwanted
query :- body_unwanted(charles_manson).
% Uncomment the following line to run the query
 :- query.
%query.