# Nmap Scan Runbook — one authorized sandbox host only

Install Nmap from https://nmap.org/download.html. Confirm the exact target IP and written permission first. The previous exercise listed `192.168.56.20` as a possible LAB-02 host-only VM; verify it is still the approved target.

Open PowerShell as Administrator where required:

```powershell
$TARGET = "192.168.56.20"   # Use only after owner confirms this exact target
$OUT = ".\nmap-output"
New-Item -ItemType Directory -Force $OUT | Out-Null
```

## Host reachability
```powershell
nmap -sn $TARGET -oN "$OUT\00-host-discovery.txt"
```

## TCP SYN — top 100 ports
```powershell
nmap -sS -T2 --reason --top-ports 100 $TARGET -oN "$OUT\01-tcp-syn.txt"
```

## UDP — top 20 ports only
```powershell
nmap -sU -T2 --top-ports 20 --reason $TARGET -oN "$OUT\02-udp-top20.txt"
```
UDP results may show `open|filtered`; do not interpret this as confirmed open without supporting evidence.

## Service/version detection — lightweight
```powershell
nmap -sV --version-light -T2 --top-ports 100 $TARGET -oN "$OUT\03-service-version.txt"
```

## OS detection
```powershell
nmap -O --osscan-limit -T2 $TARGET -oN "$OUT\04-os-detection.txt"
```
OS detection may require elevated privileges and may be inconclusive.

## Optional combined summary (only if specifically approved)
```powershell
nmap -sS -sV -O -T2 --top-ports 100 --reason $TARGET -oN "$OUT\05-combined-summary.txt"
```

Avoid `-A`, `-p-`, `-sC`, intrusive NSE scripts, brute-force scripts, and vulnerability scripts unless separately and explicitly authorized. Do not broaden the target range if the host is unavailable.

## Evidence
Preserve original `.txt` / `.nmap` / `.xml` outputs. Record Nmap version, date/time, target, exact command, and authorization reference. Do not edit results to create findings.
