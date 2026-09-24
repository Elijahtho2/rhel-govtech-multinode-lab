# Day 2 - Sudo Access 

## Objective

- Grant sudo access to user200
- Validate sudo access

## Broken State

### Commands:

su - user200

sudo systemctl restart sshd

![Broken State](../screenshots/day2-sudo-broken.png)

## Fixed

### Commands:

su -

usermod -aG wheel user200

visudo

----[ensure]    %wheel ALL=(ALL) ALL is there----

![Fixed State](../screenshots/day2-sudo-fixed.png)

## Verification

### Commands:

su - user200

sudo systemctl restart sshd

![Verified](../screenshots/day2-sudo-verified.png)

## Screenshots

- Broken State

![Broken State](../screenshots/day2-sudo-broken.png)

- Fixed State

![Fixed State](../screenshots/day2-sudo-fixed.png)

- Verification

![Verified](../screenshots/day2-sudo-verified.png)




