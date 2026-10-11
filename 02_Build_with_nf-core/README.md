# Build with nf-core — Training Evidence

Official training:
https://training.nextflow.io/latest/nfcore_build/

## Objective
Adapt a basic Nextflow workflow to nf-core conventions, use reusable modules, configure a COWPY module, and validate pipeline inputs.

## Training sections
- Part 1: Create and structure an nf-core-compatible pipeline.
- Part 2: Install and integrate the nf-core find/concatenate module.
- Part 3: Create and adapt a COWPY module, including container and version reporting.
- Part 4: Configure parameter and input-file validation using nf-schema.

## Project
The `core-hello/` directory contains the copied pipeline source, workflows, modules, configuration, schema, documentation, and test input files.

## Validation evidence

### Valid input
Command:
`nextflow run . --outdir core-hello-results -profile test,docker`

Result: Pipeline completed successfully.

Log: `evidence/valid-input-run.log`

### Invalid input
Command:
`nextflow run . --input assets/invalid_greetings.csv --outdir test-results -profile docker`

Result: Validation rejected the invalid CSV and reported the missing required `greeting` field. It also reported that the required `batch` parameter was missing because it was not supplied in this test command.

Log: `evidence/invalid-input-validation.log`

## Environment notes
The recorded runs used Nextflow 26.04.4. The logs include warnings about two unrecognized validation configuration options; these warnings are retained as part of the execution evidence.

## Learning outcomes
- Organizing a reusable Nextflow pipeline
- Integrating an nf-core module
- Handling module metadata and output channels
- Understanding parameter and CSV schema validation
- Testing both valid and invalid inputs
