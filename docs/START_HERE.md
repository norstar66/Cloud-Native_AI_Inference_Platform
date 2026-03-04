# Start Here — Cloud-Native AI Inference Platform

**Role framing:** AI Systems Engineer (architecture-focused)  
**Core claim:** I designed and operated a cloud-native inference platform with explicit tradeoffs, evidence, and cross-cloud translation.

---

## 1) What this repo contains

- **/app** — FastAPI inference service (`/infer`, `/healthz`)
- **/infra** — Terraform modules + environment wiring
- **/docs** — ADRs, ACE mapping, demo narrative, evidence

---

## 2) 60-second architecture overview

**GCP reference implementation (Phase A):**

- Cloud Run inference service (container from Artifact Registry)
- Custom VPC with public/private subnets
- Small GCE ops VM for Linux + ops labs (OS Login, snapshots)
- Observability: logs, metrics, alerts, audit logs, log export

**AWS translation (Phase C):**

- Re-implemented equivalents and documented semantic differences.

---

## 3) Quick demo path (5–7 minutes)

1. **Demo script:** `docs/06_Demo Narrative Script.md`
2. **Architecture decisions:** `docs/adr/`
3. **ACE coverage mapping:** `docs/ACE_MAPPING.md`
4. **Evidence pack:** `docs/evidence/` (terraform apply, curl checks, dashboards)

---

## 4) Engineering discipline (how work is governed)

- **Wren pairing protocol:** `docs/WREN_AGENT_PROTOCOL.md`
- **SkillsBoost lab log:** `docs/skillsboost-log.md`
- **Definition of Done:** `docs/03_Definition of Done by Layer.md`
- **Backlog:** `docs/07_Backlog - ACE Coverage Tasks.md`

---

## 5) Current status

See: `README.md` + latest GitHub Actions runs

---

## 6) How to run locally (fast path)

1. `make test`
2. `make build`
3. `make run`
4. `curl localhost:8000/healthz`

Infrastructure deployment requires GCP credentials and Terraform state config.
See: `/infra/terraform/envs/dev`