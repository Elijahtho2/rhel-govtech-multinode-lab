# Ansible Automation Overview

## Control Node
gov-admin


## Managed Nodes
- gov-auth
- gov-app


## Purpose
Automate system administration tasks across multiple nodes.


## Usage

Run commands:


ansible all -i inventory -m ping


Run playbooks:


ansible-playbook -i inventory playbooks/<file>.yml


## AI-Assisted Workflow
Used AI as a troubleshooting aid for syntax errors and module lookups. Every playbook was run and validated against the live nodes before being committed.

## Outcome
Infrastructure tasks transitioned from manual execution to automated orchestration.
