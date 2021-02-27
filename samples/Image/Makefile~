TARGET = vLib
OBJS = main.o

CFLAGS = -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBS = -lvlib -lc -lpspgum_vfpu -lpspvfpu -lpspgu -lpspatrac3 -lpspaudio -lpspdebug -lpsppower -lpsprtc -ljpeg -lpng -lz -lm

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = vLib

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
