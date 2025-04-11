{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n  java -Xms7000m -Xmx7000m -jar /usr/picard/picard.jar \\\n    BpmToNormalizationManifestCsv \\\n    --INPUT ",
    "inputs": {
        "bead_pool_manifest_file": {
            "type": "File"
        },
        "cluster_file": {
            "type": "File"
        },
        "bead_pool_manifest_csv_file": {
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
            "dockerPull": "\"us.gcr.io/broad-gotc-prod/picard-cloud:2.26.11\""
        }
    }
}