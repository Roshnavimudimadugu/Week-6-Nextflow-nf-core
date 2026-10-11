# nf-core/rnaseq — Parameters, Profiles and Reference Inputs

Official documentation:
https://nf-co.re/rnaseq/latest/docs/usage

## 1. Pipeline parameters

Pipeline parameters control the data, reference files, analysis options, and output location.

Important parameters include:

- `--input`: path to the samplesheet CSV.
- `--outdir`: directory for published results.
- `--fasta`: reference genome FASTA.
- `--gtf`: gene annotation in GTF format.
- `--gff`: gene annotation in GFF/GFF3 format.
- `--aligner`: alignment and associated quantification method.
- `--pseudo_aligner`: optional pseudoalignment and quantification method.

Parameters can be supplied on the command line or through a Nextflow `-params-file`. The `-c` option is intended for configuration settings, not pipeline parameters.

## 2. Profiles

A profile selects configuration for a test, execution environment, or analysis.

Examples:

- `-profile test`: uses the pipeline's test configuration and test data.
- `-profile docker`: configures the pipeline to use Docker containers.
- `-profile test,docker`: combines the test configuration with Docker.

Multiple profiles are loaded in order, and later profiles can override earlier settings. The official guide recommends container-based execution for reproducibility where possible.

## 3. Reference inputs

For a typical reference-based analysis, provide a genome FASTA and a matching gene annotation.

Example parameters:

- `--fasta genome.fa`
- `--gtf annotation.gtf`

Important checks:

- Keep the genome FASTA and annotation from compatible reference releases and sources.
- Ensure chromosome or contig names match between the FASTA and annotation.
- Prefer versioned reference resources such as Ensembl or GENCODE.
- GTF files should be supplied with `--gtf`; GFF3 files should be supplied with `--gff`.
- The pipeline can generate additional reference files and indices from the provided inputs.

The reference genome and annotation must be appropriate for the organism being analysed. The example filenames above are placeholders, not actual reference files.

## 4. Reproducibility

Record the pipeline version, parameters, profile, reference versions, and output location for each analysis. Use a parameter file when you need to preserve and reuse the same configuration.

## Evidence note

This file summarizes the official nf-core/rnaseq usage documentation. No full RNA-seq analysis has been run as part of this documentation exercise.
