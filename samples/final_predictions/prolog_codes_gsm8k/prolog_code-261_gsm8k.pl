% Define a rule to calculate the number of times Anne went down the slide
% Params: MitchelTimes, AnneTimes
anne_times(MitchelTimes, AnneTimes) :-
AnneTimes is MitchelTimes - (0.3 * MitchelTimes).  % Anne went down 30% less than Mitchel
% Define a rule to calculate the number of times Robert went down the slide
% Params: AnneTimes, RobertTimes
robert_times(AnneTimes, RobertTimes) :-
RobertTimes is AnneTimes * 4.  % Robert went down 4 times as much as Anne
% Main predicate to compute the number of times Robert went down the water slide
% Params: RobertTimes
calculate_robert_times(RobertTimes) :-
% Constants
MitchelTimes = 30,  % Mitchel went down 30 times
% Calculate Anne's times
anne_times(MitchelTimes, AnneTimes),
% Calculate Robert's times
robert_times(AnneTimes, RobertTimes).
% Query predicate to get the number of times Robert went down the water slide
query(RobertTimes) :-
calculate_robert_times(RobertTimes).
% Uncomment the following line to run the query
% query(RobertTimes).
%query(RobertTimes).