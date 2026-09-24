# Day 3 - SSH Service & SELinux Check

## Objectives:

- Enable SSH service
- Temporarily disable SELinux
- Verify SSH Login

## Broken 

- SSHD stopped
- SELinux enforcing
- SSH login fails

### Commands:

sudo systemctl stop sshd

ssh user200@localhost

getenforce

![Broken State](../screenshots/day3-ssh-broken.png)

## Fix

- SSH enabled and running
- SELinux permissive
- SSH login succeeds

### Commands:

sudo systemctl enable --now sshd

sudo setenforce 0

![Fixed State](../screenshots/day3-ssh-fixed.png)

## Verification

### Commands:

ssh user200@gov-auth

![Verified](../screenshots/day3-ssh-verification.png)

## Screenshots

- Broken State

![Broken State](../screenshots/day3-ssh-broken.png)

- Fixed State

![Fixed State](../screenshots/day3-ssh-fixed.png)

- Verification

![Verified](../screenshots/day3-ssh-verification.png)

