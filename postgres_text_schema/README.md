
# PostgreSQL Text Schema (Starter)

Minimal schema for storing authors, works, and tokenized text. Use this as a base to design richer models.

## Quick start
```sql
-- Create schema
\i schema.sql
-- Load sample data
\i sample_data/load_sample.sql
```

## Tables
- authors(id, name)
- works(id, author_id, title)
- lines(id, work_id, n, text)
- tokens(id, line_id, position, token)

## What to extend next
- Add indexes for faster lemma or token lookup
- Add editions and citations (URNs)
- Add materialized views for concordances
