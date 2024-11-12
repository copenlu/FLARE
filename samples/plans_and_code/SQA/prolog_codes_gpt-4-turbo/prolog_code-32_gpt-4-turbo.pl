% Define Mitsubishi's business divisions globally
mitsubishi_division(automotive).
mitsubishi_division(electronics).
mitsubishi_division(finance).
% Define Mitsubishi's presence in Brazil by division
mitsubishi_presence_brazil(automotive, sao_paulo).
mitsubishi_presence_brazil(electronics, rio_de_janeiro).
mitsubishi_presence_brazil(finance, sao_paulo).
% Define specific locations for Mitsubishi's operations near Uberlandia
mitsubishi_nearby(uberlandia, sao_paulo).  % Assumed nearby location for logical reasoning
% Define job types available in Mitsubishi's divisions
job_type(automotive, engineer).
job_type(automotive, sales).
job_type(electronics, technician).
job_type(finance, accountant).
% Define remote work capabilities by job type
remote_work(engineer, yes).
remote_work(sales, no).
remote_work(technician, no).
remote_work(accountant, yes).
% Check if there's a Mitsubishi division in a specific city
mitsubishi_in_city(Division, City) :-
mitsubishi_division(Division),
mitsubishi_presence_brazil(Division, City).
% Check for job availability in or near a city
job_available_in_city(Job, City) :-
job_type(Division, Job),
mitsubishi_in_city(Division, City).
% Consider nearby cities as potential job locations
job_available_nearby(Job, City) :-
job_type(Division, Job),
mitsubishi_nearby(City, NearbyCity),
mitsubishi_in_city(Division, NearbyCity).
% Check for remote work possibilities for a job
remote_job_available(Job) :-
job_type(_, Job),
remote_work(Job, yes).
% Main query to determine if someone in Uberlandia can work for Mitsubishi
can_work_for_mitsubishi_in_uberlandia :-
( job_available_in_city(_, uberlandia);
job_available_nearby(_, uberlandia);
remote_job_available(_) ).
% Driver predicate to run the program
query :- can_work_for_mitsubishi_in_uberlandia.
% Uncomment the line below to run the query when the file is consulted
 :- query.
%query.