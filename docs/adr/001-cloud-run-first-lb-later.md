# ADR-001 — Cloud Run First, Load Balancer Later

## Status
Accepted

## Context
Need fast implementation momentum while preserving path to production-grade edge architecture and ACE domain coverage.

## Options Considered
- Start with Cloud Run direct URL
- Start with HTTPS LB + Cloud Run backend immediately

## Decision
Start with Cloud Run direct URL, add HTTPS Load Balancer in a later iteration.

## Tradeoffs
- Gain: faster delivery, lower initial complexity.
- Cost: edge-layer architecture deferred.

## Consequences
Core app + deploy + autoscaling can be validated early; LB and DNS become explicit next milestones.
