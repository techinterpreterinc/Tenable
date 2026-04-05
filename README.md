# Tenable
Tenable scripts
# <p align="center"> █▀▀ █▀▀ █▀▀ █░█ █▀▀█ █▀▀ █▀▀ █▀▀ █░█ <br> ░█░ █▀▀ █░░ █▀█ █░░█ █▀▀ █▀▀ █░░ █▀▄ <br> ░▀░ ▀▀▀ ▀▀▀ ▀░▀ █▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀░▀ </p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-PowerShell-blue?style=for-the-badge&logo=powershell" />
  <img src="https://img.shields.io/badge/Security-Tenable-red?style=for-the-badge&logo=tenable" />
  <img src="https://img.shields.io/badge/Platform-Windows-0078D6?style=for-the-badge&logo=windows" />
</p>

---

## 🎙️ The Tech Interpreter | Official Repository
Welcome to the central hub for all scripts and resources featured on my **YouTube channel**. This repository is designed to bridge the gap between complex security configurations and automated, easy-to-run solutions.

### 🎯 What's in here?
This repo contains the logic and automation for deploying, managing, and auditing security tools, specifically focusing on **Tenable (Nessus/Agents)** and general **Windows System Administration**.

* 📦 **Deployment:** Silent install/uninstall scripts for Tenable Agents.
* ⚙️ **Configuration:** PowerShell scripts to tune Windows for security.
* 🛠️ **Utilities:** Helper scripts for API calls and Registry modifications.

---

## 🚀 Quick Start (Tenable Deployment)
If you are here from the YouTube video regarding Tenable installations, remember to force TLS 1.2 in your session before running web requests:

```powershell
# Required for modern API communication
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# To run a script directly from this repo:
irb -useb [https://raw.githubusercontent.com/techinterpreterinc/Tenable/main/install_agent.ps1](https://raw.githubusercontent.com/techinterpreterinc/Tenable/main/install_agent.ps1) | iex
