# Network Reconnaissance & Port Scanning Audit — Scope and Authorization

**Assessor:** Student / Security Analyst (enter name)  
**Lab owner:** RabTech lab / authorized sandbox owner (confirm)  
**Prepared:** 09 November 2026  
**Status:** PLANNING TEMPLATE — no scans have been run.

## Target boundary
The previous training inventory listed `192.168.56.20` as a possible LAB-02 host-only VM. This is only a candidate. Before scanning, confirm with the owner that the VM exists, the IP is current, and written permission explicitly includes TCP SYN, limited UDP, service/version, OS-detection scans, and packet capture.

If the approved sandbox uses another address, use only the exact owner-approved IP. Never scan public, third-party, campus/company, or unlisted systems.

## Permitted after written approval
- Nmap TCP SYN scan against the single approved host.
- Limited UDP scan (top 20 ports unless the owner approves another limit).
- Lightweight service/version detection.
- OS detection where supported.
- Wireshark capture on the isolated lab interface using benign synthetic traffic.

## Prohibited
Denial of service, stress testing, exploit scripts, brute force, password spraying, credential stuffing, intrusive NSE scripts, broad subnet discovery, capturing unrelated network traffic, or collecting/publishing real credentials, tokens, cookies, or personal data.

## Owner approval record — must be completed
Authorized target: ____________________  
Asset owner: ____________________  
Approved scan types and port limits: ____________________  
Start/end date and time (include time zone): ____________________  
Rate limits / operational constraints: ____________________  
Emergency contact: ____________________  
Written approval reference/signature: ____________________  
Approval date: ____________________

## Stop conditions
Stop immediately if the target does not match the approved host, permission is withdrawn, instability occurs, traffic leaves the isolated lab, unrelated systems appear in scope, or sensitive data is encountered. Notify the owner.

**A starter inventory entry or this document does not itself grant authorization.**
