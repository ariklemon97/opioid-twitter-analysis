# Input data

The original course-provided CSVs are not included because public redistribution permission has not been established. The public repository contains aggregate summaries, not tweet-level text, locations, or identifiers.

To reproduce the analysis, obtain authorized access to the original datasets and place these files in this folder:

- `TADA_A1_set1.csv`
- `TADA_A1_set2.csv`

Both files have the supplied headers below. The analysis adds its own `set` and `row_id` variables after import.

| Column | Meaning |
| --- | --- |
| `id` | Identifier supplied with each record |
| `date` | Supplied post date |
| `lang` | Supplied language code; `en` identifies English records |
| `text` | Post text |
| `location` | Free-text profile location, not a verified post location |

See `input_manifest.csv` for the file hashes, counts, and date ranges used in the validation. The `.gitignore` file excludes other contents of this folder, including raw CSVs.

Manifest counts and date ranges use `readr::read_csv()`, matching the analysis import.
