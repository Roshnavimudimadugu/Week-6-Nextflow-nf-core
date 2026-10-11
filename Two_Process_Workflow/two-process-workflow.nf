nextflow.enable.dsl=2

process CREATE_GREETING {
    output:
    path 'greeting.txt', emit: greeting

    script:
    """
    echo 'Hello Nextflow' > greeting.txt
    """
}

process ADD_CONTEXT {
    publishDir 'Two_Process_Workflow/evidence', mode: 'copy'

    input:
    path greeting

    output:
    path 'final.txt', emit: result

    script:
    """
    {
        echo 'Two-process workflow result:'
        cat ${greeting}
    } > final.txt
    """
}

workflow {
    CREATE_GREETING()
    ADD_CONTEXT(CREATE_GREETING.out.greeting)
}
