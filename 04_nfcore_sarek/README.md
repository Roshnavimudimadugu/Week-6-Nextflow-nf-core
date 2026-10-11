# nf-core/sarek — Overview

## Official documentation
Usage: https://nf-co.re/sarek/latest/docs/usage
Output: https://nf-co.re/sarek/latest/docs/output

## 1. Purpose
nf-core/sarek is a Nextflow pipeline for detecting germline and somatic genetic variants from whole-genome sequencing (WGS), whole-exome sequencing (WES), and targeted sequencing data.

## 2. Germline and somatic analysis
- Germline variants are generally inherited and occur in the individual's constitutional genome.
- Somatic variants are acquired in cells, such as variants found in tumour samples.
- Tumour-normal analysis compares a tumour sample with an appropriate normal sample from the same patient.

## 3. Main workflow stages
1. Input preparation and quality control.
2. Read mapping and alignment processing.
3. Variant calling.
4. Variant filtering and annotation.
5. Quality-control summaries, including MultiQC where generated.

The exact tools and steps depend on the selected options and analysis design.

## 4. Input samplesheet
Sarek uses a samplesheet describing the sequencing data. Depending on the input type, common FASTQ samplesheet columns include:
- `patient`: patient or subject identifier.
- `sample`: sample identifier.
- `lane`: sequencing lane identifier.
- `fastq_1`: first read file.
- `fastq_2`: second read file.

Tumour-normal designs use the same patient identifier for the paired samples, with distinct sample identifiers and appropriate sample-status information. Consult the official documentation for the complete schema.

## 5. Output overview
Depending on the workflow configuration, outputs can include processed reads, alignment files, variant-call files, annotated variants, quality-control summaries and execution reports.

## 6. Relevance to bioinformatics
Sarek supports DNA-seq variant analysis. In contrast, nf-core/rnaseq focuses on RNA-seq processing and gene/transcript expression quantification.

## Learning outcomes
- Distinguish germline and somatic variant analysis.
- Understand the main stages of a variant-analysis workflow.
- Recognise the purpose of a Sarek samplesheet.
- Understand where Sarek fits into DNA-seq analysis.

## Evidence scope
This is a documentation overview. Sarek has not been run for this task, and no variant-calling results are claimed.
