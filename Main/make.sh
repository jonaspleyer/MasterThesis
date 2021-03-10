#!/bin/bash

texfot latexmk -pdf -shell-escape -interaction=nonstopmode -output-directory=BuildFiles main.tex
