{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms1000m -Xmx3500m -jar /usr/picard/picard.jar \\\n      CalculateReadGroupChecksum \\\n      INPUT=",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "input_bam_index": {
            "type": "File"
        },
        "read_group_md5_filename": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "md5_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}