from downloads import download
import os

db_dir = "database_uniprot"

db = [ "Q1JQA7", "P10361", "P79734", "Q5XII5", "P67939", "O09185", "Q64662", "Q8SPZ3",
"Q95330", "Q9TTA1", "Q9WUR6", "P41685", "P56424", "P79820", "P79892", "Q29537",
"O36006", "P13481", "P61260", "Q29480", "P56423", "P67938", "Q00366", "Q9TUB2", 
"P51664", "A0A8I6AKV2", "A0AAA9SB79"
]




for id_protein in db:
    download(id_protein, db_dir)

os.system("cat database_uniprot/*.fasta > database_uniprot/db_tp53.fasta")

os.system("makeblastdb -in database_uniprot/db_tp53.fasta \
            -dbtype prot \
            -out database_uniprot/db_tp53")



query_dir = "queries"
queries = ["Q12888", "P70399", "P07193"]



for id_protein in queries:
    download(id_protein, query_dir)



for id_protein in queries:
    individual_dir = f"results/{id_protein}"
    os.system(f"mkdir -p {individual_dir}")
    
    os.system(f"blastp -query {query_dir}/{id_protein}.fasta \
                -db {db_dir}/db_tp53 \
                -out {individual_dir}/{id_protein}_results.csv")

