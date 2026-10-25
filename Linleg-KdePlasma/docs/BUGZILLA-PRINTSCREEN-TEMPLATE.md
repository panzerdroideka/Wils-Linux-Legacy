KDE Plasma Bug Report
Summary
PrintScreen functionality is not behaving as expected on WARLORD.

Environment
Machine: WARLORD

Distribution: Kubuntu

Desktop: KDE Plasma

Session: TBD

Kernel: TBD

Expected Behavior
Pressing the PrintScreen key should trigger KDE screenshot functionality.

The user should be able to capture screenshots directly from the keyboard.

Actual Behavior
Running:

printscreen
returns:

printscreen: command not found
Keyboard behavior requires further investigation.

Steps To Reproduce
Log into KDE Plasma
Press PrintScreen
Observe behavior
Run:
printscreen
Observe terminal output
Evidence
Timeline:

timeline/2026-10-25_keyboard-observations.md

Photos:

analysis-base/pixel-photos/

Logs:

evidence/journal/

evidence/dmesg/

Input Tests:

evidence/xev/

evidence/wev/

evidence/libinput/

evidence/evtest/

Investigation Status
[x] Initial observation

[x] Evidence structure created

[x] Timeline started

[ ] Reproduce consistently

[ ] Collect xev output

[ ] Collect wev output

[ ] Collect libinput output

[ ] Collect evtest output

[ ] Identify root cause

[ ] Submit Bugzilla report

This is the Way.
