#
#
# This Makefile is automatically generated
# from executing the following command-line:
#
# make -f Makefile.gen
#
#

######

ATSHOMEQ="$(ATSHOME)"

######

ATSCC=$(ATSHOMEQ)/bin/atscc
ATSOPT=$(ATSHOMEQ)/bin/atsopt
ATSDOC=$(ATSHOMEQ)/bin/atsdoc

######

PATSHOMEQ="$(PATSHOME)"

######

INCLATS:=-IATS $(ATSHOMEQ)

######
#
GCFLAG=
#
# GCFLAG=-D_ATS_GCATS
#
######

CAT=cat
CPF=cp -f
CPRF=cp -rf
RMF=rm -f
RMRF=rm -rf
MAKE=make
TARZVCF=tar -zvcf

######

ATSDIST=ATS-Postiats

######

all::
all_script::

######

all_script:: \
SCRIPT/patsopt_src.bash
SCRIPT/patsopt_src.bash: patsopt_src_atxt.exe ; ./$< > $@
patsopt_src_atxt.dats: ATEXT/patsopt_src.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
patsopt_src_atxt.exe: patsopt_src_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) patsopt_src_atxt.exe
cleanall:: ; $(RMF) HTML/patsopt_src.html
cleanall:: ; $(RMF) SCRIPT/patsopt_src.bash

all_script:: \
SCRIPT/patsopt_src_cboot.bash
SCRIPT/patsopt_src_cboot.bash: patsopt_src_cboot_atxt.exe ; ./$< > $@
patsopt_src_cboot_atxt.dats: ATEXT/patsopt_src_cboot.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
patsopt_src_cboot_atxt.exe: patsopt_src_cboot_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) patsopt_src_cboot_atxt.exe
cleanall:: ; $(RMF) HTML/patsopt_src_cboot.html
cleanall:: ; $(RMF) SCRIPT/patsopt_src_cboot.bash


######

all_script:: \
SCRIPT/atslib_prelude.bash
SCRIPT/atslib_prelude.bash: atslib_prelude_atxt.exe ; ./$< > $@
atslib_prelude_atxt.dats: ATEXT/atslib_prelude.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_prelude_atxt.exe: atslib_prelude_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_prelude_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_prelude.html
cleanall:: ; $(RMF) SCRIPT/atslib_prelude.bash


######

all_script:: \
SCRIPT/atslib_libats.bash
SCRIPT/atslib_libats.bash: atslib_libats_atxt.exe ; ./$< > $@
atslib_libats_atxt.dats: ATEXT/atslib_libats.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_libats_atxt.exe: atslib_libats_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_libats_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_libats.html
cleanall:: ; $(RMF) SCRIPT/atslib_libats.bash

all_script:: \
SCRIPT/atslib_libats_ML.bash
SCRIPT/atslib_libats_ML.bash: atslib_libats_ML_atxt.exe ; ./$< > $@
atslib_libats_ML_atxt.dats: ATEXT/atslib_libats_ML.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_libats_ML_atxt.exe: atslib_libats_ML_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_libats_ML_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_libats_ML.html
cleanall:: ; $(RMF) SCRIPT/atslib_libats_ML.bash

all_script:: \
SCRIPT/atslib_libats_libc.bash
SCRIPT/atslib_libats_libc.bash: atslib_libats_libc_atxt.exe ; ./$< > $@
atslib_libats_libc_atxt.dats: ATEXT/atslib_libats_libc.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_libats_libc_atxt.exe: atslib_libats_libc_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_libats_libc_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_libats_libc.html
cleanall:: ; $(RMF) SCRIPT/atslib_libats_libc.bash

all_script:: \
SCRIPT/atslib_libats_ATS1.bash
SCRIPT/atslib_libats_ATS1.bash: atslib_libats_ATS1_atxt.exe ; ./$< > $@
atslib_libats_ATS1_atxt.dats: ATEXT/atslib_libats_ATS1.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_libats_ATS1_atxt.exe: atslib_libats_ATS1_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_libats_ATS1_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_libats_ATS1.html
cleanall:: ; $(RMF) SCRIPT/atslib_libats_ATS1.bash

all_script:: \
SCRIPT/atslib_libats_BUCS320.bash
SCRIPT/atslib_libats_BUCS320.bash: atslib_libats_BUCS320_atxt.exe ; ./$< > $@
atslib_libats_BUCS320_atxt.dats: ATEXT/atslib_libats_BUCS320.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atslib_libats_BUCS320_atxt.exe: atslib_libats_BUCS320_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atslib_libats_BUCS320_atxt.exe
cleanall:: ; $(RMF) HTML/atslib_libats_BUCS320.html
cleanall:: ; $(RMF) SCRIPT/atslib_libats_BUCS320.bash


######

all_script:: \
SCRIPT/ccomp_atslib.bash
SCRIPT/ccomp_atslib.bash: ccomp_atslib_atxt.exe ; ./$< > $@
ccomp_atslib_atxt.dats: ATEXT/ccomp_atslib.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
ccomp_atslib_atxt.exe: ccomp_atslib_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) ccomp_atslib_atxt.exe
cleanall:: ; $(RMF) HTML/ccomp_atslib.html
cleanall:: ; $(RMF) SCRIPT/ccomp_atslib.bash

all_script:: \
SCRIPT/ccomp_runtime.bash
SCRIPT/ccomp_runtime.bash: ccomp_runtime_atxt.exe ; ./$< > $@
ccomp_runtime_atxt.dats: ATEXT/ccomp_runtime.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
ccomp_runtime_atxt.exe: ccomp_runtime_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) ccomp_runtime_atxt.exe
cleanall:: ; $(RMF) HTML/ccomp_runtime.html
cleanall:: ; $(RMF) SCRIPT/ccomp_runtime.bash


######

all_script:: \
SCRIPT/utils_atscc.bash
SCRIPT/utils_atscc.bash: utils_atscc_atxt.exe ; ./$< > $@
utils_atscc_atxt.dats: ATEXT/utils_atscc.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
utils_atscc_atxt.exe: utils_atscc_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) utils_atscc_atxt.exe
cleanall:: ; $(RMF) HTML/utils_atscc.html
cleanall:: ; $(RMF) SCRIPT/utils_atscc.bash

all_script:: \
SCRIPT/utils_emacs.bash
SCRIPT/utils_emacs.bash: utils_emacs_atxt.exe ; ./$< > $@
utils_emacs_atxt.dats: ATEXT/utils_emacs.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
utils_emacs_atxt.exe: utils_emacs_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) utils_emacs_atxt.exe
cleanall:: ; $(RMF) HTML/utils_emacs.html
cleanall:: ; $(RMF) SCRIPT/utils_emacs.bash


######

all_script:: \
SCRIPT/doc_example_pcpv.bash
SCRIPT/doc_example_pcpv.bash: doc_example_pcpv_atxt.exe ; ./$< > $@
doc_example_pcpv_atxt.dats: ATEXT/doc_example_pcpv.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
doc_example_pcpv_atxt.exe: doc_example_pcpv_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) doc_example_pcpv_atxt.exe
cleanall:: ; $(RMF) HTML/doc_example_pcpv.html
cleanall:: ; $(RMF) SCRIPT/doc_example_pcpv.bash

all_script:: \
SCRIPT/doc_example_misc.bash
SCRIPT/doc_example_misc.bash: doc_example_misc_atxt.exe ; ./$< > $@
doc_example_misc_atxt.dats: ATEXT/doc_example_misc.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
doc_example_misc_atxt.exe: doc_example_misc_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) doc_example_misc_atxt.exe
cleanall:: ; $(RMF) HTML/doc_example_misc.html
cleanall:: ; $(RMF) SCRIPT/doc_example_misc.bash

all_script:: \
SCRIPT/doc_example_intro.bash
SCRIPT/doc_example_intro.bash: doc_example_intro_atxt.exe ; ./$< > $@
doc_example_intro_atxt.dats: ATEXT/doc_example_intro.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
doc_example_intro_atxt.exe: doc_example_intro_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) doc_example_intro_atxt.exe
cleanall:: ; $(RMF) HTML/doc_example_intro.html
cleanall:: ; $(RMF) SCRIPT/doc_example_intro.bash

all_script:: \
SCRIPT/doc_example_atslib.bash
SCRIPT/doc_example_atslib.bash: doc_example_atslib_atxt.exe ; ./$< > $@
doc_example_atslib_atxt.dats: ATEXT/doc_example_atslib.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
doc_example_atslib_atxt.exe: doc_example_atslib_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) doc_example_atslib_atxt.exe
cleanall:: ; $(RMF) HTML/doc_example_atslib.html
cleanall:: ; $(RMF) SCRIPT/doc_example_atslib.bash


######
#
all_script:: \
SCRIPT/atscntrb_pcre.bash
SCRIPT/atscntrb_pcre.bash: atscntrb_pcre_atxt.exe ; ./$< > $@
atscntrb_pcre_atxt.dats: ATEXT/atscntrb_pcre.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_pcre_atxt.exe: atscntrb_pcre_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_pcre_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_pcre.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_pcre.bash

#
all_script:: \
SCRIPT/atscntrb_libgmp.bash
SCRIPT/atscntrb_libgmp.bash: atscntrb_libgmp_atxt.exe ; ./$< > $@
atscntrb_libgmp_atxt.dats: ATEXT/atscntrb_libgmp.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_libgmp_atxt.exe: atscntrb_libgmp_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_libgmp_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_libgmp.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_libgmp.bash

#
all_script:: \
SCRIPT/atscntrb_zeromq.bash
SCRIPT/atscntrb_zeromq.bash: atscntrb_zeromq_atxt.exe ; ./$< > $@
atscntrb_zeromq_atxt.dats: ATEXT/atscntrb_zeromq.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_zeromq_atxt.exe: atscntrb_zeromq_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_zeromq_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_zeromq.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_zeromq.bash

#
all_script:: \
SCRIPT/atscntrb_libcurl.bash
SCRIPT/atscntrb_libcurl.bash: atscntrb_libcurl_atxt.exe ; ./$< > $@
atscntrb_libcurl_atxt.dats: ATEXT/atscntrb_libcurl.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_libcurl_atxt.exe: atscntrb_libcurl_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_libcurl_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_libcurl.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_libcurl.bash

#
all_script:: \
SCRIPT/atscntrb_glib.bash
SCRIPT/atscntrb_glib.bash: atscntrb_glib_atxt.exe ; ./$< > $@
atscntrb_glib_atxt.dats: ATEXT/atscntrb_glib.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_glib_atxt.exe: atscntrb_glib_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_glib_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_glib.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_glib.bash

all_script:: \
SCRIPT/atscntrb_GTK.bash
SCRIPT/atscntrb_GTK.bash: atscntrb_GTK_atxt.exe ; ./$< > $@
atscntrb_GTK_atxt.dats: ATEXT/atscntrb_GTK.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_GTK_atxt.exe: atscntrb_GTK_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_GTK_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_GTK.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_GTK.bash

all_script:: \
SCRIPT/atscntrb_SDL2.bash
SCRIPT/atscntrb_SDL2.bash: atscntrb_SDL2_atxt.exe ; ./$< > $@
atscntrb_SDL2_atxt.dats: ATEXT/atscntrb_SDL2.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_SDL2_atxt.exe: atscntrb_SDL2_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_SDL2_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_SDL2.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_SDL2.bash

all_script:: \
SCRIPT/atscntrb_cairo.bash
SCRIPT/atscntrb_cairo.bash: atscntrb_cairo_atxt.exe ; ./$< > $@
atscntrb_cairo_atxt.dats: ATEXT/atscntrb_cairo.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_cairo_atxt.exe: atscntrb_cairo_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_cairo_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_cairo.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_cairo.bash

#
all_script:: \
SCRIPT/atscntrb_json-c.bash
SCRIPT/atscntrb_json-c.bash: atscntrb_json-c_atxt.exe ; ./$< > $@
atscntrb_json-c_atxt.dats: ATEXT/atscntrb_json-c.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_json-c_atxt.exe: atscntrb_json-c_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_json-c_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_json-c.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_json-c.bash

all_script:: \
SCRIPT/atscntrb_jansson.bash
SCRIPT/atscntrb_jansson.bash: atscntrb_jansson_atxt.exe ; ./$< > $@
atscntrb_jansson_atxt.dats: ATEXT/atscntrb_jansson.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_jansson_atxt.exe: atscntrb_jansson_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_jansson_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_jansson.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_jansson.bash

all_script:: \
SCRIPT/atscntrb_hiredis.bash
SCRIPT/atscntrb_hiredis.bash: atscntrb_hiredis_atxt.exe ; ./$< > $@
atscntrb_hiredis_atxt.dats: ATEXT/atscntrb_hiredis.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_hiredis_atxt.exe: atscntrb_hiredis_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_hiredis_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_hiredis.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_hiredis.bash

#
all_script:: \
SCRIPT/atscntrb_OpenSSL.bash
SCRIPT/atscntrb_OpenSSL.bash: atscntrb_OpenSSL_atxt.exe ; ./$< > $@
atscntrb_OpenSSL_atxt.dats: ATEXT/atscntrb_OpenSSL.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_OpenSSL_atxt.exe: atscntrb_OpenSSL_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_OpenSSL_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_OpenSSL.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_OpenSSL.bash

#
all_script:: \
SCRIPT/atscntrb_JNI.bash
SCRIPT/atscntrb_JNI.bash: atscntrb_JNI_atxt.exe ; ./$< > $@
atscntrb_JNI_atxt.dats: ATEXT/atscntrb_JNI.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_JNI_atxt.exe: atscntrb_JNI_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_JNI_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_JNI.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_JNI.bash

#
all_script:: \
SCRIPT/atscntrb_HTML-emscripten.bash
SCRIPT/atscntrb_HTML-emscripten.bash: atscntrb_HTML-emscripten_atxt.exe ; ./$< > $@
atscntrb_HTML-emscripten_atxt.dats: ATEXT/atscntrb_HTML-emscripten.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_HTML-emscripten_atxt.exe: atscntrb_HTML-emscripten_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_HTML-emscripten_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_HTML-emscripten.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_HTML-emscripten.bash

all_script:: \
SCRIPT/atscntrb_HTML-emscripten_canvas-2d.bash
SCRIPT/atscntrb_HTML-emscripten_canvas-2d.bash: atscntrb_HTML-emscripten_canvas-2d_atxt.exe ; ./$< > $@
atscntrb_HTML-emscripten_canvas-2d_atxt.dats: ATEXT/atscntrb_HTML-emscripten_canvas-2d.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_HTML-emscripten_canvas-2d_atxt.exe: atscntrb_HTML-emscripten_canvas-2d_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_HTML-emscripten_canvas-2d_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_HTML-emscripten_canvas-2d.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_HTML-emscripten_canvas-2d.bash

#
all_script:: \
SCRIPT/atscntrb_libats_hwxi.bash
SCRIPT/atscntrb_libats_hwxi.bash: atscntrb_libats_hwxi_atxt.exe ; ./$< > $@
atscntrb_libats_hwxi_atxt.dats: ATEXT/atscntrb_libats_hwxi.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_libats_hwxi_atxt.exe: atscntrb_libats_hwxi_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_libats_hwxi_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_libats_hwxi.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_libats_hwxi.bash

all_script:: \
SCRIPT/atscntrb_libats_hwxi_teaching.bash
SCRIPT/atscntrb_libats_hwxi_teaching.bash: atscntrb_libats_hwxi_teaching_atxt.exe ; ./$< > $@
atscntrb_libats_hwxi_teaching_atxt.dats: ATEXT/atscntrb_libats_hwxi_teaching.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_libats_hwxi_teaching_atxt.exe: atscntrb_libats_hwxi_teaching_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_libats_hwxi_teaching_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_libats_hwxi_teaching.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_libats_hwxi_teaching.bash

#
all_script:: \
SCRIPT/atscntrb_libatscc.bash
SCRIPT/atscntrb_libatscc.bash: atscntrb_libatscc_atxt.exe ; ./$< > $@
atscntrb_libatscc_atxt.dats: ATEXT/atscntrb_libatscc.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_libatscc_atxt.exe: atscntrb_libatscc_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_libatscc_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_libatscc.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_libatscc.bash

#
all_script:: \
SCRIPT/atscntrb_kernelats.bash
SCRIPT/atscntrb_kernelats.bash: atscntrb_kernelats_atxt.exe ; ./$< > $@
atscntrb_kernelats_atxt.dats: ATEXT/atscntrb_kernelats.atxt ; \
  $(CAT) $< | $(ATSDOC) --prefix __datatok --outcode $@ > /dev/null
atscntrb_kernelats_atxt.exe: atscntrb_kernelats_atxt.dats ; $(ATSCC) $(INCLATS) $(GCFLAG) -o $@ $< -latsdoc
clean:: ; $(RMF) atscntrb_kernelats_atxt.exe
cleanall:: ; $(RMF) HTML/atscntrb_kernelats.html
cleanall:: ; $(RMF) SCRIPT/atscntrb_kernelats.bash

#
######

atspackaging:: srcget_home
atspackaging:: srcget_share
atspackaging:: srcget_patsrc
atspackaging:: srcget_patsrc_cboot
atspackaging:: srcget_atslib
atspackaging:: srcget_ccomp_atslib
atspackaging:: srcget_ccomp_runtime
atspackaging:: srcget_utils_atscc
atspackaging:: srcget_utils_emacs
atspackaging:: srcget_doc_example
atspackaging:: ; (cd ATS-Postiats && ./autogen.sh)

######

srcget_home:: ; $(CPF) ../../AUTHORS $(ATSDIST)/
srcget_home:: ; $(CPF) ../../COPYING $(ATSDIST)/
srcget_home:: ; $(CPF) ../../INSTALL $(ATSDIST)/
srcget_home:: ; $(CPF) ../../VERSION $(ATSDIST)/
srcget_home:: ; $(CPF) ../../CHANGES-ats2 $(ATSDIST)/
srcget_home:: ; $(CPF) ../../CHANGES-contrib $(ATSDIST)/
srcget_home:: ; $(CPF) ../../configure.ac $(ATSDIST)/
srcget_home:: ; $(CPF) ../../config.mk.in $(ATSDIST)/
srcget_home:: ; $(CPF) ../../bin/patscc_env.sh.in $(ATSDIST)/bin/
srcget_home:: ; $(CPF) ../../bin/patsopt_env.sh.in $(ATSDIST)/bin/

######
#
srcget_share:: ; \
  $(CPF) ../../share/Makefile.gen $(ATSDIST)/share/.
srcget_share:: ; \
  $(CPF) ../../share/atspre_define.hats $(ATSDIST)/share/.
srcget_share:: ; \
  $(CPF) ../../share/atspre_staload.hats $(ATSDIST)/share/.
srcget_share:: ; \
  $(CPF) ../../share/H/pats_atslib.h $(ATSDIST)/share/H/.
srcget_share:: ; \
  $(CPF) ../../share/HATS/atspre_define_pkgreloc.hats $(ATSDIST)/share/HATS/.
srcget_share:: ; \
  $(CPF) ../../share/HATS/atspre_staload_libats_ML.hats $(ATSDIST)/share/HATS/.
srcget_share:: ; \
  $(CPF) ../../share/HATS/atslib_staload_libats_libc.hats $(ATSDIST)/share/HATS/.
#
srcget_share:: ; $(CPF) ../../share/atsmake-pre.mk $(ATSDIST)/share/.
srcget_share:: ; $(CPF) ../../share/atsmake-post.mk $(ATSDIST)/share/.
#
######

srcget_patsrc:: SCRIPT/patsopt_src.bash ; bash $<
srcget_patsrc_cboot:: SCRIPT/patsopt_src_cboot.bash ; bash $<

######

srcget_atslib:: srcget_atslib_prelude
srcget_atslib_prelude:: SCRIPT/atslib_prelude.bash ; bash $<
srcget_atslib:: srcget_atslib_libats
srcget_atslib_libats:: SCRIPT/atslib_libats.bash ; bash $<
srcget_atslib:: srcget_atslib_libats_ML
srcget_atslib_libats_ML:: SCRIPT/atslib_libats_ML.bash ; bash $<
srcget_atslib:: srcget_atslib_libats_libc
srcget_atslib_libats_libc:: SCRIPT/atslib_libats_libc.bash ; bash $<
srcget_atslib:: srcget_atslib_libats_ATS1
srcget_atslib_libats_ATS1:: SCRIPT/atslib_libats_ATS1.bash ; bash $<
srcget_atslib:: srcget_atslib_libats_BUCS320
srcget_atslib_libats_BUCS320:: SCRIPT/atslib_libats_BUCS320.bash ; bash $<

######

srcget_ccomp_atslib:: SCRIPT/ccomp_atslib.bash ; bash $<
srcget_ccomp_runtime:: SCRIPT/ccomp_runtime.bash ; bash $<

######

srcget_utils_atscc:: SCRIPT/utils_atscc.bash ; bash $<
srcget_utils_emacs:: SCRIPT/utils_emacs.bash ; bash $<

######

srcget_doc_example:: srcget_doc_example_intro
srcget_doc_example:: srcget_doc_example_atslib
srcget_doc_example:: srcget_doc_example_misc
srcget_doc_example:: srcget_doc_example_pcpv
srcget_doc_example_intro:: SCRIPT/doc_example_intro.bash ; bash $<
srcget_doc_example_atslib:: SCRIPT/doc_example_atslib.bash ; bash $<
srcget_doc_example_misc:: SCRIPT/doc_example_misc.bash ; bash $<
srcget_doc_example_pcpv:: SCRIPT/doc_example_pcpv.bash ; bash $<

######

atscontribing:: srcget_atscntrb

######

srcget_atscntrb:: srcget_atscntrb_pcre
srcget_atscntrb_pcre:: SCRIPT/atscntrb_pcre.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_libgmp
srcget_atscntrb_libgmp:: SCRIPT/atscntrb_libgmp.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_zeromq
srcget_atscntrb_zeromq:: SCRIPT/atscntrb_zeromq.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_libcurl
srcget_atscntrb_libcurl:: SCRIPT/atscntrb_libcurl.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_glib
srcget_atscntrb_glib:: SCRIPT/atscntrb_glib.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_GTK
srcget_atscntrb_GTK:: SCRIPT/atscntrb_GTK.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_SDL2
srcget_atscntrb_SDL2:: SCRIPT/atscntrb_SDL2.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_cairo
srcget_atscntrb_cairo:: SCRIPT/atscntrb_cairo.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_json-c
srcget_atscntrb_json-c:: SCRIPT/atscntrb_json-c.bash ; bash $<
srcget_atscntrb:: srcget_atscntrb_jansson
srcget_atscntrb_jansson:: SCRIPT/atscntrb_jansson.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_hiredis
srcget_atscntrb_hiredis:: SCRIPT/atscntrb_hiredis.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_OpenSSL
srcget_atscntrb_OpenSSL:: SCRIPT/atscntrb_OpenSSL.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_JNI
srcget_atscntrb_JNI:: SCRIPT/atscntrb_JNI.bash ; bash $<

######
#
# srcget_atscntrb:: srcget_atscntrb_HTML-emscripten
# srcget_atscntrb_HTML-emscripten:: SCRIPT/atscntrb_HTML-emscripten.bash ; bash $<
# srcget_atscntrb:: srcget_atscntrb_HTML-emscripten_canvas-2d
# srcget_atscntrb_HTML-emscripten_canvas-2d:: SCRIPT/atscntrb_HTML-emscripten_canvas-2d.bash ; bash $<
#
######

srcget_atscntrb:: srcget_atscntrb_libats_hwxi
srcget_atscntrb_libats_hwxi:: SCRIPT/atscntrb_libats_hwxi.bash ; bash $<
srcget_atscntrb:: srcget_atscntrb_libats_hwxi_teaching
srcget_atscntrb_libats_hwxi_teaching:: SCRIPT/atscntrb_libats_hwxi_teaching.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_kernelats
srcget_atscntrb_kernelats:: SCRIPT/atscntrb_kernelats.bash ; bash $<

######

srcget_atscntrb:: srcget_atscntrb_libatscc
srcget_atscntrb_libatscc:: SCRIPT/atscntrb_libatscc.bash ; bash $<

######
#
PACKNAME=ATS2-Postiats-0.2.13
#
atspacktarzvcf:: ; $(RMRF) $(PACKNAME)
atspacktarzvcf:: ; $(CPRF) ATS-Postiats $(PACKNAME)
atspacktarzvcf:: ; $(RMF) $(PACKNAME)/Makefile_conf
atspacktarzvcf:: ; $(RMF) $(PACKNAME)/missing ; $(CPF) ATS-Postiats/missing $(PACKNAME)/
atspacktarzvcf:: ; $(RMF) $(PACKNAME)/install-sh ; $(CPF) ATS-Postiats/install-sh $(PACKNAME)/
atspacktarzvcf:: ; $(MAKE) -C $(PACKNAME) cleanall
atspacktarzvcf:: ; $(TARZVCF) $(PACKNAME).tgz $(PACKNAME)/.
#
atspacktarzvcf_up:: ; \
scp $(PACKNAME).tgz ats-hwxi,ats-lang@web.sourceforge.net:htdocs/IMPLEMENT/Postiats/$(PACKNAME).tgz
#
######
#
PACKNAMEintmin=ATS2-Postiats-intmin-0.2.8
#
atspacktarzvcf_intmin_up:: ; \
scp $(PACKNAME).tgz ats-hwxi,ats-lang@web.sourceforge.net:htdocs/IMPLEMENT/Postiats/$(PACKNAMEintmin).tgz
#
######

CNTRBNAME=ATS2-Postiats-contrib-0.2.13
atscntrbtarzvcf:: ; $(RMRF) $(CNTRBNAME)
atscntrbtarzvcf:: ; $(CPRF) ATS-Postiats-contrib $(CNTRBNAME)
atscntrbtarzvcf:: ; $(TARZVCF)  $(CNTRBNAME).tgz  $(CNTRBNAME)/.
#
atscntrbtarzvcf_up:: ; \
scp $(CNTRBNAME).tgz ats-hwxi,ats-lang@web.sourceforge.net:htdocs/IMPLEMENT/Postiats/$(CNTRBNAME).tgz
#
######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.o *_?ats.c
clean:: ; $(RMF) *_atxt.txt
clean:: ; $(RMF) *_atxt.dats
clean:: ; $(RMF) Makefile.exe

cleanall:: clean

###### end of [Makefile] ######
