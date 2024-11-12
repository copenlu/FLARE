% Define the rule to calculate the number of days needed to upload all photos
upload_photos(PhotosTaken, PhotosPerBatch, BatchesPerDay, Days) :-
PhotosPerDay is PhotosPerBatch * BatchesPerDay,  % Calculate the total number of photos uploaded in one day
Days is PhotosTaken / PhotosPerDay.             % Calculate the number of days needed to upload all photos
% Query to find the number of days needed to upload all photos
query_upload_photos(Days) :-
upload_photos(210, 7, 6, Days).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_upload_photos(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).