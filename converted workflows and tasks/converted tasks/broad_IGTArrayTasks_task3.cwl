{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n  java -Xms",
    "inputs": {
        "vcf_filename": {
            "type": "string"
        },
        "input_gtc": {
            "type": "File"
        },
        "gender_gtc": {
            "type": "File"
        },
        "extended_chip_manifest_file": {
            "type": "File"
        },
        "cluster_file": {
            "type": "File"
        },
        "bead_pool_manifest_file": {
            "type": "File"
        },
        "sample_alias": {
            "type": "string"
        },
        "analysis_version_number": {
            "type": "string"
        },
        "reported_gender": {
            "type": "string"
        },
        "pipeline_version": {
            "type": "string"
        },
        "ref_fasta": {
            "type": "File"
        },
        "ref_fasta_index": {
            "type": "File"
        },
        "ref_dict": {
            "type": "File"
        },
        "memory_mb": {
            "type": "string"
        },
        "disk_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "fingerprint_genotypes_vcf_file": {
            "type": "File"
        },
        "fingerprint_genotypes_vcf_index_file": {
            "type": "File"
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