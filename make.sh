#!/bin/bash

COMPILER=latexmk

OPTIONS=( -pdf -shell-escape -interaction=nonstopmode -output-directory=BuildFiles )

TARGET=main.tex
TARGET2=main-Booklet.tex

echo "#############################"
echo "Using compiler " $COMPILER
echo "With options " 
for opt in ${OPTIONS[@]}
do
	echo $opt
	#"${OPTIONS[@]}"
done
echo "On Target "$TARGET
echo "#############################"

$COMPILER ${OPTIONS[@]} $TARGET
$COMPILER ${OPTIONS[@]} $TARGET2