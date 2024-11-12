% Define risks associated with mail carriers
risk(mail_carrier, dog_bites).
risk(mail_carrier, slips_and_falls).
risk(mail_carrier, traffic_accidents).
risk(mail_carrier, criminal_assaults).
% Define risks for other high-risk jobs for comparison
risk(construction_worker, falls).
risk(construction_worker, machinery_accidents).
risk(police_officer, violence).
risk(police_officer, traffic_accidents).
risk(firefighter, burns).
risk(firefighter, smoke_inhalation).
% Assumed statistical data on injuries and fatalities per profession
injury_rate(mail_carrier, 15). % Assumed rate per 1000 employees
injury_rate(construction_worker, 30).
injury_rate(police_officer, 25).
injury_rate(firefighter, 20).
fatal_rate(mail_carrier, 1). % Assumed rate per 10000 employees
fatal_rate(construction_worker, 10).
fatal_rate(police_officer, 8).
fatal_rate(firefighter, 5).
% Historical changes affecting risk (simplified)
safety_improvement(mail_carrier, 1990, improved_training).
safety_improvement(mail_carrier, 2000, better_equipment).
% Public perception (simplified, assumed)
public_perception(mail_carrier, moderately_dangerous). % Assumed perception
% Compare mail carrier danger to other professions
more_dangerous_than_mail_carrier(Profession) :-
injury_rate(Profession, Rate),
injury_rate(mail_carrier, MailRate),
Rate > MailRate,
fatal_rate(Profession, FatalRate),
fatal_rate(mail_carrier, MailFatalRate),
FatalRate > MailFatalRate.
% Determine if mail carrier is considered one of the most dangerous jobs
is_one_of_most_dangerous_jobs(Job) :-
not(more_dangerous_than_mail_carrier(Job)),
public_perception(Job, Perception),
member(Perception, [very_dangerous, extremely_dangerous]).
% Query to determine if mail carrier is considered one of the most dangerous jobs
query :-
is_one_of_most_dangerous_jobs(mail_carrier).
% Uncomment the line below to run the query in Prolog environment
 :- query.
%query.