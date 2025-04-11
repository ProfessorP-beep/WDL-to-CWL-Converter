{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms2000m -Xmx3000m -jar /usr/picard/picard.jar \\\n      VcfToIntervalList \\\n      --INPUT ",
    "inputs": {
        "vcf_file": {
            "type": "File"
        },
        "interval_list_filename": {
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
        "interval_list_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}