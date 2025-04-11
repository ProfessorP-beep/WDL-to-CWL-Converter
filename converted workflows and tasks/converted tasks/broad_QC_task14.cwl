{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms2000m -Xmx2500m -jar /usr/picard/picard.jar \\\n      CollectVariantCallingMetrics \\\n      INPUT=",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "input_vcf_index": {
            "type": "File"
        },
        "metrics_basename": {
            "type": "string"
        },
        "dbsnp_vcf": {
            "type": "File"
        },
        "dbsnp_vcf_index": {
            "type": "File"
        },
        "ref_dict": {
            "type": "File"
        },
        "evaluation_interval_list": {
            "type": "File"
        },
        "is_gvcf": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "docker": {
            "type": "string"
        }
    },
    "outputs": {
        "summary_metrics": {
            "type": "File"
        },
        "detail_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "docker"
        }
    }
}