{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -eo pipefail\n\n    # Since VerifyIDIntensity might have been run in multi-sample mode and we only want the contamination\n    # of the *first* sample, we create a truncated version of the input_file with ONLY THAT FIRST LINE\n    TRUNCATED_INPUT_FILE=",
    "inputs": {
        "input_file": {
            "type": "File"
        },
        "expected_first_sample_name": {
            "type": "string"
        },
        "samples_file": {
            "type": "File"
        },
        "output_metrics_basefilename": {
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
        "output_metrics_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}