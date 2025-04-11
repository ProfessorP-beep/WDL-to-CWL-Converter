{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -eo pipefail\n\n    /root/tools/bcftools/bin/bcftools view -f 'PASS,.' ",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "input_vcf_index": {
            "type": "File"
        },
        "maf_file": {
            "type": "File"
        },
        "output_results_filename": {
            "type": "string"
        },
        "disk_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "results_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/bafregress:1.0\""
        }
    }
}