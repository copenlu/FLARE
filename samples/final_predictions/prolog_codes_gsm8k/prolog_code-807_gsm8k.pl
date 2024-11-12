% Calculate the number of OLED TVs sold
calculate_oled_sales(TotalTvs, OledTvs) :-
SmartTvs is TotalTvs // 4, % Calculate number of smart TVs
AnalogTvs is TotalTvs // 8, % Calculate number of analog TVs
OledTvs is TotalTvs - SmartTvs - AnalogTvs. % Calculate number of OLED TVs
% Query to find the number of OLED TVs sold
query(OledTvs) :-
calculate_oled_sales(40, OledTvs).
% Uncomment the following line to run the query and calculate the number of OLED TVs sold
% ?- query(OledTvs).
%query(OledTvs).