# 📘 Rapport de Projet — Pipeline de Déploiement Continu

## 🛰 Contexte

Ce projet a été réalisé dans le cadre d’un exercice de déploiement d’une API REST supervisant des capteurs environnementaux. L’objectif était de construire un pipeline CI/CD complet intégrant :

- Le provisionnement de l'infrastructure avec Terraform
- La configuration et le déploiement de l’API avec Ansible
- L’orchestration automatisée avec GitHub Actions

---

## ⚙️ Infrastructure (Terraform)

### ✅ Choix du provider

Le provider choisi est **Microsoft Azure**, car il permet un provisionnement rapide d’une VM Ubuntu, simple à intégrer avec Ansible et GitHub Actions.

### ✅ Ressources créées

Le fichier `infra/main.tf` crée :

- Un **Resource Group**
- Une **VM Ubuntu**
- Une **IP publique**
- Une **carte réseau** connectée à une **subnet**
- Un **groupe de sécurité** autorisant :
  - Port **22** pour SSH
  - Port **3000** pour l’API Node.js

### ✅ Commandes utilisées

```bash
cd infra
terraform init
terraform plan
terraform apply
```
