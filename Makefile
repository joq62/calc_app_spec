all:
	rm -rf ebin/* src/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
#	adder 
	erlc -o ebin ../../services/adder_src/src/*.erl;
#	divi 
	erlc -o ebin ../../services/divi_src/src/*.erl;
#	multi 
	erlc -o ebin ../../services/multi_src/src/*.erl;
#	application
#	calc
	erlc -o ebin ../../services/calc_src/src/*.erl;
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	echo Done
doc_gen:
	echo glurk not implemented
test:
	rm -rf ebin/* src/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
#	adder 
	erlc -o ebin ../../services/adder_src/src/*.erl;
#	divi 
	erlc -o ebin ../../services/divi_src/src/*.erl;
#	multi 
	erlc -o ebin ../../services/multi_src/src/*.erl;
#	application
#	calc
	erlc -o ebin ../../services/calc_src/src/*.erl;
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	erl -pa ebin -s calc_unit_tests start -sname calc_unit_test -setcookie abc
