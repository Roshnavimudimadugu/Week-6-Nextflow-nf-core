# Week 6 — Nextflow, nf-core and Reproducible Pipelines

This repository contains my learning evidence from Week 6 of my bioinformatics training. It covers Nextflow workflow development, nf-core pipeline standards, RNA-seq and variant-analysis pipeline documentation, containers, and reproducibility.

## Learning Objectives

- Understand Nextflow processes, channels, workflows, modules, containers, and configuration.
- Build and test an nf-core-style pipeline.
- Understand pipeline input validation and reusable modules.
- Study nf-core/rnaseq usage, samplesheets, parameters, reference inputs, and outputs.
- Understand the role of nf-core/sarek in germline and somatic variant analysis.
- Explain how containers, version control, and workflow documentation support reproducibility.

## Repository Contents

### 1. Hello Nextflow

[Open Hello Nextflow training evidence](01_Hello_Nextflow/README.md)

Covers all six core sections:

- Hello World
- Channels
- Workflow
- Modules
- Containers
- Configuration

Includes exercise scripts, section documentation, and execution logs.

### 2. Build with nf-core

[Open Build with nf-core evidence](02_Build_with_nf-core/README.md)

Contains the `core-hello` training project, including workflow source code, local and nf-core modules, configuration, parameter schema, software-version evidence, and valid/invalid input validation logs.

### 3. nf-core/rnaseq Documentation

[Open RNA-seq documentation](03_nfcore_rnaseq/README.md)

Covers samplesheet structure, pipeline parameters, execution profiles, reference inputs, quality control, MultiQC, alignment, quantification, and pipeline outputs.

Includes an illustrative samplesheet.

### 4. nf-core/sarek Overview

[Open Sarek overview](04_nfcore_sarek/README.md)

Summarizes germline and somatic variant analysis, major workflow stages, samplesheet concepts, and the role of Sarek in DNA-seq analysis.

### 5. Docker Container Concepts

[Open Docker concepts](05_Docker_Containers/README.md)

Explains container images, containers, isolation, software dependencies, portability, and their relevance to Nextflow workflows.

### 6. Two-Process Nextflow Workflow

[Open two-process workflow evidence](Two_Process_Workflow/README.md)

Demonstrates two connected Nextflow processes, with the workflow script, execution log, and verified final output.

### 7. Reproducible Workflows

[Read Why Reproducible Workflows Matter in Bioinformatics](Why_Reproducible_Workflows_Matter_in_Bioinformatics.md)

Discusses software versions, input data, reference resources, workflow parameters, execution logs, version control, and reproducibility practices.

## Evidence and Validation

The repository includes workflow scripts, documentation, execution logs, and validation results.

The `core-hello` valid-input test completed successfully. The deliberately invalid input was rejected by schema validation, which reported the missing required `greeting` field and the missing `batch` parameter.

The two-process Nextflow workflow also completed successfully, producing the expected final output.

## Scope and Limitations

- **nf-core/rnaseq:** The samplesheet contains illustrative FASTQ paths, not real input files. This section documents the pipeline rather than claiming a full RNA-seq analysis.
- **nf-core/sarek:** This section is an overview; Sarek was not run as part of this exercise.
- **Docker:** The repository includes a conceptual summary. Container execution was also explored during the Hello Nextflow training.
- **Execution logs:** Logs are retained as evidence, including initial failed attempts where relevant. Failed runs are not presented as successful executions.

## Official Learning Resources

- [Hello Nextflow Training](https://training.nextflow.io/latest/hello_nextflow/)
- [Build with nf-core](https://training.nextflow.io/latest/nfcore_build/)
- [nf-core/rnaseq — Usage](https://nf-co.re/rnaseq/latest/docs/usage)
- [nf-core/rnaseq — Outputs](https://nf-co.re/rnaseq/latest/docs/output)
- [nf-core/sarek — Usage](https://nf-co.re/sarek/latest/docs/usage)
- [Docker — What Is a Container?](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/)

---

*Week 6 learning portfolio — Nextflow, nf-core, and reproducible bioinformatics workflows.*
