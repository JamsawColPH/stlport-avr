# -*- makefile -*- Time-stamp: <04/07/25 16:54:59 ptr>
# $Id$

# Static libraries tags

PHONY += release-static dbg-static stldbg-static

release-static: $(OUTPUT_DIR_A) ${A_NAME_OUT}

dbg-static:	$(OUTPUT_DIR_A_DBG) ${A_NAME_OUT_DBG}

stldbg-static:	$(OUTPUT_DIR_A_STLDBG) ${A_NAME_OUT_STLDBG}

${A_NAME_OUT}:	$(OBJ_A)
ifneq (dmc, $(COMPILER_NAME))
	$(AR) $(AR_INS_R) $(AR_OUT) $(OBJ_A)
else
	$(AR) $(AR_INS_R) $(AR_OUT) $(subst /,\,$(OBJ_A))
endif

${A_NAME_OUT_DBG}:	$(OBJ_A_DBG)
ifneq (dmc, $(COMPILER_NAME))
	$(AR) $(AR_INS_R) $(AR_OUT) $(OBJ_A_DBG)
else
	$(AR) $(AR_INS_R) $(AR_OUT) $(subst /,\,$(OBJ_A_DBG))
endif

${A_NAME_OUT_STLDBG}:	$(OBJ_A_STLDBG)
ifneq (dmc, $(COMPILER_NAME))
	$(AR) $(AR_INS_R) $(AR_OUT) $(OBJ_A_STLDBG)
else
	$(AR) $(AR_INS_R) $(AR_OUT) $(subst /,\,$(OBJ_A_STLDBG))
endif