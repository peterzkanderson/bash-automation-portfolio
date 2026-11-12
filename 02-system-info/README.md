# Bash Automation Portfolio

A collection of modular Bash scripts demonstrating Linux system administration, text-stream parsing, and operational diagnostics.

## Repository Structure

* **`01-fundamentals/`** — *(In progress)* Core Bash syntax, read-only variable declarations, and `tput` terminal styling.
* **`02-system-info/system_info.sh`** — A CLI system health and diagnostics dashboard that aggregates OS uptime, top CPU-consuming processes, root filesystem and memory utilization, NGINX daemon status, and external network packet loss.

## Featured Tool: `system_info.sh`

### Technical Highlights
* **Stream Parsing & Filtering:** Utilizes `awk` and `grep` pipelines against `df -h`, `free -h`, `ps`, `systemctl`, and `ping` to extract key operational metrics.
* **Terminal UI Styling:** Implements `tput` capabilities (`setaf`, `bold`, `sgr0`) to color-code resource thresholds and section dividers for rapid visual triage.

### Sample Output
![System Info Script Output](02-system-info/output.png)

## Usage

Clone the repository and execute the diagnostic script directly:

```bash
git clone git@github.com:peterzkanderson/bash-automation-portfolio.git
cd bash-automation-portfolio
./02-system-info/system_info.sh
