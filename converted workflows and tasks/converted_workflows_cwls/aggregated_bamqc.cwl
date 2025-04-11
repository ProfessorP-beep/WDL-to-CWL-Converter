{
    "cwlVersion": "v1.2",
    "class": "Workflow",
    "inputs": {
        "base_recalibrated_bam": {
            "type": "File"
        },
        "base_recalibrated_bam_index": {
            "type": "File"
        },
        "base_name": {
            "type": "string"
        },
        "sample_name": {
            "type": "string"
        },
        "recalibrated_bam_base_name": {
            "type": "string"
        },
        "haplotype_database_file": {
            "type": "File"
        },
        "references": {
            "type": "string"
        },
        "papi_settings": {
            "type": "string"
        },
        "fingerprint_genotypes_file": {
            "type": "File"
        },
        "fingerprint_genotypes_index": {
            "type": "File"
        }
    },
    "outputs": {},
    "steps": {
        "CollectReadgroupBamQualityMetrics": {
            "run": "CollectReadgroupBamQualityMetrics.cwl",
            "in": {},
            "out": []
        },
        "CollectAggregationMetrics": {
            "run": "CollectAggregationMetrics.cwl",
            "in": {},
            "out": []
        },
        "CalculateReadGroupChecksum": {
            "run": "CalculateReadGroupChecksum.cwl",
            "in": {},
            "out": []
        }
    },
    "requirements": [
        {
            "class": "SubworkflowFeatureRequirement"
        }
    ],
    "hints": {
        "RequiredCWLFiles": [
            "Qc.cwl",
            "DNASeqStructs.cwl"
        ]
    }
}