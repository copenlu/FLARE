% Facts
cpu_type(desktop, high_performance).
cpu_type(laptop, low_power).
system_constraint(laptop, limited_space).
system_constraint(desktop, ample_space).
cooling_requirement(high_performance, high).
% Rules
needs_dedicated_fan(CPU) :- cpu_type(CPU, Type), cooling_requirement(Type, high), not(system_constraint(CPU, passive_cooling)).
% Query Predicate
query :- needs_dedicated_fan(desktop), needs_dedicated_fan(laptop).
%query.