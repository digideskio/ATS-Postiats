#
# A simple Makefile
#

######

include $(PATSHOME)/share/atsmake-pre.mk

######

MYTARGET=MYTARGET
MYCCRULE=MYCCRULE

######

include $(PATSHOME)/share/atsmake-post.mk

######

all:: mergesort
mergesort: ; $(PATSCC) -tcats mergesort.dats

all:: \
mergesort_list
mergesort_list: \
  mergesort_list.dats ; $(PATSCC2) -DATS_MEMALLOC_LIBC -o $@ $^
regress:: mergesort_list ; ./$<
cleanall:: ; $(RMF) mergesort_list

all:: \
mergesort_array
mergesort_array: \
  mergesort_array.dats ; $(PATSCC2) -DATS_MEMALLOC_LIBC -o $@ $^
regress:: mergesort_array ; ./$<
cleanall:: ; $(RMF) mergesort_array

######

ATSHOMEQ="$(ATSHOME)"
ATSCC=$(ATSHOMEQ)/bin/atscc
ATSDOC=$(ATSHOMEQ)/bin/atsdoc

######

INPATH :=
INPATH += -I$(PATSHOME)/src
INPATH += -IATS $(PATSHOME) -IATS $(ATSHOME)

LDPATH :=
LDPATH += -L$(PATSHOME)/utils/libatsopt
LDPATH += -L$(PATSHOME)/utils/libatsynmark

LIBRARY :=
LIBRARY := -latsynmark -latsdoc -latsopt -lats -lgmp

######
#
main.exe: \
main_atxt.dats ; \
$(ATSCC) \
  -D_ATS_GCATS \
  $(INPATH) -o $@ $< $(LDPATH) $(LIBRARY)
#
main_atxt.dats: main.atxt; \
$(ATSDOC) --outcode $@ -i main.atxt > main_atxt.txt
#
######

main.html: main.exe ; ./main.exe > $@

######

upload_main: \
  main.html ; \
  scp main.html \
  ats-hwxi,ats-lang@web.sourceforge.net:htdocs/EXAMPLE/EFFECTIVATS/mergesort/

######

cleanats:: ; $(RMF) *_?ats.c
cleanats:: ; $(RMF) main_atxt.txt
cleanats:: ; $(RMF) main_atxt.dats

######

cleanall:: ; $(RMF) main.exe
cleanall:: ; $(RMF) main.html

######

###### end of [Makefile] ######
