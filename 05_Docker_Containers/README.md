# Docker Containers — Concepts for Bioinformatics

## Official references
Containers: https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/
Images: https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-an-image/

## 1. What is a container?
A container is an isolated process that runs an application with the files and dependencies it needs. Containers are independently managed and help limit interference between applications.

## 2. What is a container image?
An image is a packaged, read-only template that includes the files, libraries, binaries and configuration needed to create a container. A container is a running instance of an image.

## 3. Key characteristics
- Self-contained: includes required application dependencies.
- Isolated: runs separately from other processes and containers.
- Portable: can be used across compatible environments.
- Independently managed: containers can be started and stopped separately.

Containers share the host operating system kernel. Virtual machines typically run a separate guest operating system and kernel.

## 4. Why containers matter in bioinformatics
Bioinformatics pipelines rely on specific versions of tools and libraries. Container images help define software environments, reduce dependency conflicts and make workflow execution more consistent across systems.

## 5. Relationship with Nextflow and nf-core
Nextflow can use container engines to run workflow processes in defined software environments. The Hello Nextflow Containers exercise demonstrated container configuration and execution as part of a pipeline.

Containers support reproducibility, but do not guarantee it by themselves. Pipeline versions, input files, reference resources, parameters and software versions should also be recorded.

## 6. Key distinctions
- Image: the packaged template.
- Container: a running instance of an image.
- Registry: a service for storing and distributing images.

## Learning outcomes
- Explain the difference between an image and a container.
- Describe isolation and portability.
- Explain how containers help manage bioinformatics dependencies.
- Connect container use to Nextflow and nf-core workflows.

## Evidence scope
This is a conceptual summary of the official Docker documentation. No separate Docker installation or hands-on exercise was required for this task.
