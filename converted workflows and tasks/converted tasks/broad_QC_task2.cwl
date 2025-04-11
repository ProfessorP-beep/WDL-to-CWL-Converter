{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    # These are optionally generated, but need to exist for Cromwell's sake\n    touch ",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "input_bam_index": {
            "type": "File"
        },
        "output_bam_prefix": {
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
        "collect_gc_bias_metrics": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        }
    },
    "outputs": {
        "alignment_summary_metrics": {
            "type": "File"
        },
        "gc_bias_detail_metrics": {
            "type": "File"
        },
        "gc_bias_pdf": {
            "type": "File"
        },
        "gc_bias_summary_metrics": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}