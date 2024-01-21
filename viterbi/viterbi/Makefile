KERN=viterbi
ALG=viterbi

CFLAGS?=-O3 -Wall -Wno-unused-label

SRCS=$(KERN).c local_support.c ../../common/support.c
FILES=$(SRCS) $(KERN).h ../../common/support.h

$(KERN): $(FILES) ../../common/harness.c
	$(CC) $(CFLAGS) -I../../common -o $(KERN) $(SRCS) ../../common/harness.c

run: $(KERN) input.data check.data
	./$(KERN) input.data check.data

generate: $(FILES) generate.c
	$(CC) $(CFLAGS) -I../../common -o generate $(SRCS) generate.c -lm
	./generate

hls: $(KERN).c $(KERN).h
	hls_operation=2 vitis_hls hls.tcl

csynth: $(KERN).c $(KERN).h
	hls_operation=0 vitis_hls hls.tcl

cosim: $(KERN).c $(KERN).h
	hls_operation=1 vitis_hls hls.tcl 

clean:
	rm -f $(KERN) generate output.data *.log -r viterbi_syn
