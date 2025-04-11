{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -e\n    \n    if [ ",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "input_vcf_index": {
            "type": "File"
        },
        "ref_fasta": {
            "type": "File"
        },
        "ref_fasta_index": {
            "type": "File"
        },
        "ref_dict": {
            "type": "File"
        },
        "dbsnp_vcf": {
            "type": "File"
        },
        "dbsnp_vcf_index": {
            "type": "File"
        },
        "calling_interval_list": {
            "type": "File"
        },
        "calling_interval_list_index": {
            "type": "File"
        },
        "calling_intervals_defined": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "is_gvcf": {
            "type": "string"
        },
        "extra_args": {
            "type": "string"
        },
        "docker_path": {
            "type": "string"
        },
        "machine_mem_mb": {
            "type": "string"
        }
    },
    "outputs": {},
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "docker_path"
        }
    }
}