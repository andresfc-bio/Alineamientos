# makeblastdb -in proteinas.fasta -dbtype prot
# blastp -query P04637.fasta -db proteinas.fasta -out resultado.txt


alineamiento <- function(id){
  cmd <- paste0("blastp -query ", id,"/",id, ".fasta -db DB/proteinas -out ", id,"/", id, ".aling")
  print(cmd)
  system(cmd)
}
    
