import urllib.request
import os

def download(id, folder):

    os.system(f"mkdir -p {folder}")
    
    url = f"https://rest.uniprot.org/uniprotkb/{id}.fasta"
    path = os.path.join(folder, f"{id}.fasta")
    
    urllib.request.urlretrieve(url, path)