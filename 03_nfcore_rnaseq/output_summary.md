# nf-core/rnaseq — Output Folders and Results

Official documentation:
https://nf-co.re/rnaseq/latest/docs/output/

## Purpose
Summarize the main output folders produced by nf-core/rnaseq and explain where to find quality-control, alignment, quantification, and workflow reports.

## 1. Quality control — FastQC

Folder: `fastqc/`

Important files:
- `*_fastqc.html`: interactive quality-control report for a FASTQ file.
- `*_fastqc.zip`: archived FastQC report and underlying data.

FastQC reports sequence quality, base composition, adapter contamination, and overrepresented sequences.

## 2. Trimming — Trim Galore

Folder: `trimgalore/`

Depending on the run configuration, this folder can contain trimmed FASTQ files and trimming reports.

Folder: `trimgalore/fastqc/`

Contains FastQC reports for reads after adapter trimming. These can be compared with the raw-read reports to assess the effect of preprocessing.

## 3. Alignment and quantification — STAR and Salmon

Default method: `--aligner star_salmon`

Main folder: `star_salmon/`

Examples of important outputs:
- `*.Aligned.out.bam`: genome-aligned reads, when alignment intermediates are saved.
- `log/*.Log.final.out`: STAR alignment summary.
- `<SAMPLE>/quant.sf`: Salmon transcript-level quantification.
- `<SAMPLE>/quant.genes.sf`: Salmon gene-level quantification.
- `salmon.merged.gene_counts.tsv`: merged gene-level raw counts.
- `salmon.merged.gene_tpm.tsv`: merged gene-level TPM values.
- `salmon.merged.transcript_counts.tsv`: merged transcript-level counts.
- `salmon.merged.transcript_tpm.tsv`: merged transcript-level TPM values.

BAM files and some other intermediate outputs are conditional on pipeline options. The exact output structure also depends on the selected alignment and quantification methods.

## 4. MultiQC report

Folder: `multiqc/<ALIGNER>/`

Important outputs:
- `multiqc_report.html`: interactive summary of supported quality-control and analysis metrics.
- `multiqc_data/`: parsed statistics used to create the report.

MultiQC brings together results from supported tools, which can include FastQC, trimming tools, STAR, Salmon and other quality-control steps used in the run.

## 5. Pipeline information and execution reports

Folder: `pipeline_info/`

Examples include:
- `execution_report.html`: run and resource information.
- `execution_timeline.html`: timeline of process execution.
- `execution_trace.txt`: task-level execution details.
- `pipeline_dag.dot` or `pipeline_dag.svg`: workflow dependency graph.
- `software_versions.yml`: versions of the pipeline and tools.
- `params.json`: parameters used for the run.
- `samplesheet.valid.csv`: validated samplesheet used by the pipeline.

The exact files depend on the pipeline version and run options.

## 6. Reference files

Folder: `genome/`

When `--save_reference` is specified, generated or supplied reference files may be published here. Reference indices can be stored under `genome/index/`, organized by tool.

## Important note
This is a documentation summary, not the result of a full nf-core/rnaseq run. Folder names and available files depend on the chosen options, aligner, quantifier, and whether optional outputs are enabled.

## Key learning
The output directory separates quality control, read alignment, expression quantification, reference resources, and execution reports. Knowing where each result is stored makes it easier to assess data quality, troubleshoot runs, and prepare downstream analyses.
