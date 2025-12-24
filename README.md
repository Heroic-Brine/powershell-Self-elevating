# Powershell-Self-elevating

Small helper script that relaunches itself with Administrator privileges when needed.

## Usage

Run `Self_elevate.ps1` at the start of your script. If the current process is not elevated,
it will re-run the same script with `RunAs` and forward any original arguments.

This is intended as a tiny base to copy into other scripts.
 
