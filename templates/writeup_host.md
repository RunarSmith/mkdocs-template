# Host / target

## Summary

Brief overview of the pentesting engagement

A comprehensive pentesting engagement was conducted on a single host machine.
This report details the findings, including initial reconnaissance, vulnerability exploitation, privilege escalation, and lateral movement.

## Key findings and References

- CVE-2000-012345 :
  - [Article](https://article.com/)
  - [PoC](https://github.com/)

## Initial reconnaissance

- **Passive Reconnaissance:**
  - Google search revealed the target system is a web server running Apache.
  - Shodan search identified open ports 22 (SSH), 80 (HTTP), and 21 (FTP).
- **Active Reconnaissance:**
  - A ping sweep identified the target system on the network.
  - A port scan confirmed the open ports identified in passive reconnaissance.
  - Banner grabbing revealed the versions of the running services.

### Target System Information

- Operating System: Ubuntu 22.04 LTS
- Network Configuration: 192.168.1.100
- Services Running: SSH, FTP, HTTP

### Findings and observations

## Initial Foothold

- **Vulnerability Identification:**
  - A vulnerability scan identified a remote code execution vulnerability in Apache (CVE-2023-4586). (linked to relevant TTPs)
- **Exploitation:**
  - The vulnerability was successfully exploited to gain initial access to the target system.

## Host Enumeration

- **Information Gathering:**
  - System commands were executed to gather information about the target system, including installed software, users, and network configuration.
- **Vulnerability Identification:**
  - Additional vulnerabilities were identified, such as a weak password for the root user.

## Lateral Movement

### exploitation

Vulnerabilities identified and exploited (linked to relevant TTPs)

Techniques used to move laterally (password spraying, brute force, exploiting vulnerabilities) (linked to relevant TTPs)

### New Host Enumeration

New Information gathered

New Potential vulnerabilities identified

## Privilege Escalation

Techniques used to gain higher privileges (local privilege escalation, lateral movement) (linked to relevant TTPs)

Successes and failures

## Findings

### Software

> use `nmap_2_md.py <nmap_file.xml>` to generate this table

| Software | Version | Vuln. ID       | Service name | Exposed on | Comments |
| -------- | ------- | -------------- | ------------ | ---------- | -------- |
| Drupal   | 9.5.2   | CVE-2023-44834 | http         | TCP/80     |          |
|          |         |                |              |            |          |
|          |         |                |              |            |          |
|          |         |                |              |            |          |
|          |         |                |              |            |          |

### Credentials

| Username | Password/Hash | Usage | Comment       |
| -------- | ------------- | ----- | ------------- |
| john     | P@ssw0rd      | SSH   | Weak password |
|          |               |       |               |
|          |               |       |               |
|          |               |       |               |

### Vulnerabilities

| Vuln. ID      | Severity | Description                           | Location                         | Remediation                                       |
| ------------- | -------- | ------------------------------------- | -------------------------------- | ------------------------------------------------- |
| CVE-2023-4586 | Critical | Unauthenticated remote code execution | Apache Struts /struts2-showcase/ | Apply latest Struts patch or upgrade to a version |
|               |          |                                       |                                  |                                                   |
|               |          |                                       |                                  |                                                   |
|               |          |                                       |                                  |                                                   |
|               |          |                                       |                                  |                                                   |

## TTP Mapping Table

See [ATT&CK Matrix](https://attack.mitre.org/)

| TTP ID    | TTP Description                          | Finding (input)                                        | Evidence (output)                 |
| --------- | ---------------------------------------- | ------------------------------------------------------ | --------------------------------- |
| T1595.001 | Active Scanning: Scanning IP Blocks      | target ID                                              | running services and applications |
|           | Exploitation of Software Vulnerabilities | Unauthenticated remote code execution in Apache Struts | Screenshot of successful exploit  |
|           | Data Exfiltration                        | SQL injection vulnerability in WordPress REST API      | Network capture                   |
|           | Exploitation of Software Vulnerabilities | Remote code execution in Apache Struts                 | Screenshot of successful exploit  |
|           | Privilege Escalation                     | Weak password for root user                            | user flag                         |
|           |                                          |                                                        |                                   |
|           |                                          |                                                        |                                   |
|           |                                          |                                                        |                                   |
|           |                                          |                                                        |                                   |

## Recommendations, Detections & Mitigations

- Apply the latest patches and updates for all software on the target system.
- Use strong, unique passwords for all accounts.
- Implement security best practices, such as regular backups and intrusion detection systems.
