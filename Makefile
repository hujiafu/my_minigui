LIB_DIR =/usr/local/minigui/cross/arm/cortex-m3/lib
BIN_DIR =/usr/local/minigui/cross/arm/cortex-m3/bin
OBJECT_DIR =./
APP_DIR =./
APP_INCLUDE =/usr/local/minigui/cross/arm/cortex-m3/include
CFLAGS += -I ${APP_INCLUDE}
CFLAGS += -mcpu=cortex-m3 -mthumb

CC=arm-uclinuxeabi-gcc
AR=arm-uclinuxeabi-ar rc

SRC_OBJECT = ${APP_DIR}my_minigui_input.c
OBJECT = my_minigui_input.o

LIB_OBJECT = libmyguiinput.a

$(LIB_OBJECT):$(OBJECT)
	$(AR) $(LIB_OBJECT) $(OBJECT)
	cp $(LIB_OBJECT) $(LIB_DIR)

$(OBJECT):$(SRC_OBJECT)
	$(CC) -c $(SRC_OBJECT) $(CFLAGS)

clean:
	rm *.o *.a
