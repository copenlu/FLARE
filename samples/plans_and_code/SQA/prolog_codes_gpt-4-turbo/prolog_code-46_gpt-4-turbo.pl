% Define environmental conditions
uv_index(high).  % High UV index during Burning Man
temperature(high).  % Typically high temperatures
cloud_cover(low).  % Minimal cloud cover
geography(desert).  % Event held in a desert
% Define human behaviors at Burning Man
outdoor_activities(high).  % High level of outdoor activities
clothing_coverage(low).  % Generally minimal clothing coverage
sunscreen_use(variable).  % Variable use of sunscreen among attendees
event_duration(long).  % Event lasts for several days
% General sun exposure guidelines
normal_uv_index(medium).  % Assumed medium UV index under normal circumstances
normal_clothing_coverage(medium).  % Assumed medium clothing coverage normally
normal_sunscreen_use(high).  % Assumed high sunscreen use under normal circumstances
% Sunburn risk assessment rules
sunburn_risk(UV, Temp, Cloud, Clothes, Sunscreen, Duration, Risk) :-
UV = high, Temp = high, Cloud = low, Clothes = low, Sunscreen = variable, Duration = long, Risk = high.
sunburn_risk(UV, Temp, Cloud, Clothes, Sunscreen, Duration, Risk) :-
UV = medium, Temp = medium, Cloud = medium, Clothes = medium, Sunscreen = high, Duration = short, Risk = low.
% Compare Burning Man conditions to normal conditions
burning_man_sunburn_risk(Risk) :-
uv_index(UV),
temperature(Temp),
cloud_cover(Cloud),
clothing_coverage(Clothes),
sunscreen_use(Sunscreen),
event_duration(Duration),
sunburn_risk(UV, Temp, Cloud, Clothes, Sunscreen, Duration, Risk).
normal_sunburn_risk(Risk) :-
normal_uv_index(UV),
normal_clothing_coverage(Clothes),
normal_sunscreen_use(Sunscreen),
sunburn_risk(UV, medium, medium, Clothes, Sunscreen, short, Risk).
% Query to determine if sunburn risk is higher at Burning Man compared to normal
query :-
burning_man_sunburn_risk(burning_man_risk),
normal_sunburn_risk(normal_risk),
burning_man_risk = high,
normal_risk = low.
 :- query.   Uncomment to run the query
%query.