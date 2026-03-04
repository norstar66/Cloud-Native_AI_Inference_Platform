# ACE Mapping — Cloud-Native AI Inference Platform

Source: Associate Cloud Engineer Exam Guide

---

# Section 1 — Setup Environment (~23%)

| ACE Bullet | Implementation | Evidence | ADR |
|------------|---------------|----------|-----|
| API Enablement | infra/modules/project_services | terraform apply output | N/A |
| Billing Budget | Layer 0 Governance | Budget screenshot | ADR-XXX |
| Quotas & Regions | Quota table in docs | Screenshot | N/A |
| Asset Inventory | gcloud asset export | CLI output | N/A |

---

# Section 2 — Plan & Implement (~30%)

| ACE Bullet | Implementation | Evidence | ADR |
|------------|---------------|----------|-----|
| VPC + Subnets | infra/modules/network | plan/apply output | ADR-XXX |
| Firewall Rules | network module | rule test logs | ADR-XXX |
| Artifact Registry | infra/modules/artifact_registry | image push log | N/A |
| Cloud Run Deployment | infra/modules/cloud_run | service URL | ADR-001 :contentReference[oaicite:9]{index=9} |
| IAM Roles | infra/modules/iam | role binding output | ADR-XXX |

---

# Section 3 — Operations (~27%)

| ACE Bullet | Implementation | Evidence | ADR |
|------------|---------------|----------|-----|
| Snapshots | ops_vm | snapshot restore test | ADR-XXX |
| Static IP | network | reservation log | ADR-XXX |
| Subnet Expansion | networking lab | before/after config | ADR-XXX |
| Logging | observability | log query screenshot | ADR-XXX |
| Alerts | observability | alert fired screenshot | ADR-XXX |
| Audit Logs | project settings | verification screenshot | ADR-XXX |

---

# Section 4 — Access & Security (~20%)

| ACE Bullet | Implementation | Evidence | ADR |
|------------|---------------|----------|-----|
| IAM Policies | iam module | terraform output | ADR-XXX |
| Custom Role | iam module | role JSON | ADR-XXX |
| Service Account Impersonation | CLI demo | impersonation test | ADR-XXX |
| Short-lived Credentials | SA token test | CLI output | ADR-XXX |

---

## Completion Rule

No ACE bullet is considered complete until:

1) Built  
2) Validated  
3) Documented  
4) Explained without notes  

Reference Coverage Map :contentReference[oaicite:10]{index=10}