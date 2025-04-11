# 🔄 WDL to CWL Converter

This Python tool converts [WDL (Workflow Description Language)](https://openwdl.org/) files into [CWL (Common Workflow Language)](https://www.commonwl.org/) format. It supports **task-only WDLs**, full `workflow` definitions, and `import` statements from external files.

Tested using:
- Broad Institute's [Illumina Genotyping Array WDLs](https://github.com/broadinstitute/warp/tree/develop/pipelines/broad/genotyping/illumina)
- Seven Bridges' [CAVATICA platform CWL workflows](https://cavatica.sbgenomics.com/)

---

## ✅ Features

- ✅ Converts individual WDL `task` blocks into CWL `CommandLineTool` definitions
- ✅ Converts full `workflow` blocks into CWL `Workflow` definitions
- ✅ Resolves local WDL `import` statements and rewrites them as `.cwl` dependencies
- ✅ Preserves runtime information such as `dockerPull`
- ✅ Handles Broad-style WDLs with optional/default inputs

---

## 📦 Requirements

Python 3.7 or later

Install dependencies with:

```bash
pip install -r requirements.txt
```
---
## ⚠️ Important Notes on Execution
This converter focuses on translating WDL structure into CWL-compatible definitions, but it does not guarantee a fully executable pipeline out of the box.

If your WDL workflow imports tasks (e.g., Broad's IlluminaGenotypingArray workflow), you must:

✅ Convert each imported WDL file (e.g., IlluminaGenotypingArrayTasks.wdl, Qc.wdl) to CWL separately

✅ Ensure all converted .cwl tool files are present in the same directory as the main workflow CWL

⚠️ CWL does not support if, scatter, or dynamic expressions exactly as WDL does. These constructs may be skipped or simplified in conversion.

🔧 You may need to manually adjust input wiring, runtime options, or expression logic for full compatibility

This tool is best used as a starting scaffold to help wrap existing WDL pipelines into CWL format. Final validation and polish is expected before production use.

---

## How It Works
- parse_wdl() uses miniwdl to load WDL files and resolve any imports
- convert_task_to_cwl() converts each task block into a valid CWL CommandLineTool
- convert_workflow_to_cwl() builds a CWL Workflow from the workflow block, generating steps and input mappings
- If a WDL has only tasks and no workflow, the script outputs one CWL file per task

---

## 🛠️ Usage
python3 wdl_to_cwl.py <main_wdl_file> <output_cwl_file> [--import-dir <path_to_imports>]

# Examples
Convert a full workflow with local imports:
python3 wdl_to_cwl.py IlluminaGenotypingArray.wdl broad_IlluminaGenotypingArray.cwl --import-dir ./tasks/

# Convert a task-only WDL:
python3 wdl_to_cwl.py Qc.wdl broad_QC.cwl

# If the WDL contains only tasks, each task is saved as its own CWL file:
broad_QC_task0.cwl
broad_QC_task1.cwl
...

## 📁 Output Structure
| **WDL Input Type**     | **Output Type**           | **Notes**                                         |
|------------------------|---------------------------|--------------------------------------------------|
| `workflow`             | Single CWL Workflow file  | Tasks must be imported separately as `.cwl`      |
| `task-only WDL`        | Separate CWL per task     | No `workflow {}` block required                  |

## ⚠️ Notes
CWL does not support WDL-style conditionals (if) or scatter blocks directly — these are skipped or noted in the steps

All task baseCommands and runtime docker values are captured

Only File and string input/output types are currently supported. Extend convert_task_to_cwl() to add others.

The converter assumes imported WDL files are already local in the specified or current directory

## 🧪 Tested With
IlluminaGenotypingArray.wdl + IlluminaGenotypingArrayTasks.wdl from Broad

Qc.wdl and AggregatedBamQC.wdl from the Seven Bridges CAVATICA platform

## Contact
Feel free to fork, submit issues, or contribute to the project.

Author: Phillip Webster
