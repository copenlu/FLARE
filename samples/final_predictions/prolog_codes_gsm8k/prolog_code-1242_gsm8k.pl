% Define a rule to calculate the capacity of a class based on total capacity and fraction
class_capacity(TotalCapacity, Fraction, Capacity) :-
Capacity is TotalCapacity * Fraction.
% Define a rule to calculate the total capacity of a school based on class capacities
school_capacity(Class1Capacity, Class2Capacity, CombinedCapacity) :-
CombinedCapacity is Class1Capacity + Class2Capacity.
% Given values
ali_class_capacity(120).  % Capacity of Ali's class
john_class_fraction(1/8).  % Fraction of Ali's class capacity for John's classes
john_num_classes(2).  % Number of classes John has
% Calculate capacities
class_capacity(ali_class_capacity(120), 1, AliClassCapacity),  % Calculate Ali's class capacity
class_capacity(ali_class_capacity(120), john_class_fraction(1/8), JohnClassCapacity),  % Calculate John's class capacity
class_capacity(JohnClassCapacity, john_num_classes(2), TotalJohnCapacity),  % Calculate total capacity of John's classes
school_capacity(AliClassCapacity, TotalJohnCapacity, CombinedCapacity).  % Calculate combined capacity of both schools
% Query to find the combined capacity
query(CombinedCapacity) :-
CombinedCapacity.
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(CombinedCapacity).
%query(CombinedCapacity).