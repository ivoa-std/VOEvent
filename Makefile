# ivoatex Makefile.  The ivoatex/README for the targets available.

# short name of your document (edit $DOCNAME.tex; would be like RegTAP)
DOCNAME = VOEvent

# count up; you probably do not want to bother with versions <1.0
DOCVERSION = 2.1

# Publication date, ISO format; update manually for "releases"
DOCDATE = 2025-03-13

# What is it you're writing: NOTE, WD, PR, REC, PEN, or EN
DOCTYPE = PR

# An e-mail address of the person doing the submission to the document
# repository (can be empty until a make upload is being made)
AUTHOR_EMAIL=baptiste.cecconi@obspm.fr

# Source files for the TeX document (but the main file must always
# be called $(DOCNAME).tex
SOURCES = $(DOCNAME).tex role_diagram.pdf gitmeta.tex

# List of image files to be included in submitted package (anything that
# can be rendered directly by common web browsers)
FIGURES = role_diagram.svg

# List of PDF figures (figures that must be converted to pixel images to
# work in web browsers).
VECTORFIGURES =

# Additional files to distribute (e.g., CSS, schema files, examples...)
AUX_FILES = VOEvent-v2.1.xsd VOEventRegExt-v2.0.xsd resrec-sample.vor

include ivoatex/Makefile

-include ivoatex/Makefile

ivoatex/Makefile:
	@echo "*** ivoatex submodule not found.  Initialising submodules."
	@echo
	git submodule update --init

test:
	@echo "No tests defined yet"
