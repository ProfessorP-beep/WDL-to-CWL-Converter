{
    "cwlVersion": "v1.2",
    "class": "Workflow",
    "inputs": {
        "sample_alias": {
            "type": "string"
        },
        "analysis_version_number": {
            "type": "string"
        },
        "call_rate_threshold": {
            "type": "string"
        },
        "reported_gender": {
            "type": "string"
        },
        "chip_well_barcode": {
            "type": "string"
        },
        "red_idat_cloud_path": {
            "type": "File"
        },
        "green_idat_cloud_path": {
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
        "dbSNP_vcf": {
            "type": "File"
        },
        "dbSNP_vcf_index": {
            "type": "File"
        },
        "bead_pool_manifest_file": {
            "type": "File"
        },
        "chip_type": {
            "type": "string"
        },
        "extended_chip_manifest_file": {
            "type": "File"
        },
        "cluster_file": {
            "type": "File"
        },
        "gender_cluster_file": {
            "type": "File"
        },
        "zcall_thresholds_file": {
            "type": "File"
        },
        "fingerprint_genotypes_vcf_file": {
            "type": "File"
        },
        "fingerprint_genotypes_vcf_index_file": {
            "type": "File"
        },
        "haplotype_database_file": {
            "type": "File"
        },
        "variant_rsids_file": {
            "type": "File"
        },
        "subsampled_metrics_interval_list": {
            "type": "File"
        },
        "contamination_controls_vcf": {
            "type": "File"
        },
        "minor_allele_frequency_file": {
            "type": "File"
        },
        "control_sample_vcf_file": {
            "type": "File"
        },
        "control_sample_vcf_index_file": {
            "type": "File"
        },
        "control_sample_intervals_file": {
            "type": "File"
        },
        "control_sample_name": {
            "type": "string"
        },
        "disk_size": {
            "type": "string"
        },
        "preemptible_tries": {
            "type": "string"
        },
        "genotype_concordance_threshold": {
            "type": "string"
        }
    },
    "outputs": {},
    "steps": {
        "AutoCall": {
            "run": "AutoCall.cwl",
            "in": {},
            "out": []
        },
        "RedIdatMd5Sum": {
            "run": "Md5Sum.cwl",
            "in": {},
            "out": []
        },
        "GreenIdatMd5Sum": {
            "run": "Md5Sum.cwl",
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
            "IlluminaGenotypingArrayTasks.cwl",
            "Qc.cwl"
        ]
    }
}