{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms2000m -Xmx3000m -jar /usr/picard/picard.jar \\\n      CollectQualityYieldMetrics \\\n      INPUT=",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "metrics_filename": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "quality_yield_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}