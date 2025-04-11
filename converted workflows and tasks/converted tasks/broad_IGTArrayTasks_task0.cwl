{
    "cwlVersion": "v1.2",
    "class": "CommandLineTool",
    "baseCommand": "\n    set -e\n    set -o pipefail\n    md5sum ",
    "inputs": {
        "input_cloud_path": {
            "type": "File"
        }
    },
    "outputs": {
        "md5_cloud_path": {
            "type": "File"
        }
    },
    "requirements": {
        "DockerRequirement": {
            "dockerPull": "\"gcr.io/gcp-runtimes/ubuntu_16_0_4@sha256:025124e2f1cf4d29149958f17270596bffe13fc6acca6252977c572dd5ba01bf\""
        }
    }
}