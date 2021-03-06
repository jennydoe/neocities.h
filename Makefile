CC=gcc # clang
FLAGS=-lcurl -ljson-c -I/usr/local/include/json-c
DEBUG=-g -DNEOCITIES_DEBUG

all: info list upload

info: info.c neocities.h dtparser.c dtparser.h print_error_msg.h apikey.h
	$(CC) -o $(<:.c=) dtparser.c $< $(FLAGS) $(DEBUG)

list: list.c neocities.h dtparser.c dtparser.h print_error_msg.h apikey.h
	$(CC) -o $(<:.c=) dtparser.c $< $(FLAGS) $(DEBUG)

upload: upload.c neocities.h dtparser.c dtparser.h print_error_msg.h apikey.h
	$(CC) -o $(<:.c=) dtparser.c $< $(FLAGS) $(DEBUG)

clean:
	rm -f info list upload
