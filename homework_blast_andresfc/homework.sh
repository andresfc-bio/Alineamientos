#!/bin/bash

curl -sL "https://rest.uniprot.org/uniprotkb/stream?format=fasta&query="\
"accession%3AO09185+OR+accession%3AO36006+OR+accession%3AO57538+OR+acce"\
"ssion%3AP10360+OR+accession%3AP10361+OR+accession%3AP13481+OR+accessio"\
"n%3AP41685+OR+accession%3AP51664+OR+accession%3AP56423+OR+accession%3A"\
"P56424+OR+accession%3AP61260+OR+accession%3AP67938+OR+accession%3AP679"\
"39+OR+accession%3AP79734+OR+accession%3AP79820+OR+accession%3AP79892+O"\
"R+accession%3AQ00366+OR+accession%3AQ29480+OR+accession%3AQ29537+OR+ac"\
"cession%3AQ64662+OR+accession%3AQ8SPZ3+OR+accession%3AQ92143+OR+access"\
"ion%3AQ95330+OR+accession%3AQ9TTA1+OR+accession%3AQ9TUB2+OR+accession%3AQ9WUR6" \
-o db_tp53.fasta

makeblastdb -in db_tp53.fasta -dbtype prot -out db_tp53

QUERIES=("Q12888" "P70399" "P07193")

for ID in "${QUERIES[@]}"; do
    mkdir -p "$ID"
    curl -sL "https://rest.uniprot.org/uniprotkb/$ID.fasta" -o "$ID/$ID.fasta"
    blastp -query "$ID/$ID.fasta" -db db_tp53 -out "$ID/${ID}_resultados.csv"
done