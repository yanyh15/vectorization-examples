CC=gcc-10
CFLAGS=-march=armv8-a+sve

ARMIE=armie
VECTOR_SIZE=256

.PHONY: sve1
sve1:
	$(CC) sve1.c $(CFLAGS) -o sve1
	$(ARMIE) -msve-vector-bits=$(VECTOR_SIZE) ./sve1
    
.PHONY: sum1
sum1:
	$(CC) sum1.c $(CFLAGS) -o sum1
	$(ARMIE) -msve-vector-bits=$(VECTOR_SIZE) ./sum1
	
.PHONY: cmp1
cmp1:
	$(CC) cmp1.c $(CFLAGS) -o cmp1
	$(ARMIE) -msve-vector-bits=$(VECTOR_SIZE) ./cmp1
    
clean:
	rm sve1 \
		sum1 \
		cmp1
