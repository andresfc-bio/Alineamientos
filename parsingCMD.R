#!/usr/local/bin/Rscript

library(optparse)

option_list <- list(
  make_option(c("-f", "--file"), type="character"),
  make_option(c("-o", "--output"), type="character")
)

parser <- OptionParser(option_list = option_list)
args <- parse_args(parser)

print(args$file)
print(args$output)

