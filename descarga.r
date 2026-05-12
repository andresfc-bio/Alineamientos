

descarga <- function(id) {
  url <- paste0("https://rest.uniprot.org/uniprotkb/", id, ".fasta")
  seq <- readLines(url)
  system(paste0("mkdir -p ", id))
  writeLines(seq, paste0(id, "/", id, ".fasta"))
}

