# Wireshark Capture and Analysis Guide

Download Wireshark from https://www.wireshark.org/download.html. Install Npcap if prompted and required for Windows packet capture.

## Capture boundary
Capture only on the isolated lab/host-only interface during the owner-approved window. Do not capture public Wi-Fi, campus/company traffic, shared networks, or unrelated users. Use benign traffic and synthetic test accounts only. Never intentionally transmit real passwords for this exercise.

## Procedure
1. Confirm target, authorization, and test window.
2. Select the isolated lab interface in Wireshark.
3. Start capture.
4. Generate benign owner-approved traffic to the sandbox (for example, open a lab page or request a harmless resource).
5. Stop capture after the planned activity.
6. Save original capture as `lab_capture_original.pcapng` in restricted storage.
7. Make a redacted copy for report screenshots. Never publish secrets or unrelated traffic.

## Useful display filters
| Purpose | Display filter |
|---|---|
| HTTP | `http` |
| TLS | `tls` |
| DNS | `dns` |
| FTP control | `ftp` |
| Telnet | `telnet` |
| HTTP Authorization header | `http.authorization` |
| HTTP POST | `http.request.method == "POST"` |
| TCP retransmissions | `tcp.analysis.retransmission` |
| TCP resets | `tcp.flags.reset == 1` |
| ARP | `arp` |
| ICMP | `icmp` |

Filters help locate packets; they do not alone prove a vulnerability. Plaintext FTP, Telnet, or HTTP can expose sensitive data if real credentials are used. Use synthetic values only.

## Record
Frame number, timestamp, source/destination (in-scope only), protocol, relevant fields, encryption status, expected/anomalous rationale, impact, mitigation, and screenshot reference.

## Screenshot checklist
- `01_wireshark_interface.png` — isolated interface selected.
- `02_capture_overview.png` — packet list and capture time.
- `03_protocol_analysis.png` — filter and packet details.
- `04_plaintext_review_redacted.png` — only if synthetic plaintext is intentionally present; redact values.
- `05_anomaly_evidence.png` — only if a genuine anomaly is observed.

Do not manufacture screenshots or claim credentials/anomalies were found unless the capture genuinely demonstrates them.
