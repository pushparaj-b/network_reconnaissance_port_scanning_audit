# Network Reconnaissance & Port Scanning Audit

Contains scope/authorization template, Nmap runbook and PowerShell helper, Wireshark guide, findings register (XLSX/CSV), report (PDF/DOCX/Markdown), and evidence checklist.

**Integrity note:** This is a prepared audit dossier, not a completed scan. No Nmap or Wireshark activity was performed while creating it. Results are intentionally marked NOT RUN / NOT ASSESSED. No open ports, services, credentials, or anomalies have been invented.

The earlier lab inventory listed `192.168.56.20` as a possible LAB-02 host-only VM. Confirm with the owner that this remains the exact authorized sandbox target and obtain written permission for each scan type and port limit before using it.

## Finish the task
1. Obtain written authorization.
2. Install Nmap and Wireshark from their official websites.
3. Verify the exact target with the owner.
4. Run the scoped commands in `02_Nmap_Scans/nmap_scan_runbook.md`.
5. Capture only isolated lab traffic with synthetic data using `03_Wireshark_Analysis/wireshark_analysis_guide.md`.
6. Populate the findings register from genuine results and add redacted screenshots.
7. Update the PDF/DOCX report, replacing NOT RUN only where evidence supports it.
8. Keep PCAPNG and sensitive evidence private; publish only redacted materials.
