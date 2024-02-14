rule get_all_archive:
    input: 
        script = "code/get_ghcnd_data.bash"
    output:
        data/"ghcnd_all.tar.gz"
    params:
        file = "ghcnd_all.tar.gz"
    shell:
        """
        {input.script} {params.file}
        """
