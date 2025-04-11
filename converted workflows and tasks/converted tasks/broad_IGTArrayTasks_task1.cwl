{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    python /usr/gitc/zcall/zCall.py -B ",
    "inputs": {
        "zcall_ped_filename": {
            "type": "string"
        },
        "zcall_map_filename": {
            "type": "string"
        },
        "input_gtc": {
            "type": "File"
        },
        "bead_pool_manifest_csv_file": {
            "type": "File"
        },
        "zcall_thresholds_file": {
            "type": "File"
        },
        "disk_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "ped_file": {
            "type": "File"
        },
        "map_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/zcall:4.0.1-1.3-1629910423\""
        }
    }
}