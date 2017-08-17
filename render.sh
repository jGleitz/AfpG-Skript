#!/bin/bash

lyx --export pdf2 "$1" -dbg latex 2>&1 | egrep -v '^(Paragraph.cpp|output_latex.cpp|Font.cpp)'
exit ${PIPESTATUS[0]}
