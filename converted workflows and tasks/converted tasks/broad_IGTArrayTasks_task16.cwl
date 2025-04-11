{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    /gatk/gatk --java-options \"-Xms2000m -Xmx3000m\" \\\n      ValidateVariants \\\n      -V ",
    "inputs": {
        "input_vcf_file": {
            "type": "File"
        },
        "input_vcf_index_file": {
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
        "disk_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {},
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gatk/gatk:4.6.1.0\""
        }
    }
}