{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -eo pipefail\n\n    java -Xms3000m -Xmx3000m -jar /usr/picard/picard.jar \\\n      GenotypeConcordance \\\n      --CALL_VCF ",
    "inputs": {
        "call_vcf_file": {
            "type": "File"
        },
        "call_vcf_index_file": {
            "type": "File"
        },
        "call_intervals_file": {
            "type": "File"
        },
        "call_sample_name": {
            "type": "string"
        },
        "truth_vcf_file": {
            "type": "File"
        },
        "truth_vcf_index_file": {
            "type": "File"
        },
        "truth_intervals_file": {
            "type": "File"
        },
        "truth_sample_name": {
            "type": "string"
        },
        "output_metrics_basename": {
            "type": "string"
        },
        "genotype_concordance_threshold": {
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
        "summary_metrics": {
            "type": "File"
        },
        "detail_metrics": {
            "type": "File"
        },
        "contingency_metrics": {
            "type": "File"
        },
        "fails_concordance": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}