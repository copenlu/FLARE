% Define the rule for calculating emails sent to boyfriend
emails_to_boyfriend(TotalEmails, BoyfriendEmails) :-
WorkEmails = 7,  % Assumed atom/predicate
NonWorkEmails is TotalEmails - WorkEmails,
FamilyEmails is NonWorkEmails * 2 // 3,
BoyfriendEmails is (NonWorkEmails - FamilyEmails) // 3.
% Predicate to encapsulate the entire calculation and output the number of emails to boyfriend
calculate_emails_to_boyfriend(BoyfriendEmails) :-
emails_to_boyfriend(16, BoyfriendEmails).  % Total emails sent per day is given as 16
% Query to find the number of emails Robyn sends to her boyfriend
query(BoyfriendEmails) :-
calculate_emails_to_boyfriend(BoyfriendEmails).
% Uncomment the following line to run the query
% ?- query(BoyfriendEmails).
%query(BoyfriendEmails).