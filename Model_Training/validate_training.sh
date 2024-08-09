for A in $(seq 400 433); do echo $A; python test_model.py 7 $A   2>/dev/null | tee results;done;

