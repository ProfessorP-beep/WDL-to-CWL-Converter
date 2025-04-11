{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    input_base=$(dirname ",
    "inputs": {
        "pre_adapter_detail_metrics": {
            "type": "File"
        },
        "bait_bias_detail_metrics": {
            "type": "File"
        },
        "base_name": {
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
        "preemptible_tries": {
            "type": "string"
        },
        "memory_multiplier": {
            "type": "string"
        }
    },
    "outputs": {
        "oxog_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}