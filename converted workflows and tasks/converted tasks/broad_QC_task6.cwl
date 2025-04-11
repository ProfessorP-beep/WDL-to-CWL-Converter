{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -e\n    java -Xms",
    "inputs": {
        "input_bam": {
            "type": "File"
        },
        "input_bam_index": {
            "type": "File"
        },
        "input_vcf": {
            "type": "File"
        },
        "input_vcf_index": {
            "type": "File"
        },
        "input_sample_alias": {
            "type": "string"
        },
        "genotypes": {
            "type": "File"
        },
        "genotypes_index": {
            "type": "File"
        },
        "expected_sample_alias": {
            "type": "string"
        },
        "output_basename": {
            "type": "string"
        },
        "genotype_lod_threshold": {
            "type": "string"
        },
        "haplotype_database_file": {
            "type": "File"
        },
        "ref_fasta": {
            "type": "File"
        },
        "ref_fasta_index": {
            "type": "File"
        },
        "memory_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "allow_lod_zero": {
            "type": "string"
        }
    },
    "outputs": {
        "summary_metrics": {
            "type": "File"
        },
        "detail_metrics": {
            "type": "File"
        },
        "lod": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.10\""
        }
    }
}