{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms3000m -Xmx3000m -jar /usr/picard/picard.jar \\\n      MergePedIntoVcf \\\n      --ORIGINAL_VCF ",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "input_vcf_index": {
            "type": "File"
        },
        "ped_file": {
            "type": "File"
        },
        "map_file": {
            "type": "File"
        },
        "zcall_thresholds_file": {
            "type": "File"
        },
        "zcall_version": {
            "type": "string"
        },
        "output_vcf_filename": {
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
        "output_vcf": {
            "type": "File"
        },
        "output_vcf_index": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}