{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -o pipefail\n    set -e\n\n    grep -A 1 PERCENT_DUPLICATION ",
    "inputs": {
        "duplication_metrics": {
            "type": "File"
        },
        "chimerism_metrics": {
            "type": "File"
        },
        "max_duplication_in_reasonable_sample": {
            "type": "string"
        },
        "max_chimerism_in_reasonable_sample": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "duplication_rate": {
            "type": "File"
        },
        "chimerism_rate": {
            "type": "File"
        },
        "is_outlier_data": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-dsp-gcr-public/base/python:3.9-debian\""
        }
    }
}