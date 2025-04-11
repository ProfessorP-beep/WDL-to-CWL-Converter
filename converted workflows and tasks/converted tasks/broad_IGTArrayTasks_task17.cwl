{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    java -Xms13000m -Xmx13500m -jar /usr/picard/picard.jar \\\n    CreateExtendedIlluminaManifest \\\n    --INPUT ",
    "inputs": {
        "input_csv": {
            "type": "File"
        },
        "output_base_name": {
            "type": "string"
        },
        "cluster_file": {
            "type": "File"
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
        "dbSNP_vcf_file": {
            "type": "File"
        },
        "dbSNP_vcf_index_file": {
            "type": "File"
        },
        "supported_ref_fasta": {
            "type": "File"
        },
        "supported_ref_fasta_index": {
            "type": "File"
        },
        "supported_ref_dict": {
            "type": "File"
        },
        "chain_file": {
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
        "output_csv": {
            "type": "File"
        },
        "output_bad_assays_file": {
            "type": "File"
        },
        "report_file": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}