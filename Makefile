TARGET_LIB = libvlib.a
OBJS = vlib.o vram.o image.o shape.o model.o audio.o font.o vfpu.o controller.o debug.o

CFLAGS = -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBS = -lc -lpspvfpu -lpspgu -lpspatrac3 -lpspaudio -lpspdebug -lpsppower -lpsprtc -ljpeg -lpng -lz -lm

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak

install: $(TARGET_LIB)
	@echo "Installing vLib..."
	@cp vlib.h $(PSPSDK)/include
	@cp libvlib.a  $(PSPSDK)/lib
	@echo "...DONE!!!"
