.PHONY: compile

compile:
	for i in `ls -d */`; do \
	    echo "$${i}src/*.erl ==> $${i}ebin/";	\
	    erlc -W0 -o $${i}ebin $${i}src/*.erl;	\
	done

clean:
	for i in `ls -d */`; do rm $i/ebin/*; done

run:
	@echo "Must include a directory. IE) make run_Ch_6";

run_%:
	@echo "Running: erl -sname neuro_$*@localhost -pa $*/ebin -eval \"[code:ensure_loaded(list_to_atom(filename:rootname(filename:basename(F)))) || F <- filelib:wildcard(\"$*/ebin\" ++ \"/*.beam\")]\"";	\
	erl -sname neuro_$*@localhost -pa $*/ebin -eval "[code:ensure_loaded(list_to_atom(filename:rootname(filename:basename(F)))) || F <- filelib:wildcard(\"$*/ebin\" ++ \"/*.beam\")]";
