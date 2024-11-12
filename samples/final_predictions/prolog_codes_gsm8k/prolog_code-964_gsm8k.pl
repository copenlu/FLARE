% Define the rule to calculate the number of bottles of apple juice the teacher has for herself
teacher_bottles_remaining(TeacherBottles) :-
Coupons = 9,                    % Assumed number of coupons
Bottles_per_coupon = 100,       % Assumed number of bottles per coupon
Pupils = 29,                    % Assumed number of pupils
Bottles_per_pupil = 2,          % Assumed number of bottles per pupil
Total_bottles_redeemable is Coupons * Bottles_per_coupon,
Total_bottles_needed is Pupils * Bottles_per_pupil,
TeacherBottles is Total_bottles_redeemable - Total_bottles_needed.
% Query to find the number of bottles of apple juice the teacher has for herself
query_teacher_bottles_remaining(TeacherBottles) :-
teacher_bottles_remaining(TeacherBottles).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_teacher_bottles_remaining(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).