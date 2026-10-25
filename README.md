# Opioid discourse on Twitter during the emergence of COVID-19

R analysis and aggregate summary data accompanying my BSHES 740 report comparing methadone, Suboxone, and fentanyl mentions in two course-provided Twitter datasets.

## Files

- [Assignment1_ArikLemon.Rmd](Assignment1_ArikLemon.Rmd): the full annotated R analysis, including preprocessing, dictionaries, tables, and plots.
- [results/](results/): ten CSV files containing substance and analog counts, mention percentages, leading words and bigrams, spelling candidates, keyword percentages, topic changes, and weekly trends.
- [data/README.md](data/README.md): the required input schema and data-access information.
- [data/input_manifest.csv](data/input_manifest.csv): input-file counts, date ranges, and SHA-256 hashes.
- [install_packages.R](install_packages.R): required R packages.
- [reproducibility/sessionInfo.txt](reproducibility/sessionInfo.txt): R and package versions from the validation render.

## Data availability

Code and aggregate summary data are public. The original CSVs contain tweet text and profile locations and were supplied for coursework. Public redistribution permission has not been established, so those files are excluded. Re-running the analysis requires authorized access to the originals. The aggregate results can be inspected without them.

See [X’s content-redistribution guidance](https://docs.x.com/developer-terms/restricted-use-cases#redistribution-of-x-content).

## Reproduce the analysis

The analysis was validated with R 4.4.1; the complete package versions are recorded in `reproducibility/sessionInfo.txt`. The installer uses currently available package versions rather than pinning them.

1. Download or clone this repository and use its root folder as your working directory.
2. With authorized access, place `TADA_A1_set1.csv` and `TADA_A1_set2.csv` in `data/`. Preserve their supplied names and headers.
3. Install the required R packages:

   ```sh
   Rscript install_packages.R
   ```

4. Use RStudio’s Knit button, or run the following with Pandoc available:

   ```sh
   Rscript -e 'rmarkdown::render("Assignment1_ArikLemon.Rmd")'
   ```

The notebook generates an HTML report and nine of the summary CSVs. `results/topic_changes.csv` is derived from `results/topic_vocabulary.csv`: each change equals the Set 2 keyword percentage minus the Set 1 percentage, before rounding.

To extract a plain R script from the notebook:

```sh
Rscript -e 'knitr::purl("Assignment1_ArikLemon.Rmd", output="Assignment1_ArikLemon.R", documentation=1)'
```

## Interpretation

Questions 1–2 describe all supplied records; Questions 3–8 use English-tagged records. Duplicate rows remain separate observations. Explicit drug-name dictionaries determine substance matches; spelling-discovery candidates do not automatically enter the counting dictionary. Fentanyl analogs are counted separately from parent fentanyl.

Substance percentages use all English records in each dataset or week. Keyword percentages use records mentioning the relevant substance within each dataset. Substance and keyword categories can overlap. Word frequencies count a word once per post; bigram frequencies count repeated occurrences.

Comparisons are descriptive, with no statistical-significance or causal-effect tests. Keyword matches identify vocabulary, not confirmed treatment access, exposure, or overdose. The collection periods do not isolate the effect of COVID-19.

## Citation

Use GitHub’s **Cite this repository** option, or cite:

Lemon, A. (2026). *Opioid discourse on Twitter during the emergence of COVID-19* [R code and aggregate summary data]. GitHub. https://github.com/ariklemon97/opioid-twitter-analysis
