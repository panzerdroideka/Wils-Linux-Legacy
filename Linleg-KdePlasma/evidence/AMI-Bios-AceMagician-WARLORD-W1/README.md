AMI BIOS Documentation - AceMagician WARLORD W1
Purpose
This directory contains a complete photographic documentation of the factory BIOS configuration used on WARLORD W1 during Linux troubleshooting, network initialization analysis and reboot-related investigations.

The objective was to establish a fully documented BIOS baseline before making configuration changes and before conducting further firmware-related testing.

Documentation Date:

2026-10-25

Documented By:

Willy Olsen

System Information
Hardware
System:

AceMagician WARLORD W1

Processor:

AMD Ryzen 7 255

Graphics:

AMD Radeon 780M Graphics

Memory:

32 GB DDR5

Storage:

1 TB NVMe SSD

Network Adapter:

Realtek PCIe 2.5GbE Family Controller

BIOS Information
Vendor:

American Megatrends (AMI)

BIOS Build Date:

2025-09-03

Firmware Type:

UEFI

Scope of Documentation
The BIOS inspection focused on:

CPU Detection
Memory Detection
TPM Configuration
NVMe Detection
Power Management
Network Controller Detection
Ethernet Initialization
Secure Boot
Fast Boot
UEFI Network Stack
PXE Boot Configuration
HTTP Boot Configuration
Boot Order Configuration
A complete image set is included in this directory.

Key Findings
Successfully Detected
The BIOS consistently detects:

AMD Ryzen 7 255
32 GB DDR5 memory
1 TB NVMe SSD
TPM 2.0 device
Realtek PCIe 2.5GbE Family Controller
Stable MAC address
No missing hardware was observed during BIOS inspection.

Memory Configuration
Installed Memory:

32 GB DDR5

Configuration:

2 × 16 GB

Operating Speed:

5600 MT/s

Detection was correct and consistent.

Storage Configuration
Detected Device:

1 TB NVMe SSD

The storage device was detected correctly.

No abnormalities were observed.

Security Configuration
Secure Boot:

Disabled

TPM 2.0:

Enabled

No anomalies were observed.

Power Configuration
Observed Settings:

AC Power Loss Control = Power Off
S5 LAN Wake Up Control = Enabled
Wake On RTC = Disabled
PowerLimit Setting = Performance Mode
These settings were recorded as found.

Network Controller
Detected Controller:

Realtek PCIe 2.5GbE Family Controller

Observed:

Controller present
UEFI driver present
MAC address detected
IPv4 functionality present
IPv6 functionality present
No BIOS evidence suggests a defective Ethernet controller.

Network Boot Configuration
Observed Network Features:

Network Stack Enabled
IPv4 PXE Enabled
IPv4 HTTP Enabled
IPv6 PXE Enabled
IPv6 HTTP Enabled
Observed Boot Services:

UEFI HTTP IPv4
UEFI PXE IPv4
UEFI HTTP IPv6
UEFI PXE IPv6
These appear to be factory-default firmware settings.

Boot Configuration
Fast Boot:

Disabled

Boot Priority:

NVMe (WARLORD)
Hard Disk
USB Device
Network Boot
The machine boots from local NVMe storage.

Network boot is available but not prioritized.

Investigation Notes
WARLORD is used as:

Linux Workstation
KDE Plasma System
Development Platform
Gaming Platform
Documentation Platform
WARLORD does not use:

PXE Boot
HTTP Boot
Network Imaging
Remote Deployment
Future testing may evaluate disabling:

Network Stack
IPv4 PXE
IPv4 HTTP
IPv6 PXE
IPv6 HTTP
to determine whether removing unused firmware networking components influences reboot-related network behavior.

No changes were made before this documentation was collected.

Conclusion
The collected BIOS evidence establishes a complete baseline configuration for WARLORD W1.

No BIOS-level evidence was found indicating:

Defective RAM
Defective NVMe storage
Missing Ethernet controller
CPU detection problems
Fast Boot related issues
The Realtek 2.5GbE controller is consistently detected by firmware.

Current evidence suggests that any remaining network irregularities are more likely related to firmware-to-operating-system handoff, Linux driver initialization, NetworkManager behavior or reboot-specific state transitions than to BIOS hardware detection failures.

Evidence Inventory
See:

INDEX.md

for complete image references and image-to-menu mapping.

Total Images:

20

Combined Evidence Size:

~32.5 MB
