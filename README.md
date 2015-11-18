[![Build Status](https://travis-ci.org/AndersenLab/Andersen-Lab-Strains.svg?branch=master)](https://travis-ci.org/AndersenLab/Andersen-Lab-Strains)

# Andersen-Lab-Strains
Tracking and Information for Andersen Lab Strains

### Reports

* [Analysis](https://storage.googleapis.com/andersen_lab_strains/analysis.html)

### Files

* __[Isotypes](/processed/isotypes.tsv)__ - List of isotypes.
* __[Isotype-Strain](/processed/isotype_strain.tsv)__ - Isotype - Strain mapping
* __[Fastqs](/processed/seqs.tsv)__ - List of fastqs

### Conventions

* lowercase variable names.
* Fastq standard filename structure:

#### Fastq filename structures:

* The delimiter is always a dash (`-`); Information can be separated within variables using an underscore (`_`)

```
<RUN>-<LIBRARY>-<STRAIN>-<ADDITIONAL_VARIABLES...>-<READ>.fq.gz
```

* `RUN` - The sequencing center / source followed by the nth time samples were sent there.
* `LIBRARY` - The library that was sequenced. Must be distinct across sequencing runs if DNA was prepped separately.
* `STRAIN` - The Strain name.
* `ADDITIONAL_VARIABLES` - An optional listing of additional variables. For example, indices.
* `READ` - The Read pair (1 or 2); Use 0 for unpaired. 

### New Sequencing Checklist

* Concordance
* Fastq statistics
* Bam Depth of Coverage
