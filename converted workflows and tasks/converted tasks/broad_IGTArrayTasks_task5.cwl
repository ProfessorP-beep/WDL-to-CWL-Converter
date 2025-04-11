{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms2000m -Xmx3000m -jar /usr/picard/picard.jar \\\n             VcfToAdpc \\\n             --VCF ",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "contamination_controls_vcf": {
            "type": "File"
        },
        "samples_filename": {
            "type": "string"
        },
        "num_markers_filename": {
            "type": "string"
        },
        "output_adpc_filename": {
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
        "output_adpc": {
            "type": "File"
        },
        "samples_file": {
            "type": "File"
        },
        "num_markers": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}