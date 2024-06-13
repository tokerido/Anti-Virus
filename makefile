all: BubbleSort AntiVirus

BubbleSort: BubbleSort.o

	gcc -g -m32 -Wall -o BubbleSort BubbleSort.o

BubbleSort.o: BubbleSort.c

	gcc -m32 -g -Wall -c -o BubbleSort.o BubbleSort.c

AntiVirus: AntiVirus.o

	gcc -g -m32 -Wall -o AntiVirus AntiVirus.o

AntiVirus.o: AntiVirus.c

	gcc -m32 -g -Wall -c -o AntiVirus.o AntiVirus.c

valgrid:

	valgrind --leak-check=full --show-reachable=yes --track-origins=yes ./AntiVirus infected

.PHONY: clean

clean:

	rm -f *.o BubbleSort AntiVirus