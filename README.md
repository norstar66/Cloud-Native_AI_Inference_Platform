# Cloud-Native AI Inference Platform

ACE-aligned portfolio project implementing a production-minded inference platform on GCP, then translating to AWS.

## Architecture (initial)
- Cloud Run (FastAPI inference API)
- Artifact Registry (container images)
- Custom VPC + subnets + firewall
- Optional ops node (GCE) for Linux/operations depth
- Cloud Logging/Monitoring + alerts
- Terraform-managed infrastructure

## Repository Layout
- `app/` FastAPI service
- `infra/terraform/modules/` reusable infrastructure modules
- `infra/terraform/envs/dev/` environment composition
- `docs/adr/` architecture decision records
- `.github/workflows/` CI/CD pipelines

## Quickstart
1. Copy `.env.example` to `.env` in `app/` if needed.
2. Build/run app locally:
   - `make run`
3. Terraform (dev):
   - `make tf-init`
   - `make tf-plan`

> Cloud Run first, HTTPS LB added later.
