# PHONO-ML Database

## Authors

Project launched by Guillaume JACQUES\
Software Engineer: Alexander DELAPORTE

Centre de recherches linguistiques sur l'Asie orientale\
[CRLAO](https://crlao.cnrs.fr/) CNRS UMR 8563

## What is PHONO-ML Database?

This database provides **Middle Chinese phonetic transcriptions (Baxter-Sagart notation) for a set of 26 224 characters**.

In this repository, you will find the following files:

* `phonoML_matches.csv`, with one line representing only one character/transcription match.
* `phonoML_characters.csv`, with one line representing one character and all of its matching transcriptions.
* `phonoML_transcriptions.csv`, with one line representing one transcription and all of its matching characters.

The source code of the program used to build these tables is available in the [PHONO-ML software repository](https://gitlab.huma-num.fr/phono-ml/software).

## Project status

Transcription accuracy has been checked for a substancial subset of characters by comparing it to glosses from [*The Baxter-Sagart reconstruction of Old Chinese*](https://ocbaxtersagart.lsait.lsa.umich.edu/) (by William H. Baxter and Laurent Sagart).

**However, some errors may still occur. Please contact us if you notice any erratic data.**
