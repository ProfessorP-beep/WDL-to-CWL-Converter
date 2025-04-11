{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -e\n    rm -rf ",
    "inputs": {
        "chip_well_barcode": {
            "type": "string"
        },
        "green_idat_cloud_path": {
            "type": "File"
        },
        "red_idat_cloud_path": {
            "type": "File"
        },
        "bead_pool_manifest_file": {
            "type": "File"
        },
        "cluster_file": {
            "type": "File"
        },
        "is_gender_autocall": {
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
        "gtc_file": {
            "type": "File"
        },
        "autocall_version": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/illumina-iaap-autocall:1.0.2-1.1.0-1629910298\""
        }
    }
}