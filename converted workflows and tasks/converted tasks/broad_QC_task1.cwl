{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms5000m -Xmx6500m -jar /usr/picard/picard.jar \\\n      CollectMultipleMetrics \\\n      INPUT=",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "output_bam_prefix": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "base_distribution_by_cycle_pdf": {
            "type": "File"
        },
        "base_distribution_by_cycle_metrics": {
            "type": "File"
        },
        "insert_size_histogram_pdf": {
            "type": "File"
        },
        "insert_size_metrics": {
            "type": "File"
        },
        "quality_by_cycle_pdf": {
            "type": "File"
        },
        "quality_by_cycle_metrics": {
            "type": "File"
        },
        "quality_distribution_pdf": {
            "type": "File"
        },
        "quality_distribution_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}