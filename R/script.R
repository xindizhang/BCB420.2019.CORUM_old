# Read data
getwd()
tmp <- readr::read_delim(file.path("../data", "allComplexes.txt"),
                         delim = "\t")
nrow(tmp) # 4274
# check datasets
colnames(tmp)
# [1] "ComplexID"                          
# [2] "ComplexName"                        
# [3] "Organism"                           
# [4] "Synonyms"                           
# [5] "Cell line"                          
# [6] "subunits(UniProt IDs)"              
# [7] "subunits(Entrez IDs)"               
# [8] "Protein complex purification method"
# [9] "GO ID"                              
# [10] "GO description"                     
# [11] "FunCat ID"                          
# [12] "FunCat description"                 
# [13] "subunits(Gene name)"                
# [14] "Subunits comment"                   
# [15] "PubMed ID"                          
# [16] "Complex comment"                    
# [17] "Disease comment"                    
# [18] "SWISSPROT organism"                 
# [19] "subunits(Gene name syn)"            
# [20] "subunits(Protein name)" 
tmp[1,]
tmp$Synonyms[1:9]
tmp$`Cell line`[1:9]
tmp$`subunits(UniProt IDs)`[1:9]
tmp$`subunits(Entrez IDs)`[1:9]
tmp$`Protein complex purification method`[1:9]
tmp$`GO ID`[1:9]
tmp$`GO description`[1:5]
tmp$`FunCat ID`[1:5]
tmp$`subunits(Gene name)`[1:5]
tmp$`subunits(Gene name syn)`[1:5]
# filter human data
human_data <- tmp[tmp$Organism == 'Human', ]
human_data$Organism == 'Human'
nrow(human_data)   # 2916
# Check outdated data
myURL <- paste0("https://github.com/hyginn/",
                "BCB420-2019-resources/blob/master/HGNC.RData?raw=true")
load(url(myURL)) 
head(HGNC)
human_data$`subunits(Gene name)`[1]
unlist(strsplit(geneNameEg, ";"))
for (i in seq_len(nrow(human_data))){
  geneName <- unlist(strsplit(human_data$`subunits(Gene name)`[i], ";"))
  for (gene in geneName){
    print(gene)
    iPrev <- grep(gene, HGNC$prev)[1]
    if (length(iPrev) == 1){
      HGNC$sym[iPrev]
    }
  }
}
       