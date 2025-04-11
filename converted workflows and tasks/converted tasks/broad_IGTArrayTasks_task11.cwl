{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    /gatk/gatk --java-options \"-Xms2000m -Xmx3000m\" \\\n      SelectVariants \\\n      -V ",
    "inputs": {
        "input_vcf_file": {
            "type": "File"
        },
        "input_vcf_index_file": {
            "type": "File"
        },
        "output_vcf_filename": {
            "type": "string"
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
    "outputs": {
        "output_vcf": {
            "type": "File"
        },
        "output_vcf_index": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gatk/gatk:4.6.1.0\""
        }
    }
}