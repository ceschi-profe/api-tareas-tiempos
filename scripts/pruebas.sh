#!/usr/bin/env bash
# Corre las pruebas de la API. El mismo comando sirve en local y en el pipeline.
# Deja el reporte JUnit en reportes/ y falla si la cobertura baja de 80 %.
set -euo pipefail
mkdir -p reportes
python -m pytest \
  --junitxml=reportes/junit.xml \
  --cov=app --cov-report=term-missing --cov-fail-under=80 \
  "$@"
