# nf-core/rnaseq — Usage and Samplesheet

Official documentation:
https://nf-co.re/rnaseq/latest/docs/usage

## Purpose
Understand how to prepare the sample metadata file required to run nf-core/rnaseq.

## Samplesheet format
The samplesheet is a comma-separated CSV file. The first four columns must be:

- sample: identifier for the sample
- fastq_1: path to the first FASTQ read file
- fastq_2: path to the second FASTQ read file
- strandedness: library strand information

The supported strandedness values are unstranded, forward, reverse, and auto.

## Optional metadata
The documentation also describes optional seq_platform and seq_center columns for recording sequencing platform and sequencing centre information.

## Multiple sequencing runs
When the same biological sample has multiple sequencing runs, use the same sample identifier for those runs. The pipeline concatenates the raw reads before downstream analysis.

## Input parameter
Use --input to provide the path to the samplesheet. Pipeline parameters can be provided through the command line or a Nextflow params file.

## Important note
The accompanying samplesheet.csv is an illustrative example only. Its FASTQ paths are placeholders and do not refer to real files. It is not ready to run the pipeline until the paths are replaced with existing FASTQ files.
