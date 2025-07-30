#!/usr/bin/env nextflow

params.greeting = 'Hello world!'

process sayHello {
    output:
    stdout

    script:
    """
    echo '${params.greeting}'
    """
}

workflow {
    sayHello | view
}