% Assumed atoms/predicates
theme(macbeth, ambition).
theme(macbeth, power).
theme(alice, identity).
theme(alice, curiosity).
book_theme(Book, Theme) :- theme(Book, Theme).
common_theme(Theme) :- theme(macbeth, Theme), theme(alice, Theme).
% Query predicate
query :- common_theme(Theme).
%query.