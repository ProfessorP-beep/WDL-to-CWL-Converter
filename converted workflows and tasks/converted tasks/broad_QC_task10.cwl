{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "input_bam_index": {
            "type": "File"
        },
        "metrics_filename": {
            "type": "string"
        },
        "wgs_coverage_interval_list": {
            "type": "File"
        },
        "ref_fasta": {
            "type": "File"
        },
        "ref_fasta_index": {
            "type": "File"
        },
        "read_length": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "memory_multiplier": {
            "type": "string"
        },
        "additional_disk": {
            "type": "string"
        }
    },
    "outputs": {
        "metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}