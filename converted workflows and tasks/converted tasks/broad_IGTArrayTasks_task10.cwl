{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -eo pipefail\n\n    /gatk/gatk --java-options \"-Xms2000m -Xmx3000m\" \\\n      SelectVariants \\\n      -V ",
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
        "excludeFiltered": {
            "type": "string"
        },
        "excludeNonVariants": {
            "type": "string"
        },
        "variant_rsids_file": {
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