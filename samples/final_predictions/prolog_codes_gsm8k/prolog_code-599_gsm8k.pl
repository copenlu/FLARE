% Define the rule to calculate the total number of contacts in 2 boxes
total_contacts_in_2_boxes(Boxes, TotalContacts) :-
TotalContacts is Boxes * 90.
% Define the rule to calculate the total cost after discount
total_cost_after_discount(BoxPrice, Discount, TotalCost) :-
TotalCost is (BoxPrice * (1 - Discount)) * 2.
% Define the rule to calculate the cost per pair of contacts
cost_per_pair_of_contacts(TotalCost, TotalContacts, CostPerPair) :-
CostPerPair is TotalCost / TotalContacts.
% Given values
BoxPrice = 100.00,  % Assumed atom/predicate
Discount = 0.10,    % Assumed atom/predicate
Boxes = 2.          % Assumed atom/predicate
% Query to find the cost per pair of contacts
query(CostPerPair) :-
total_contacts_in_2_boxes(Boxes, TotalContacts),
total_cost_after_discount(BoxPrice, Discount, TotalCost),
cost_per_pair_of_contacts(TotalCost, TotalContacts, CostPerPair).
% Uncomment the following line to run the query
% ?- query(CostPerPair).
%query(CostPerPair).