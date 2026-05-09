

descarga <- function(id) {
  url <- paste0("https://rest.uniprot.org/uniprotkb/", id, ".fasta")
  seq <- readLines(url)
  writeLines(seq, paste0(id, ".fasta"))
}

