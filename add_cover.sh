#!/usr/bin/env bash
set -e

# With this script you can create a PDF of your thesis with the front and back cover added to
# the thesis PDF. It also shows you how to update the PDF tags.
# For more info, search for documentation about pdftk, exiftool, and pdfinfo.

title="The title of your thesis"
author="© Your Name, University, Faculty"

# front="A4-front.pdf"
# thesis="thesis-yourname-a4.pdf"
# back="A4-back.pdf"
# output="thesis-yourname-a4-with_cover.pdf"

# front="B5-front.pdf"
# thesis="thesis-yourname-b5.pdf"
# back="B5-back.pdf"
# output="thesis-yourname-b5-with_cover.pdf"

pdftk $front $thesis $back cat output $output
exiftool \
    -overwrite_original \
    -Title="$title" \
    -Author="$author" \
    -Creator="" \
    -Producer="" \
    $output
pdfinfo $output

