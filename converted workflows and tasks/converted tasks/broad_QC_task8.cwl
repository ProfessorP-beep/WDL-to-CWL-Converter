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
        "report_filename": {
            "type": "string"
        },
        "ref_dict": {
            "type": "File"
        },
        "ref_fasta": {
            "type": "File"
        },
        "ref_fasta_index": {
            "type": "File"
        },
        "max_output": {
            "type": "string"
        },
        "ignore": {
            "type": "string"
        },
        "is_outlier_data": {
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
        },
        "disk_size": {
            "type": "string"
        }
    },
    "outputs": {
        "report": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}