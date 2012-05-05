#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL)". You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2012, Andrzej Szeszo
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		ocaml
COMPONENT_VERSION=	3.11.2
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_PROJECT_URL=	http://caml.inria.fr/ocaml/
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
	sha256:83008744c0ba1e3460651b86d0900916edae38813eb9a0300e8eaa861c3e921e
COMPONENT_ARCHIVE_URL=	http://caml.inria.fr/pub/distrib/ocaml-3.11/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=http://caml.inria.fr/ocaml/

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_CONFIGURE_ACTION = \
	$(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_OPTIONS = -prefix $(CONFIGURE_PREFIX)
CONFIGURE_OPTIONS += -cc $(CC)
CONFIGURE_OPTIONS += -mandir $(CONFIGURE_MANDIR)

COMPONENT_BUILD_TARGETS= world opt

build:		$(BUILD_32)
	@$(CHMOD) +x $(BUILD_DIR_32)/tools/cleanup-header
	@$(PERL) -pi -e 's,\$$PWD,$(BUILD_DIR_32),' $(BUILD_DIR_32)/build/partial-install.sh

S = $(BUILD_DIR_32)
D = $(PROTO_DIR)$(CONFIGURE_PREFIX)

install: build

	@$(MKDIR) $(D)/bin
	@$(MKDIR) $(D)/lib/ocaml
	@$(MKDIR) $(D)/lib/ocaml/caml
	@$(MKDIR) $(D)/lib/ocaml/stublibs
	@$(MKDIR) $(D)/lib/ocaml/threads
	@$(MKDIR) $(D)/lib/ocaml/vmthreads
	@$(MKDIR) $(D)/lib/ocaml/labltk
	@$(MKDIR) $(D)/lib/ocaml/ocamldoc
	@$(MKDIR) $(D)/share/man/man1

	@$(CP) $(S)/byterun/ld.conf $(D)/lib/ocaml
	@$(CP) $(S)/byterun/libcamlrun.a $(D)/lib/ocaml
	@$(CP) $(S)/byterun/ocamlrun $(D)/bin

	@for i in alloc.h callback.h config.h custom.h fail.h intext.h memory.h \
		misc.h mlvalues.h printexc.h signals.h compatibility.h; do \
		$(S)/tools/cleanup-header $(S)/byterun/$$i >$(D)/lib/ocaml/caml/$$i; done

	@$(CP) $(S)/ocaml $(S)/ocamlc $(D)/bin

	@for i in stdlib.cma std_exit.cmo \*.cmi \*.mli \*.ml camlheader camlheader_ur; do \
		$(CP) $(S)/stdlib/$$i $(D)/lib/ocaml; done

	@$(CP) $(S)/lex/ocamllex $(S)/yacc/ocamlyacc $(D)/bin

	@for i in toplevel/toplevellib.cma expunge typing/outcometree.cmi typing/outcometree.mli \
		toplevel/topstart.cmo toplevel/toploop.cmi toplevel/topdirs.cmi toplevel/topmain.cmi; do \
		$(CP) $(S)/$$i $(D)/lib/ocaml; done

	@for i in ocamldep ocamlprof ocamlcp ocamlmktop ocamlmklib; do \
		$(CP) $(S)/tools/$$i $(D)/bin; done
	
	@for i in profiling.cmi scrapelabels addlabels profiling.cmo; do \
		$(CP) $(S)/tools/$$i $(D)/lib/ocaml; done
	
	@for i in $(S)/man/*.m; do $(CP) $$i $(D)/share/man/man1/`basename $$i .m`.1; done
	@echo '.so man1/ocamlc.1' > $(D)/share/man/man1/ocamlc.opt.1
	@echo '.so man1/ocamlopt.1' > $(D)/share/man/man1/ocamlopt.opt.1
	
	@$(CP) $(S)/otherlibs/unix/dllunix.so $(D)/lib/ocaml/stublibs
	
	@for i in libunix.a unix.cma unix.cmi unixLabels.cmi unix.mli unixLabels.mli \
		unix.cmx unixLabels.cmx unix.cmxa unix.a; do \
		$(CP) $(S)/otherlibs/unix/$$i $(D)/lib/ocaml; done
	@$(CP) $(S)/otherlibs/unix/unixsupport.h $(D)/lib/ocaml/caml
	
	@$(CP) $(S)/otherlibs/str/dllstr.so $(D)/lib/ocaml/stublibs
	@for i in libstr.a str.cma str.cmi str.mli str.cmx str.cmxa str.a; do \
		$(CP) $(S)/otherlibs/str/$$i $(D)/lib/ocaml; done
	
	@$(CP) $(S)/otherlibs/num/dllnums.so $(D)/lib/ocaml/stublibs
	@for i in libnums.a nums.cma big_int.cmi nat.cmi num.cmi ratio.cmi \
		arith_status.cmi big_int.mli nat.mli num.mli ratio.mli arith_status.mli \
		int_misc.cmx nat.cmx big_int.cmx arith_flags.cmx ratio.cmx num.cmx \
		arith_status.cmx nums.cmxa nums.a; do \
		$(CP) $(S)/otherlibs/num/$$i $(D)/lib/ocaml; done
	
	@for i in dynlink.cmi dynlink.cma dynlink.mli extract_crc; do \
		$(CP) $(S)/otherlibs/dynlink/$$i $(D)/lib/ocaml; done
	
	@$(CP) $(S)/otherlibs/bigarray/dllbigarray.so $(D)/lib/ocaml/stublibs
	@for i in libbigarray.a bigarray.cmi bigarray.mli libbigarray.a bigarray.cma \
		bigarray.a bigarray.cmx bigarray.cmxa; do \
		$(CP) $(S)/otherlibs/bigarray/$$i $(D)/lib/ocaml; done
	@$(CP) $(S)/otherlibs/bigarray/bigarray.h $(D)/lib/ocaml/caml
	
	@$(CP) $(S)/otherlibs/systhreads/dllthreads.so $(D)/lib/ocaml/stublibs
	@for i in libthreads.a thread.mli mutex.mli condition.mli event.mli threadUnix.mli \
		libthreadsnat.a; do \
		$(CP) $(S)/otherlibs/systhreads/$$i $(D)/lib/ocaml; done
	@for i in thread.cmi mutex.cmi condition.cmi event.cmi threadUnix.cmi threads.cma \
		thread.cmx mutex.cmx condition.cmx event.cmx threadUnix.cmx \
		threads.cmxa threads.a; do \
		$(CP) $(S)/otherlibs/systhreads/$$i $(D)/lib/ocaml/threads; done
	
	@$(CP) $(S)/otherlibs/threads/dllvmthreads.so $(D)/lib/ocaml/stublibs
	@for i in libvmthreads.a thread.cmi mutex.cmi condition.cmi event.cmi \
		threadUnix.cmi threads.cma stdlib.cma unix.cma \
		thread.mli mutex.mli condition.mli event.mli threadUnix.mli; do \
		$(CP) $(S)/otherlibs/threads/$$i $(D)/lib/ocaml/vmthreads; done
	
	@$(CP) $(S)/otherlibs/graph/dllgraphics.so $(D)/lib/ocaml/stublibs
	@for i in libgraphics.a graphics.cm[ia] graphicsX11.cmi graphics.mli graphicsX11.mli \
		graphics.cmx graphics.cmxa graphics.a; do \
		$(CP) $(S)/otherlibs/graph/$$i $(D)/lib/ocaml; done
	
	@$(CP) $(S)/otherlibs/dbm/dllmldbm.so $(D)/lib/ocaml/stublibs
	@for i in libmldbm.a dbm.cma dbm.cmi dbm.mli dbm.cmx dbm.cmxa dbm.a; do \
		$(CP) $(S)/otherlibs/dbm/$$i $(D)/lib/ocaml; done
	
	@$(CP) $(S)/otherlibs/labltk/support/dlllabltk.so $(D)/lib/ocaml/stublibs
	@for i in fileevent.mli protocol.mli textvariable.mli timer.mli \
		rawwidget.mli widget.mli fileevent.cmi protocol.cmi \
		textvariable.cmi timer.cmi rawwidget.cmi widget.cmi tkthread.mli \
		tkthread.cmi tkthread.cmo liblabltk.a fileevent.cmx protocol.cmx \
		textvariable.cmx timer.cmx rawwidget.cmx widget.cmx \
		tkthread.cmx tkthread.o; do \
		$(CP) $(S)/otherlibs/labltk/support/$$i $(D)/lib/ocaml/labltk; done
	
	@for i in labltk.cma labltk.cmxa labltk.a; do \
		$(CP) $(S)/otherlibs/labltk/lib/$$i $(D)/lib/ocaml/labltk; done
	@$(CP) $(S)/otherlibs/labltk/lib/labltktop $(D)/lib/ocaml/labltk
	@$(CP) $(S)/otherlibs/labltk/lib/labltk $(D)/bin
	
	@for i in place.cmi wm.cmi imagephoto.cmi canvas.cmi button.cmi text.cmi \
		scrollbar.cmi image.cmi encoding.cmi \
		palette.cmi font.cmi message.cmi menu.cmi \
		entry.cmi listbox.cmi focus.cmi menubutton.cmi pack.cmi \
		option.cmi toplevel.cmi frame.cmi dialog.cmi imagebitmap.cmi \
		clipboard.cmi radiobutton.cmi tkwait.cmi grab.cmi selection.cmi \
		scale.cmi optionmenu.cmi winfo.cmi grid.cmi checkbutton.cmi bell.cmi \
		tkvars.cmi tk.cmi labltk.cmi place.mli wm.mli imagephoto.mli \
		canvas.mli button.mli text.mli label.mli scrollbar.mli image.mli \
		encoding.mli pixmap.mli palette.mli font.mli message.mli menu.mli \
		entry.mli listbox.mli focus.mli menubutton.mli pack.mli option.mli \
		toplevel.mli frame.mli dialog.mli imagebitmap.mli clipboard.mli radiobutton.mli \
		tkwait.mli grab.mli selection.mli scale.mli optionmenu.mli winfo.mli \
		grid.mli checkbutton.mli bell.mli tkvars.mli \
		place.cmx wm.cmx imagephoto.cmx canvas.cmx button.cmx text.cmx \
		label.cmx scrollbar.cmx image.cmx encoding.cmx pixmap.cmx \
		palette.cmx font.cmx message.cmx menu.cmx entry.cmx \
		listbox.cmx focus.cmx menubutton.cmx pack.cmx option.cmx \
		toplevel.cmx frame.cmx dialog.cmx imagebitmap.cmx clipboard.cmx \
		radiobutton.cmx tkwait.cmx grab.cmx selection.cmx scale.cmx \
		optionmenu.cmx winfo.cmx grid.cmx checkbutton.cmx bell.cmx \
		tkvars.cmx tk.cmx labltk.cmx pixmap.cmi label.cmi; do \
		$(CP) $(S)/otherlibs/labltk/labltk/$$i $(D)/lib/ocaml/labltk; done
	
	@for i in cPlace.cmi cResource.cmi cWm.cmi cImagephoto.cmi cCanvas.cmi \
		cButton.cmi cText.cmi cLabel.cmi cScrollbar.cmi cImage.cmi \
		cEncoding.cmi cPixmap.cmi cPalette.cmi cFont.cmi cMessage.cmi \
		cMenu.cmi cEntry.cmi cListbox.cmi cFocus.cmi cMenubutton.cmi \
		cPack.cmi cOption.cmi cToplevel.cmi cFrame.cmi cDialog.cmi \
		cImagebitmap.cmi cClipboard.cmi cRadiobutton.cmi cTkwait.cmi cGrab.cmi \
		cSelection.cmi cScale.cmi cOptionmenu.cmi cWinfo.cmi cGrid.cmi \
		cCheckbutton.cmi cBell.cmi cTkvars.cmi cTk.cmi camltk.cmi \
		cPlace.mli cResource.mli cWm.mli cImagephoto.mli cCanvas.mli \
		cButton.mli cText.mli cLabel.mli cScrollbar.mli cImage.mli \
		cEncoding.mli cPixmap.mli cPalette.mli cFont.mli cMessage.mli \
		cMenu.mli cEntry.mli cListbox.mli cFocus.mli cMenubutton.mli \
		cPack.mli cOption.mli cToplevel.mli cFrame.mli cDialog.mli \
		cImagebitmap.mli cClipboard.mli cRadiobutton.mli cTkwait.mli cGrab.mli \
		cSelection.mli cScale.mli cOptionmenu.mli cWinfo.mli cGrid.mli \
		cCheckbutton.mli cBell.mli cTkvars.mli \
		cPlace.cmx cResource.cmx cWm.cmx cImagephoto.cmx cCanvas.cmx \
		cButton.cmx cText.cmx cLabel.cmx cScrollbar.cmx cImage.cmx \
		cEncoding.cmx cPixmap.cmx cPalette.cmx cFont.cmx cMessage.cmx \
		cMenu.cmx cEntry.cmx cListbox.cmx cFocus.cmx cMenubutton.cmx \
		cPack.cmx cOption.cmx cToplevel.cmx cFrame.cmx cDialog.cmx \
		cImagebitmap.cmx cClipboard.cmx cRadiobutton.cmx cTkwait.cmx cGrab.cmx \
		cSelection.cmx cScale.cmx cOptionmenu.cmx cWinfo.cmx cGrid.cmx \
		cCheckbutton.cmx cBell.cmx cTkvars.cmx cTk.cmx camltk.cmx; do \
		$(CP) $(S)/otherlibs/labltk/camltk/$$i $(D)/lib/ocaml/labltk; done
	
	@$(CP) $(S)/otherlibs/labltk/compiler/tkcompiler $(D)/lib/ocaml/labltk
	@$(CP) $(S)/otherlibs/labltk/compiler/pp $(D)/lib/ocaml/labltk
	
	@for i in fileselect.cmi balloon.cmi shell.cmi jpf_font.cmi fileselect.mli \
		balloon.mli shell.mli jpf_font.mli jpflib.cma \
		jpflib.cmxa jpflib.a fileselect.cmx balloon.cmx shell.cmx jpf_font.cmx; do \
		$(CP) $(S)/otherlibs/labltk/jpf/$$i $(D)/lib/ocaml/labltk; done
	
	@for i in \*.cmi \*.mli frxlib.cma frxlib.cmxa frxlib.a; do \
		$(CP) $(S)/otherlibs/labltk/frx/$$i $(D)/lib/ocaml/labltk; done
	
	@$(CP) $(S)/otherlibs/labltk/tkanim/dlltkanim.so $(D)/lib/ocaml/stublibs
	@for i in tkanim.cma \*.cmi \*.mli libtkanim.a tkanim.cmxa tkanim.a; do \
		$(CP) $(S)/otherlibs/labltk/tkanim/$$i $(D)/lib/ocaml/labltk; done
	
	@$(CP) $(S)/otherlibs/labltk/browser/ocamlbrowser $(D)/bin

	@$(CP) $(S)/ocamldoc/ocamldoc $(D)/bin
	@for i in ocamldoc.hva \*.cmi odoc_info.cma odoc_info.cmi odoc_info.mli; do \
		$(CP) $(S)/ocamldoc/$$i $(D)/lib/ocaml/ocamldoc; done
	
	@$(CP) $(S)/asmrun/libasmrun.a $(D)/lib/ocaml
	@[ -h $(D)/lib/ocaml/libasmrunp.a ] && rm $(D)/lib/ocaml/libasmrunp.a || true
	@$(SYMLINK) libasmrun.a $(D)/lib/ocaml/libasmrunp.a
	
	@$(CP) $(S)/ocamlopt $(D)/bin
	@for i in stdlib.cmxa stdlib.a std_exit.o \*.cmx; do \
		$(CP) $(S)/stdlib/$$i $(D)/lib/ocaml; done

	@[ -h $(D)/lib/ocaml/stdlib.p.cmxa ] && rm $(D)/lib/ocaml/stdlib.p.cmxa || true
	@$(SYMLINK) stdlib.cmxa $(D)/lib/ocaml/stdlib.p.cmxa

	@[ -h $(D)/lib/ocaml/stdlib.p.a ] && rm $(D)/lib/ocaml/stdlib.p.a || true
	@$(SYMLINK) stdlib.a $(D)/lib/ocaml/stdlib.p.a

	@[ -h $(D)/lib/ocaml/std_exit.p.cmx ] && rm $(D)/lib/ocaml/std_exit.p.cmx || true
	@$(SYMLINK) std_exit.cmx $(D)/lib/ocaml/std_exit.p.cmx

	@[ -h $(D)/lib/ocaml/std_exit.p.o ] && rm $(D)/lib/ocaml/std_exit.p.o || true
	@$(SYMLINK) std_exit.o $(D)/lib/ocaml/std_exit.p.o

	@$(CP) $(S)/debugger/ocamldebug $(D)/bin
	@$(CP) $(S)/config/Makefile $(D)/lib/ocaml/Makefile.config

	@cd $(S)/build; $(ENV) BINDIR=$(D)/bin LIBDIR=$(D)/lib/ocaml PREFIX=$(D) \
		MANDIR=$(D)/share/man ./partial-install.sh

	@$(PERL) -pi -e "s|\$${ROOT}||g" $(D)/lib/ocaml/Makefile.config
	@$(PERL) -pi -e "s|\$${ROOT}||" $(D)/lib/ocaml/caml/config.h
