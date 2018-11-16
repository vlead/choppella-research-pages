#SHELL := /bin/bash
BUILD_DIR=build
VER_BRANCH=build-release
VER_FILE=VERSION
LITERATE_TOOLS="https://github.com/vlead/literate-tools.git"
LITERATE_DIR=literate-tools
ELISP_DIR=elisp
ORG_DIR=org-templates
STYLE_DIR=style
CODE_DIR=build/code
DOC_DIR=build/docs
SRC_DIR=src
DIAGRAMS_DIR=src/diagrams
PWD=$(shell pwd)
EXIT_FILE=${PWD}/exit.txt
STATUS=0


clean:	
	make -f tangle-make clean

init:
	./init.sh

build: init
	make -f tangle-make -k all

