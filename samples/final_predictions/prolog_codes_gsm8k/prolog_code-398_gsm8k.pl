% Predicate to calculate the total number of messages delivered to Ms. Thompson and Mr. Yu
messages_to_mryu(MessagesToThompson, MessagesToYu, TotalMessages) :-
MessagesToYu is MessagesToThompson / 3,  % Calculate messages delivered to Mr. Yu
TotalMessages is MessagesToThompson + MessagesToYu.  % Calculate total messages delivered
% Main predicate to calculate the total number of messages delivered by James
query_total_messages(TotalMessages) :-
messages_to_mryu(66, MessagesToYu, TotalMessages).  % Query with 66 messages to Ms. Thompson
% Uncomment the following line to run the query
% ?- query_total_messages(TotalMessages).
% ?- query_total_messages(TotalMessages).