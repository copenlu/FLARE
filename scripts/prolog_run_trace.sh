#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <prolog_file>"
    exit 1
fi

PROLOG_FILE="$1"
echo "Prolog file: $PROLOG_FILE"

# Check if the file exists
if [ ! -f "$PROLOG_FILE" ]; then
    echo "File not found: $PROLOG_FILE"
    exit 1
fi

# QUERY=$(awk '/./{line=$0} END{print line}' "$PROLOG_FILE")
QUERY=$(awk '/./{line=$0} END{gsub(/^[[:space:]]*%[[:space:]]*/, "", line); print line}' "$PROLOG_FILE")
QUERY=$(echo $QUERY | sed 's/\.$//')
QUERY=$(echo $QUERY | sed 's/^\?-//')
echo "Query: $QUERY"

if [ -z "$QUERY" ]; then
    echo "No valid query found in the file."
    exit 1
fi

# echo "Query: $QUERY"
TRACE_OUTPUT_FILE=$(echo $PROLOG_FILE | sed 's/\.[^.]*$//')-trace_output.txt
META_FLAGS="set_prolog_flag(color_term,false), leash(-all), trace, protocol(\"$TRACE_OUTPUT_FILE\"),"

# The SWI-Prolog command using dynamic query and specified settings
echo "Running SWI-Prolog file: $PROLOG_FILE"
swipl --quiet --debug-on-interrupt=false --on-error=halt -g "$META_FLAGS forall(call($QUERY), (write(path_result: $QUERY)))." -t "halt(1)" "$PROLOG_FILE"
echo "Trace output written to: $TRACE_OUTPUT_FILE"

# check if the trace output file exists and create an empty file if it doesn't
if [ ! -f "$TRACE_OUTPUT_FILE" ]; then
    touch "$TRACE_OUTPUT_FILE"
fi


#__OLD__
# swipl --quiet -g "$META_FLAGS forall($QUERY, (call($QUERY) -> write(path_result: $QUERY), write(' true.'), nl ; write(path_result: $QUERY), write(' false.'), nl)), halt." -t "halt(1)" "$PROLOG_FILE"


#__OLD__
# PROLOG_COMMAND="\
# $META_FLAGS \
# forall($QUERY, \
#   (   $QUERY -> (call($QUERY) -> write(path_result: $QUERY) ; write(path_result: true)) \
#       ; write(path_result: false) \
#   )), \
# halt."

# # # Execute SWI-Prolog with the constructed command
# swipl --quiet -g "$PROLOG_COMMAND" -t "halt(1)" "$PROLOG_FILE"


# Notify the user of completion


# Prepare the file for the trace output
# OUTPUT_FILE="trace_output.txt"

# # Run the Prolog interpreter with the query and enable tracing
# # We'll use `format/2` to structure the output as variable bindings
# GOAL="trace, forall($QUERY, (print_solution($QUERY), fail; true)), halt."

# swipl --quiet -g "trace, forall($QUERY, (writeq($QUERY), nl, fail; true)), halt." -t "halt(1)" "$PROLOG_FILE" > "$OUTPUT_FILE"
