# Multi-Phase Multi-Nodal RHEL-GovTech Lab Architecture

## Overview 

This repository simulates a multi-node Red Hat Enterprise Linux (RHEL) environment designed to reflect real-world GovTech infrastructure operations.

This lab is structured into three progressive phases, each building on the previous, and is deployed across three virtual machines (VMs) with clearly defined roles:

- Gov-Admin
- Gov-Auth
- Gov-App

This project demonstrates:

- multi-system administration
- identity and access control workflows
- service deployment and validation
- storage and persistence management
- security hardening (SELinux-aware operations)
- structured troubleshooting and documentation

# Architecture Diagram

![Multi-Phase Multi-Nodal Architecture](diagram/multi-phase-multi-nodal-architecture.png)

# Core Nodes

  ## Gov-Admin (Control Node)

Primary orchestration and configuration system.

### Responsibilities:

- user and group management
- shared storage configuration (ACLs, permissions)
- LVM and filesystem management
- service installation and configuration (e.g., HTTP)
- systemd targets and service persistence
- central documentation and Git operations

# Gov-Auth (Authentication Node)

Validates identity and access behaviour from an external system.

### Responsibilities:

- user login validation
- SSH and authentication testing
- permission and ACL verification
- cross-system access validation
- identity troubleshooting scenarios

# Gov-App (Application / Client Node)

Represents the consumer of services in the environment.

### Responsibilities:
- service reachability testing (e.g., HTTP)
- mount and storage validation
- application-side verification
- client perspective troubleshooting
- multi-node interaction validation

# Phase Breakdown
## Phase 1 - Foundation (Core Authentication & System Basics)

Focus:

- users and groups
- permissions and ACLs
- shared directory behavior 
- package installation (dnf)
- system services (systemctl)
- storage (LVM)
- persistent mounts (/etc/fstab)

-> This phase builds core Linux administration skills aligned with RHCSA-level tasks.

# Phase 2 - Core Infrastructure Services

Focus:

- multi-node service integration
- HTTP/service validation across systems
- repo and package workflows
- persistent infrastructure services
- inter-node communication testing

-> This phase simulates real-world system interaction across multiple hosts.

# Phase 3 - Security, Hardening, and Integrated Operations

Focus:

- SELinux-aware administration
- security policy and context troubleshooting
- hardened service configurations
- secure multi-node workflows
- integrated environment validation

-> This phase reflects production-level operational thinking.

# Network Design

## Internal VM Network (Host-Only / Lab Network)

- Example: 192.168.56.x
- Used for:
    - VM-to-VM communication
    - service validation between nodes
    - authentication and access testing

## External / NAT Network

- Used for:
    - package installation (dnf)
    - external repository access
    - internet connectivity validation

# Node Interaction Flow

The system follows a structured operation pattern:

    1. Gov-Admin
        - configures users, storage, and services
    
    2. Gov-Auth
        - validates identity and access behavior

    3. Gov-App
        - consumes and validates services from a client perspective

This mirrors real-world infrastructure pipelines:

- build -> validate -> consume

# Repository Structure (VM-First Model)

This lab uses a VM-first structure, aligned with SSH-based workflows:

phase-1-foundation/
|-- gov-admin/

|-- gov-auth/

|-- gov-app/

Each VM maintains its own:

- daily logs
- troubleshooting steps
- screenshots
- validation results

-> This reduces Git conflicts and mirrors real multi-node operations.

# Documentation Strategy

Each day includes:

- #Objectives
- #Broken
- #Troubleshoot
- #Fixed
- command execution logs
- validation outputs
- screenshots

This demonstrates:

- problem-solving ability
- debugging workflow
- system-level thinking

# Key Skills Demonstrated 

- Linux system administration (RHCSA-aligned)
- multi-node infrastructure coordination
- access control and identity management
- storage and filesystem management
- service configuration and validation
- Git-based documentation across systems
- troubleshooting under realistic constraints
- security and SELinux awareness

# Project Goal

To simulate a real-world GovTech/Linux systems environment and demonstrate:

- not just configuration ability
- but the ability to diagnose, validate and explain systems across multiple nodes.

# Final Note

This lab evolves from:

- single-node administration -> multi-node infrastructure -> secure, production-style operations

and is designed to showcase readiness for:

- Linux System Administration roles
- GovTech / enterprise environments
- cloud / infrastructure engineering pathways



