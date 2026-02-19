
# TEI/XML Validation and Normalization Pipeline (Starter)

This starter shows how to:
- Parse TEI/XML using Python standard library
- Normalize Unicode to NFC
- Extract simple tokens for indexing
- Run basic checks for TEI elements

> Note: Full TEI schema validation typically uses RELAX NG via `lxml`. This starter keeps it dependency-free. You can add `lxml` later for strict validation.

## Quick start
```bash
python3 scripts/validate_and_normalize.py sample_data/sample_tei.xml build/normalized.xml
python3 scripts/tei_to_tokens.py build/normalized.xml build/tokens.txt
```

Outputs are placed in `build/`.

## What to extend next
- Add `lxml` and Relax NG validation
- Extract TEI header metadata (author, title) into JSON
- Emit CSV for PostgreSQL import
```
