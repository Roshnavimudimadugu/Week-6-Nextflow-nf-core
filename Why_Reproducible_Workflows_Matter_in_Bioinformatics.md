# Why Reproducible Workflows Matter in Bioinformatics

## 1. What is reproducibility?

Reproducibility in bioinformatics means documenting the computational methods, software, inputs, parameters, and reference resources used in an analysis so that the workflow can be inspected and rerun under the same or a clearly specified environment.

It is important because biological conclusions may depend on data processing choices, software versions, reference files, and analysis parameters.

## 2. Why reproducibility matters

- **Transparency:** other researchers can understand how results were generated.
- **Repeatability:** recorded commands and parameters make it easier to rerun an analysis.
- **Debugging:** logs and execution reports help identify where a workflow failed.
- **Collaboration:** shared code and documentation help other researchers understand and reuse a workflow.
- **Reliability:** validation and testing can identify incorrect inputs or unexpected workflow behaviour.

## 3. The role of Nextflow

Nextflow describes workflows as connected processes and manages their execution and data flow.

Useful features include:
- Modular process and workflow definitions.
- Channels for passing data between processes.
- Configuration for execution settings.
- Execution logs and reports.
- Resume support for compatible tasks whose inputs and execution context have not changed.

Using the same workflow code and recorded settings makes it easier to repeat an analysis. Results can still differ if inputs, dependencies, references, parameters, random seeds, or execution behaviour differ.

Official reference:
https://www.nextflow.io/

## 4. The role of nf-core

nf-core promotes shared standards for building documented, tested, reusable Nextflow pipelines.

Useful practices include:
- Consistent pipeline parameters and input formats.
- Reusable modules and subworkflows.
- Input validation using schemas.
- Versioned software dependencies and container images.
- Automated testing and documentation.
- Recording pipeline and software versions.

Official reference:
https://nf-co.re/docs/specifications/pipelines/overview

## 5. Containers and software dependencies

Containers package software and its dependencies into a defined environment. They can reduce dependency conflicts between computers and make workflow execution more consistent.

For better reproducibility:
- Use documented container image versions rather than relying on unspecified latest images.
- Record the pipeline version and relevant software versions.
- Keep configuration files and parameters with the project.
- Document the execution environment.

Containers help with reproducibility, but do not guarantee identical results on their own.

Official reference:
https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/

## 6. Version control and GitHub

Git records changes to code and documentation over time. A GitHub repository makes it possible to share the project, review changes, and identify the version used for an analysis.

Good practices include:
- Use meaningful commit messages.
- Keep scripts and documentation under version control.
- Record the pipeline revision or release used.
- Avoid committing large temporary execution directories.
- Never commit passwords, access tokens, or sensitive data.

## 7. Recording analysis provenance

For each important workflow run, record:
- Workflow or pipeline name and version.
- Nextflow and relevant tool versions.
- Input files and samplesheet.
- Reference genome and annotation versions.
- Command-line parameters and configuration profiles.
- Execution logs and relevant reports.
- The output directory and any failures or deviations.

For sequencing projects, reference resources and samplesheet contents are particularly important because differences in inputs can affect downstream results.

## 8. How the Week 6 exercises demonstrate these principles

### Hello Nextflow
The Hello Nextflow exercises demonstrated processes, channels, workflows, modules, containers, and configuration. Successful execution logs were saved as evidence.

### Build with nf-core
The core-hello training demonstrated reusable modules, standardized pipeline structure, software-version reporting, and input validation. The valid-input test completed successfully, while the invalid-input test was rejected with validation errors.

### nf-core/rnaseq documentation
The documentation notes cover samplesheet structure, parameters, profiles, reference inputs, quality control, alignment, quantification, and output reporting. The example FASTQ paths are placeholders; a full RNA-seq analysis was not run for that documentation task.

### nf-core/sarek
The Sarek overview describes its role in germline and somatic variant analysis. Sarek was not run as part of the overview task.

### Containers
The Docker note describes images, containers, isolation, and software dependencies. Container execution was also explored in the Hello Nextflow training.

## 9. Practical reproducibility checklist

Before sharing or publishing a bioinformatics workflow, check that:
- [ ] The code and documentation are saved in version control.
- [ ] The pipeline and tool versions are recorded.
- [ ] The input data and reference resources are identified.
- [ ] Parameters and configuration settings are documented.
- [ ] Input validation and suitable tests have been performed.
- [ ] Successful execution logs and relevant reports are retained.
- [ ] Failures and limitations are documented honestly.
- [ ] Sensitive information and unnecessary temporary files are excluded.

## Conclusion

Reproducibility is supported by clear workflow structure, version control, documented inputs and parameters, controlled software environments, validation, and recorded execution evidence.

Nextflow and nf-core provide tools and conventions that support these practices. Reliable scientific reuse still depends on documenting the complete computational context and checking whether differences in data or environment could affect the results.
