
generadorDB <- function(){

    if( "proteinas.fasta" %in% list.files() ){
        print("Removiendo proteinas.fasta")
        file.remove("proteinas.fasta")
    }
    print("Creando base de datos")
    cmd <- "cat *.fasta > proteinas.fasta"
    system(cmd)
    cmd <- "makeblastdb -in proteinas.fasta -dbtype prot"
    system(cmd)
    
}
