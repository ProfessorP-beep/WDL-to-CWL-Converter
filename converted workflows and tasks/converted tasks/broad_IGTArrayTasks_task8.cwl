{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -eo pipefail\n\n    java -Xms2000m -Xmx3000m -jar /usr/picard/picard.jar \\\n      CollectArraysVariantCallingMetrics \\\n      --INPUT ",
    "inputs": {
        "input_vcf_file": {
            "type": "File"
        },
        "input_vcf_index_file": {
            "type": "File"
        },
        "dbSNP_vcf_file": {
            "type": "File"
        },
        "dbSNP_vcf_index_file": {
            "type": "File"
        },
        "call_rate_threshold": {
            "type": "string"
        },
        "output_metrics_basename": {
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
        "control_metrics": {
            "type": "File"
        },
        "passes_autocall": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}