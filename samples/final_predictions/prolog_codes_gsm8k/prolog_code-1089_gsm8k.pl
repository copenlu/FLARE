% Predicate to calculate the number of emails James responds to in a day
% Params: TotalEmailsPerDay, ResponseEmailsPerDay
response_emails_per_day(TotalEmailsPerDay, ResponseEmailsPerDay) :-
NonResponseEmails is 0.2 * TotalEmailsPerDay,  % Calculate 20% of total emails as non-response emails
ResponseEmailsPerDay is TotalEmailsPerDay - NonResponseEmails.  % Calculate response emails by subtracting non-response emails
% Predicate to calculate the number of emails James responds to in a 5-day work week
% Params: ResponseEmailsPerDay, TotalResponseEmails
total_response_emails_per_week(ResponseEmailsPerDay, TotalResponseEmails) :-
TotalResponseEmails is ResponseEmailsPerDay * 5.  % Calculate total response emails in a 5-day work week
% Main predicate to compute the total number of response emails in a 5-day work week
% Params: TotalResponseEmails
calculate_total_response_emails_per_week(TotalResponseEmails) :-
TotalEmailsPerDay = 80,  % Assumed atom: Total emails James receives per day
response_emails_per_day(TotalEmailsPerDay, ResponseEmailsPerDay),  % Calculate response emails per day
total_response_emails_per_week(ResponseEmailsPerDay, TotalResponseEmails).  % Calculate total response emails in a 5-day work week
% Query predicate to get the total number of response emails in a 5-day work week
query(TotalResponseEmails) :-
calculate_total_response_emails_per_week(TotalResponseEmails).
% Uncomment the following line to run the query
% query(TotalResponseEmails).
%query(TotalResponseEmails).