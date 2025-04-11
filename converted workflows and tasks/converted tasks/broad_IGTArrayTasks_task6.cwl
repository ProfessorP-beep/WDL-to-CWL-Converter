{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    /usr/gitc/verifyIDintensity -m ",
    "inputs": {
        "input_vcf": {
            "type": "File"
        },
        "input_adpc_file": {
            "type": "File"
        },
        "num_samples": {
            "type": "string"
        },
        "num_markers": {
            "type": "string"
        },
        "output_filename": {
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
        "output_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/verify-id-intensity:e6354872834fe4262354a6b27bfe85ecc1323677-1561566044\""
        }
    }
}