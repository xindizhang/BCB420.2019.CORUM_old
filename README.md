# `BCB420.2019.CORUM`

#### (CORUM data annotatation of human genes)

&nbsp;

###### [Xindi Zhang], Bioinformatics, University of Toronto, Canada. &lt;xindi.zhang@utoronto.ca&gt;

----

**If any of this information is ambiguous, inaccurate, outdated, or incomplete, please check the [most recent version](https://github.com/hyginn/BCB420.2019.STRING) of the package on GitHub and if the problem has not already been addressed, please [file an issue](https://github.com/hyginn/BCB420.2019.STRING/issues).**

----

## 1 About this package:

This pacakge is designed to download network data form [the CORUM database](https://mips.helmholtz-muenchen.de/corum/), map annotated human protein complex data to [HGNC](https://www.genenames.org/) symbols, and provide examples for statistic cmputation of the databases.

The package serves dual duty, as an RStudio project, as well as an R package that can be installed. Package checks **pass without errors, warnings, or notes**.

&nbsp;

#### In this project ...

```text
 --BCB420.2019.CORUM/
   |__.gitignore
   |__.Rbuildignore
   |__BCB420.2019.CORUM.Rproj
   |__DESCRIPTION
   |__dev/
      |__toBrowser.R               # display .md files in your browser
   |__inst/
      |__extdata/
         |__ensp2sym.RData         # ENSP ID to HGNC symbol mapping tool
         |__xSetEdges.tsv          # annotated example edges
      |__img/
         |__[...]                  # image sources for .md document
      |__scripts/
         |__recoverIDs.R           # utility to use biomaRt for ID mapping
   |__LICENSE
   |__NAMESPACE
   |__R/
      |__zzz.R
      |__script.R
   |__README.md                    # this file

```

&nbsp;

----

## 2 CORUM Data

CORUM is a database of annotated mammalian protein complexes. The main mammalian organisms are human(67%), mouse(15%), and rat(10%). There are data for 4274 protein complexes, which are encoded by 4473 genes (Giurgiu _et al._ 2019). All information is obtained from individual experiment. Each complex also has information crossed referenced from other datasets. All CORUM data is available under a CC-BY 4.0 license.




&nbsp;

#### 2.1 Data semantics

Available annotations and information are:

1. **Complex name and ID**
2. **UniPort annotation**: UniPort Id, Identification of subunits
3. **Gene Ontology (GO) information **: This is the functional annotation of the complex
4. **Protein complex purification method**: The experimental method used to purify the protein complexes
5. **Organism **
6. **PMID**
7. **Comment**: Information about disease and cellular function information

Annotation of splice variant complexes is included for functional properties since some complex isoform is tissue specific. This can be a great implication of the protein functions. 

In addition, a CORUM tool using IntAct database to predict protein- protein interactions within protein complexes and a visualization tool (Cytoscape written in javascript) of the interactions can be fouond at https://www.ebi.ac.uk/intact/. This tool is proved for reliable predictions(Giurgiu _et al._ 2019). 

CORUM integrates and cross-references data of mammalian protein complexes from experiment, Uniport, GO and other literature resouces. By demonstrating the importance of protein complex, it provide information for bioinformatics and biomedical research (especially cancer research). To build a larger datasets, input of other researchers are greatly welcoming. Please contact CORUM at andreas.ruepp@helmholtz-muenchen.de (Giurgiu _et al._ 2019).

&nbsp;

## 3 Data download and cleanup

To download the source data from STRING ... :

1. Navigate to the [**CORUM** database](https://mips.helmholtz-muenchen.de/corum/#) and follow the link to the [download section](https://mips.helmholtz-muenchen.de/corum/#download).
2. Choose the type of complex data you wnat to download
3. This workflow uses complete complexes data. Download the following data file: 

* `allComplexes.txt.zip` (752kb)	complete complexes data;

4. Uncompress the file and place it into a sister directory of your working directory which is called `data`. (It should be reachable with `file.path("..", "data")`). 

&nbsp;

## 4 Mapping ENSEMBL IDs to HGNC symbols



<!-- [END] -->
