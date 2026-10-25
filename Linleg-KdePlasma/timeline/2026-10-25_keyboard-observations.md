# Keyboard Observations

Date:
2026-10-25

Machine:
WARLORD

Observation 1

Command:

printscreen

Result:

printscreen: command not found

Observation 2

Expected:

Ctrl+End shortcut behavior

Observed:

Right Ctrl + ~ key required to produce tilde (~)

Status:

Requires further investigation.

Evidence Type:

Keyboard Input

This is the Way.

## Observation 6

Date:
2026-10-25

Expected:

Changing directory with:

cd ~

might return terminal to normal state.

Observed:

cd ~ changed working directory only.

Python virtual environment remained active.

Testing:

deactivate

Result:

(venv) prompt disappeared.

(base) prompt remained.

Conclusion:

Working directory, venv and Conda environment are independent states.

cd affects location only.

deactivate affects Python venv only.

Conda remains active until explicitly deactivated.

This is the Way.


## Observation 7

Date:
2026-10-25

Observation:

Git workflow training was performed while building the Linux Legacy evidence structure.

Expected:

Investigation would start directly with a Bugzilla report.

Observed:

Evidence collection, timeline creation, Git workflow and project structure were established before formal bug reporting.

Result:

Knowledge and documentation improved simultaneously.

Conclusion:

A structured workflow produces better bug reports than starting from assumptions.

Benefits:

- Reproducible workflow
- Evidence preservation
- Timeline history
- Git version tracking
- Easier Bugzilla reporting

This is the Way.

