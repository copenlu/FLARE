% Define the total number of applicants
applicants(100).
% Calculate the number of applicants who receive interviews (30% of total applicants)
interviewees(Applicants, Interviewees) :-
Interviewees is round(0.3 * Applicants).
% Calculate the number of applicants who receive job offers (20% of interviewees)
job_offer_recipients(Interviewees, JobOfferRecipients) :-
JobOfferRecipients is round(0.2 * Interviewees).
% Calculate the number of applicants who accept the job offer (1/3 of job offer recipients)
accepted_candidates(JobOfferRecipients, AcceptedCandidates) :-
AcceptedCandidates is round((1/3) * JobOfferRecipients).
% Query predicate to find the number of applicants who accept the job offer
query(AcceptedCandidates) :-
applicants(TotalApplicants),
interviewees(TotalApplicants, Interviewees),
job_offer_recipients(Interviewees, JobOfferRecipients),
accepted_candidates(JobOfferRecipients, AcceptedCandidates).
% Uncomment the line below to run the query
% query(AcceptedCandidates).
%query(AcceptedCandidates).