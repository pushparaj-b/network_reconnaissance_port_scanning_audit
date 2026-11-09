# Network Reconnaissance Findings Report

**Assessor:** Student / Security Analyst (enter name)  
**Target:** Exact owner-approved sandbox IP (to be entered)  
**Authorization reference:** Pending  
**Testing window:** Pending  
**Report date:** 09 November 2026  
**Status:** TEMPLATE — Nmap scans and Wireshark analysis NOT RUN in this package.

## 1. Executive Summary
This report defines a controlled reconnaissance and packet-analysis assessment using Nmap and Wireshark. No scan output or packet capture was supplied or generated; therefore no open ports, services, exposed credentials, or anomalies are claimed as observed.

## 2. Scope and Authorization
The previous training inventory listed `192.168.56.20` as a possible LAB-02 host-only VM. Re-confirm this address and obtain written owner permission for the exact scan types and port limits before use. All unlisted systems are out of scope.

## 3. Methodology
- Nmap host reachability check against one authorized target.
- TCP SYN scan limited to top 100 ports.
- UDP scan limited to top 20 ports.
- Lightweight service/version detection.
- OS detection where supported.
- Wireshark capture on the isolated lab interface using benign synthetic traffic.
- Manual review of actual ports, services, encryption, and protocol anomalies.

No exploit, brute-force, denial-of-service, intrusive NSE, or broad subnet scan is included.

## 4. Nmap Results
Nmap version: __________  Scan date/time: __________  Target: __________

| Scan type | Result |
|---|---|
| TCP SYN | NOT RUN — evidence pending |
| UDP top 20 | NOT RUN — evidence pending |
| Service/version | NOT RUN — evidence pending |
| OS detection | NOT RUN — evidence pending |

Attach original Nmap text/XML outputs. Populate the port/service table from genuine output only. Do not invent open ports.

## 5. Wireshark Results
Wireshark version: __________  Interface: __________  Capture period: __________  
Capture file: __________

| Frame | Protocol | Source → Destination | Encryption | Observation | Evidence |
|---|---|---|---|---|---|
| NOT RUN | — | — | Unknown | No packet capture supplied | None |

Credential exposure and anomalous-protocol assessments are NOT ASSESSED. Use synthetic values only and redact credential-like data in report screenshots.

## 6. Findings and Risk Assessment
For each verified finding record: ID, target/port, observed state, service/version, evidence reference, impact, severity rationale, remediation, and validation status. An open port alone does not prove a vulnerability.

## 7. Recommendations
Apply where supported by actual results: disable unnecessary services; restrict management access; patch exposed services; prefer SSH/HTTPS/SFTP over Telnet/plaintext HTTP/FTP; enforce strong authentication and least privilege; monitor traffic; re-test after remediation within the approved scope.

## 8. Evidence Inventory
Attach original Nmap outputs and redacted Wireshark screenshots. Keep original PCAPNG files in restricted storage; do not publish sensitive captures.

## 9. Limitations
Results depend on host availability, firewall behavior, scan privileges, and approved port range. UDP states may be ambiguous and OS detection may be inconclusive. Captures represent only the selected interface and capture period.

## 10. Conclusion
Complete after actual scans and packet analysis. Until evidence is added, this remains a report template, not a completed technical audit.

## 11. Approval
Assessor: ____________________ Date: __________  
Lab owner / supervisor: ____________________ Date: __________
