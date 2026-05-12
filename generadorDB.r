
generadorDB <- function(){

    print("Creando base de datos")
    cmd <- "mkdir DB"
    system(cmd)

    cmd <- "find . -type f -name '*.fasta' -exec cat {} + > DB/proteinas.fa"
    system(cmd)

    cmd <- "makeblastdb -in DB/proteinas.fa -dbtype prot -out DB/proteinas" 
    system(cmd)

}
