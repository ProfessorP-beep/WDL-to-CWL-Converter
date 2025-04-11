{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Dsamjdk.buffer_size=131072 \\\n      -XX:GCTimeLimit=50 -XX:GCHeapFreeLimit=10 -Xms3000m -Xmx3000m \\\n      -jar /usr/picard/picard.jar \\\n      CrosscheckFingerprints \\\n      OUTPUT=",
    "inputs": {
        "input_bams": {
            "type": "File"
        },
        "input_bam_indexes": {
            "type": "File"
        },
        "haplotype_database_file": {
            "type": "File"
        },
        "metrics_filename": {
            "type": "string"
        },
        "total_input_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "lod_threshold": {
            "type": "string"
        },
        "cross_check_by": {
            "type": "string"
        }
    },
    "outputs": {
        "cross_check_fingerprints_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}