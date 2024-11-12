main :- catch(query, E, (print_message(error, E), fail)),writeln(true),halt.
main :- writeln(false),halt(1).
% main