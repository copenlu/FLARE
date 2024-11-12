% Define the data structure
event(1948-05-14, 'End of British Mandate in Palestine', administrative).
event(1917-11-02, 'Balfour Declaration', diplomatic).
event(1947-11-29, 'UN Partition Plan for Palestine', diplomatic).
event(2021-05-21, 'UK Arms Sales to Israel', military).
% Query capabilities
event(_, 'Balfour Declaration', _).
event(_, _, diplomatic).
% Analysis tools
diplomatic_involvement(Years) :- findall(Year, event(Year, _, diplomatic), Years).
% User interface
query :- event(_, 'Balfour Declaration', _), diplomatic_involvement(Years).
%query.