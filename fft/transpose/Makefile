KERN=fft
ALG=transpose

CFLAGS?=-O3 -Wall -Wno-unused-label

SRCS=$(KERN).c local_support.c ../../common/support.c
FILES=$(SRCS) $(KERN).h ../../common/support.h

$(KERN): $(FILES) ../../common/harness.c
	$(CC) $(CFLAGS) -I../../common -o $(KERN) $(SRCS) ../../common/harness.c -lm

run: $(KERN) input.data check.data
	./$(KERN) input.data check.data

generate: $(FILES) generate.c
	$(CC) $(CFLAGS) -I../../common -o generate $(SRCS) generate.c -lm

hls: $(KERN).c $(KERN).h
	vitis_hls hls.tcl

clean:
	rm -f $(KERN) generate output.data *.log -r fft_syn 
