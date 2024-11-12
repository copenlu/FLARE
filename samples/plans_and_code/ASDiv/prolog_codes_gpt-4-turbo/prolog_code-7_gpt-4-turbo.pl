% Calculate payment from the first client
client1_payment(Dashboard, Payment) :-
Payment is Dashboard / 2.
% Calculate payment from the second client
client2_payment(Client1Payment, Payment) :-
Payment is Client1Payment + (2/5 * Client1Payment).
% Calculate payment from the third client
client3_payment(Client1Payment, Client2Payment, Payment) :-
Payment is 2 * (Client1Payment + Client2Payment).
% Calculate the total dashboard amount after all payments
total_dashboard_after_payments(InitialDashboard, FinalDashboard) :-
client1_payment(InitialDashboard, Client1Payment),
client2_payment(Client1Payment, Client2Payment),
client3_payment(Client1Payment, Client2Payment, Client3Payment),
FinalDashboard is InitialDashboard + Client1Payment + Client2Payment + Client3Payment.
% Predicate to execute and find the result
query :-
InitialDashboard = 4000,  % Assumed initial dashboard balance
total_dashboard_after_payments(InitialDashboard, FinalDashboard),
format('Total money in dashboard after all payments: ~w', [FinalDashboard]).
% Uncomment the line below to run the query and get the result
 :- query.
%query.