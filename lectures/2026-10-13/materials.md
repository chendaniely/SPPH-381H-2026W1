# Course textbook: Week 5, Polyglot Awareness & R Deepening

Every chapter of Week 5 of the course textbook, *Health Data Science: AI and Knowledge Translation* (HDSx), in book order, followed by the Assignment 4 instructions it links to. Each heading links to that section of the published book: <https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/>.

Taken from the book's source, github.com/ehsanx/HDSx at commit 8dad6de. Comments and video embeds are left out.

## [Polyglot Awareness & R Deepening](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/)

### [Overview](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#overview)

Week 5 is about becoming a careful bilingual reader of data analysis code. R remains the core language for required course work. Python is introduced so you can read short `pandas` examples, translate small tasks with AI assistance, and verify that a translated result still answers the same question.

Polyglot awareness means being able to recognize and compare similar data steps in more than one programming language. R remains the required language; Python is used here for comparison and translation practice.

The week has two linked goals:

- deepen R fluency with `dplyr`, functions, and clear summaries;
- compare a small R result with a Python/pandas translation using explicit parity checks.

### [Learning Objectives](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#learning-objectives)

By the end of this week, you should be able to:

- explain when R is the better default and when Python may be useful;
- write a clear R `dplyr` pipeline for a descriptive health-data summary;
- refactor repeated R code into a small function;
- create and run a Python notebook in Codespaces;
- load and inspect a CSV with `pandas`;
- identify common R-to-Python translation traps;
- use AI one step at a time while auditing each translated output;
- document approved Python dependencies in the workspace-root
  `.devcontainer/requirements.txt`;
- use Git to commit a clean translation workflow.

### [Connection](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#connection)

Week 4 made small changes reviewable through Git. This week uses that review mindset inside the analysis itself: first build a trusted R result, then translate one step at a time and compare. Next week you will turn those checked summaries into clearer visual explanations.

### [Case Study Data Analysis](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#case-study-data-analysis)

**What to do with this code:** read it. The code block below runs automatically when this page is built — you do not need to run or change it here. You will write your own version in the studio.

The **NHANES Health Equity data spine** now supports code-reading, EDA, visualization, and reproducibility checks. Use the cached CSV/RDS for routine class work; a CDC retrieval script exists for advanced users.

- Cached RDS: [`examples/nhanes-equity/data/nhanes_equity_v6.rds`](https://github.com/ehsanx/HDSx/blob/main/examples/nhanes-equity/data/nhanes_equity_v6.rds)
- CSV snapshot: [`examples/nhanes-equity/data/nhanes_equity_v6.csv`](https://github.com/ehsanx/HDSx/blob/main/examples/nhanes-equity/data/nhanes_equity_v6.csv)
- Case-study README: [`examples/nhanes-equity/README.md`](https://github.com/ehsanx/HDSx/blob/main/examples/nhanes-equity/README.md)

The default classroom path is to use the cached data so the analysis work is reproducible without internet access.

**What to do here:** you may run the code below — it loads the cached CSV and prints two small summaries; reading it carefully is enough unless your week's page asks for more.

```r
library(tidyverse)

candidate_paths <- c(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"
)

nhanes_path <- candidate_paths[file.exists(candidate_paths)][1]
if (is.na(nhanes_path)) {
  stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
}

nhanes_analysis <- read_csv(nhanes_path, show_col_types = FALSE)

nhanes_analysis |>
  summarise(
    rows = n(),
    missing_bmi = sum(is.na(BMI)),
    missing_income = sum(is.na(IncomeGroup))
  )

nhanes_analysis |>
  filter(!is.na(BMI), !is.na(IncomeGroup), Age >= 20, Age <= 80) |>
  group_by(IncomeGroup) |>
  summarise(
    n = n(),
    mean_bmi = round(mean(BMI), 1),
    .groups = "drop"
  )
```

### [R Deepening Studio](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#r-deepening-studio)

Start in R. Use the NHANES case-study CSV:

```text
examples/nhanes-equity/data/nhanes_equity_v6.csv
```

#### [Where To Write Your R Code](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#where-to-write-your-r-code)

Work directly in your personal workspace. Create
`assignments/assignment04-polyglot/submission/polyglot-parity.qmd` and put the R
studio code in R chunks there. This avoids creating a second `week5.R` file that
would only need to be copied later.

#### [R Pipeline and R Function](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#r-pipeline-and-r-function)

The studio code — a `dplyr` pipeline and a small reusable function — lives in one place so there is a single copy to keep correct: work through Parts A and B of [R Deepening and Parity Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html). Type or paste each block into R chunks in `polyglot-parity.qmd` and run it.

Before translating, compare the pipeline output and the function output. They should have the same grouping labels and the same number of rows.

### [In-Class Activity: R First, Python Second](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#in-class-activity-r-first-python-second)

Work in pairs. One partner reads the R output; the other reads the Python output.

A parity check means confirming that the R result and Python result match on the important parts: row counts, column counts, grouping labels, missing values, and rounded summary values.

R steps happen in `polyglot-parity.qmd`. Python steps happen in
`translation.ipynb` in the same A4 submission folder (see [Python
Environment](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html)). `pandas` comes preinstalled in the
course Codespace.

1. Load the NHANES CSV in R and Python.
2. Record raw row count, column count, and missing `BMI` count in both languages.
3. Produce mean and SD of `BMI` by `IncomeGroup` and `Gender` in R.
4. Translate the same task to Python/pandas one step at a time.
5. Fill in a parity table comparing row counts, grouping labels, and rounded summary values.
6. If something does not match, write the likely reason before changing code.

If the R and Python results do not match, follow the 15-minute rule: spend up to 15 minutes debugging on your own — recheck the [translation traps](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html) and write down what you tried and your best guess at the cause. After 15 minutes, ask your partner, a TA, or the instructor for help, and show your notes.

Student output: a parity-check note with the R pipeline, R function, Python translation, parity table, and a short AI-use note.

### [Page Map](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#page-map)

Use the child pages in this order:

1. [Python vs. R](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html)
2. [Python Environment](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html)
3. [Packages and Reproducibility](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html)
4. [Translation Traps](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html)
5. [Load and Inspect Data](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html)
6. [Python Tracebacks](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html)
7. [One Step, One Cell](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html)
8. [Mixing R and Python](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html)
9. [Reusable Python Scripts](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html)
10. [Git Progress](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html)
11. [Proposal Readiness](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html)
12. [Knowledge Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python12-knowledge-check.html)
13. [Bilingual Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html)
14. [R To Python Cheatsheet](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python14-cheat-sheet.html)

For the explicit R mastery exercises — the worked pipeline, the reusable function, and the extra `dplyr` and function practice — use [R Deepening and Parity Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html).

### [Assignment 4](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#assignment-4)

Complete [Assignment 4: Polyglot Parity](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html).

Submit a repository link on Canvas after committing:

- `assignments/assignment04-polyglot/submission/polyglot-parity.qmd`;
- `assignments/assignment04-polyglot/submission/translation.ipynb`;
- `assignments/assignment04-polyglot/submission/helpers.py`.

### [Knowledge Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#knowledge-check)

Before leaving Week 5, answer these:

1. What is one analysis task you would keep in R?
2. What is one task where Python may be useful?
3. What are three parity checks you ran?
4. What did AI help translate, and how did you verify it?
5. What changed in your Git history from the beginning to the end of the week?

## [R Deepening and Parity Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html)

Week 5 is polyglot-aware, not Python-first. Your strongest analysis path remains R and the tidyverse. Python enters as a comparison language: it helps you read code from other sources, ask better AI translation questions, and verify that a translated result still means the same thing.

A parity check means confirming that the R result and Python result match on the important parts: row counts, column counts, grouping labels, missing values, and rounded summary values.

### [Learning Goals](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#learning-goals)

By the end of this activity, you should be able to:

- write a clear R `dplyr` pipeline for a descriptive health-data summary;
- refactor a repeated summary into a small R function;
- translate the same task to Python/pandas one step at a time;
- compare outputs across languages using row counts, grouping levels, and summary values;
- document any mismatch before deciding which code to change.

### [Dataset](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#dataset)

Use the NHANES case-study snapshot:

```text
examples/nhanes-equity/data/nhanes_equity_v6.csv
```

### [Part A: R Pipeline](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-a-r-pipeline)

Write Parts A and B as R chunks in
`assignments/assignment04-polyglot/submission/polyglot-parity.qmd` in your
personal workspace. Work in the assessed file from the start rather than
creating a second script to move later.

Start with R. The goal is a descriptive, unweighted summary of BMI by income group and gender.

```r
library(tidyverse)

nhanes <- read_csv("examples/nhanes-equity/data/nhanes_equity_v6.csv")

r_summary <- nhanes |>
  filter(!is.na(BMI), !is.na(IncomeGroup), !is.na(Gender)) |>
  group_by(IncomeGroup, Gender) |>
  summarise(
    n = n(),
    mean_bmi = round(mean(BMI), 2),
    sd_bmi = round(sd(BMI), 2),
    .groups = "drop"
  ) |>
  arrange(IncomeGroup, Gender)

r_summary
```

### [Part B: R Function](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-b-r-function)

Refactor the summary so the value and grouping variables are easy to change later.

```r
summarise_mean_sd <- function(data, value, group1, group2) {
  data |>
    filter(!is.na({{ value }}), !is.na({{ group1 }}), !is.na({{ group2 }})) |>
    group_by({{ group1 }}, {{ group2 }}) |>
    summarise(
      n = n(),
      mean_value = round(mean({{ value }}), 2),
      sd_value = round(sd({{ value }}), 2),
      .groups = "drop"
    ) |>
    arrange({{ group1 }}, {{ group2 }})
}

r_function_summary <- summarise_mean_sd(nhanes, BMI, IncomeGroup, Gender)
r_function_summary
```

Before moving to Python, check that the function output has the same number of rows and the same grouping labels as the original pipeline.

### [More R Mastery Exercises](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#more-r-mastery-exercises)

The pipeline and function above are the worked example. Complete at least two
of these short exercises in R chunks in
`assignments/assignment04-polyglot/submission/polyglot-parity.qmd` before moving
to Python:

1. **Swap the value column.** Run `summarise_mean_sd(nhanes, Waist, IncomeGroup, Gender)`. Check that the grouping labels match the BMI summary. Did the row count change? Why might it?
2. **Swap a grouping column.** Run `summarise_mean_sd(nhanes, BMI, Race, Gender)`. How many grouped rows do you get now, and why?
3. **Extend the pipeline.** Add `mean_age = round(mean(Age), 1)` inside `summarise()` in the Part A pipeline, then rerun it. Confirm the number of rows did not change — adding a summary column should never change the grouping.

### [AI Audit Prompt](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#ai-audit-prompt)

Use this prompt only after you have a working R result:

> Translate this R `dplyr` pipeline into Python/pandas one step at a time. For each step, explain the equivalent Python operation, the output I should inspect, and the parity check I should run against my R result. Do not combine steps or add new analysis choices.

### [Part C: Python Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-c-python-translation)

Create the Python translation at
`assignments/assignment04-polyglot/submission/translation.ipynb` in your
personal workspace — the same notebook you set up in [Python
Environment](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html) and use in [Bilingual
Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html). Attempt each step yourself
first with the [cheat sheet](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python14-cheat-sheet.html); use AI to check or fix
one step at a time.

Translate one step at a time. Do not ask AI for a full script until you have verified each cell.

```python
import pandas as pd

nhanes = pd.read_csv("../../../examples/nhanes-equity/data/nhanes_equity_v6.csv")

py_summary = (
    nhanes
    .dropna(subset=["BMI", "IncomeGroup", "Gender"])
    .groupby(["IncomeGroup", "Gender"], as_index=False)
    .agg(
        n=("BMI", "size"),
        mean_bmi=("BMI", "mean"),
        sd_bmi=("BMI", "std")
    )
    .sort_values(["IncomeGroup", "Gender"])
)

py_summary["mean_bmi"] = py_summary["mean_bmi"].round(2)
py_summary["sd_bmi"] = py_summary["sd_bmi"].round(2)

py_summary
```

### [Part D: Parity Audit](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-d-parity-audit)

Record the following checks in a short Quarto note:

| Check | R command | Python command | What to record |
|---|---|---|---|
| Raw row count | `nrow(nhanes)` | `len(nhanes)` | Same number of rows |
| Column names | `names(nhanes)` | `nhanes.columns.tolist()` | Same expected variables |
| Analysis rows after missingness filter | `nrow(filter(nhanes, !is.na(BMI), !is.na(IncomeGroup), !is.na(Gender)))` | `len(nhanes.dropna(subset=["BMI", "IncomeGroup", "Gender"]))` | Same filtered row count |
| Group count | `nrow(r_summary)` | `len(py_summary)` | Same number of grouped rows |
| Summary values | inspect `mean_bmi` and `sd_bmi` | inspect `mean_bmi` and `sd_bmi` | Values match after rounding |

**When results do not match: the 15-minute rule**

Debug on your own for up to 15 minutes first: recheck the [translation traps](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html), rerun the checks above, and write down what you tried and your best guess at the cause. After 15 minutes, ask for help — and bring your notes. Documented debugging attempts are part of the expected workflow, not a sign of failure.
### [Student Output](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#student-output)

Submit a short note with:

- the R pipeline;
- the R function;
- the Python translation;
- a parity table showing the checks above;
- two sentences explaining any mismatch or confirming that the outputs agree.

These are the Assignment 4 submission files; do not also save copies under a
`weeks/` folder in your personal workspace.

## [Python vs. R](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html)

### [The Course Position](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html#the-course-position)

R remains the core language for required analysis in this course. Python is introduced so you can read short Python examples, translate small workflows with AI assistance, and recognize when Python may be useful in a health data project.

You are not choosing one language forever. You are learning how to move carefully between them.

### [Strengths At A Glance](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html#strengths-at-a-glance)

Think in terms of your goal, not package names:

| If your goal is... | Better default | Why |
|---|---|---|
| Summarise a health dataset and write it up (like our NHANES work) | R | The `dplyr` steps you already know plus Quarto take you from raw CSV to a finished report in one place |
| Make clear charts for a report or slides | R | `ggplot2` charts drop straight into your Quarto documents |
| Read example code you found online or got from another team | Either | A lot of shared data code is written in Python; this week teaches you to read it without abandoning R |
| Write a small reusable helper function | Either | Both languages do this well — you practice both in Week 5 |
| Build machine-learning models or software that runs behind a website | Python | Most of that tooling is built Python-first; it is beyond the scope of this course |

When in doubt in this course, use R. Reach for Python only when an instruction, or your project, clearly calls for it.

### [Notebooks vs. Scripts](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html#notebooks-vs.-scripts)

- A notebook (`.ipynb`) is useful for exploration, teaching, and step-by-step AI translation checks.
- A script (`.py`) is useful for reusable functions and automation.
- A Quarto document (`.qmd`) is best when your analysis needs narrative, code, figures, citations, and a rendered final product.

### [Check Your Understanding](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python01-when-and-why.html#check-your-understanding)

Write two sentences:

1. One task where you would stay in R.
2. One task where Python might be worth considering.

## [Python Environment](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html)

### [Create A Notebook](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html#create-a-notebook)

In your GitHub Codespace:

Do this in your personal `HDSx-workspace` fork — the same Codespace you use for
assignments, not the read-only course-book repository or a blank repo.

1. In the Explorer, select
   `assignments/assignment04-polyglot/submission/`.
2. Right-click that folder, choose **New File...**, and name the file
   `translation.ipynb`. Do not save it at the repository root.
3. Select the recommended Python kernel when VS Code asks.
4. Before running anything, let the Codespace finish setting up. If VS Code shows an "Updating extensions" or "Installing extensions" message in the bottom-right corner, wait for it to finish — running the notebook before the Python and Jupyter extensions are up to date can make the first cell very slow to start. You can confirm in the Extensions panel that the Python and Jupyter extensions are installed and not showing a pending update.
5. Run this first cell by clicking the play button to the left of the cell (or pressing `Shift+Enter`). The output appears directly below the cell:

```python
print("Hello from Python. My Week 5 notebook is running.")
```

### [Use The Variables Pane](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html#use-the-variables-pane)

The Variables pane helps you audit Python objects the way the Environment pane helps you audit R objects.

Run this cell:

```python
age = 25
course = "HDSx"
```

Then open the notebook Variables pane and check that both variables appear.

### [Load A Tiny DataFrame](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html#load-a-tiny-dataframe)

`pandas` comes preinstalled in the course Codespace, so the import below just works — you do not need to install anything.

```python
import pandas as pd

demo = pd.DataFrame({
    "group": ["A", "A", "B"],
    "value": [10, 15, 20]
})

demo
```

Double-click `demo` in the Variables pane to open the Data Viewer. This is where you will inspect row counts, column names, and translated outputs later in the week.

### [Common Fixes](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html#common-fixes)

| Problem | First thing to try |
|---|---|
| No kernel appears | Wait for the Codespace to finish starting, then reload the window |
| Variables pane is missing | Check that the Jupyter extension is enabled |
| Notebook cell will not run | Select a Python kernel from the notebook toolbar |
| First cell is very slow to start | Wait for the Python and Jupyter extensions to finish updating (check the Extensions panel), then try again |
| Package import fails | Check the course baseline in `.devcontainer/requirements.txt`; ask before adding a package |

## [Packages and Reproducibility](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html)

### [R `library()` vs. Python `import`](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html#r-library-vs.-python-import)

Both languages require you to load packages before using them.

| R | Python | Purpose |
|---|---|---|
| `library(readr)` | `import pandas as pd` | read CSV files |
| `library(dplyr)` | `import pandas as pd` | filter, group, and summarise data |
| `library(ggplot2)` | `import seaborn as sns` | create plots |
| `library(reticulate)` | not applicable | call Python from R |

### [Why `requirements.txt` Matters](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html#why-requirements.txt-matters)

Python projects record package dependencies in `requirements.txt`. This is the Python-side equivalent of saying, "Here is what another person must install before my code will run."

The course Codespace already provides `pandas` and the notebook tools, so you
should not need to install anything for this week's required work. Only edit
`.devcontainer/requirements.txt` if an additional Python package has been
approved.

In the course Codespace this file lives at `.devcontainer/requirements.txt` (at the top level of your project). The file itself is simple — one package name per line. For example, a project that depends only on `pandas` would contain:

```text
pandas
```

If you also create a plot in Python with packages that are not preinstalled, add:

```text
seaborn
matplotlib
```

### [Course Rule](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html#course-rule)

If you rely on an approved additional Python package, record it in the root
`.devcontainer/requirements.txt` and in your dependency note. Do not create a
second submission-folder requirements file.

### [R Connection](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html#r-connection)

R reproducibility uses the same devcontainer baseline plus explicit `library()`
calls and dependency notes. Week 5 is a bridge: you should be able to explain
where dependencies are recorded in both languages.

## [Translation Traps](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html)

AI translation is useful, but it often hides small language differences. These are the traps to check first.

### [Trap 1: Indexing](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html#trap-1-indexing)

R starts counting at 1. Python starts counting at 0.

```r
values <- c(10, 20, 30)
values[1]
```

```python
values = [10, 20, 30]
values[0]
```

Python slices are end-exclusive:

```python
values[0:2]
```

This returns the first two values, not the first three.

Walk through it position by position. Python labels the items position 0 (`10`), position 1 (`20`), and position 2 (`30`). The slice `values[0:2]` starts at position 0 and stops *just before* position 2 — that is what "end exclusive" means: the end position itself is left out. So you get `10` and `20`, but not `30`. The matching R code is `values[1:2]`, because R starts counting at 1 and includes both ends. This off-by-one difference is one of the most common AI translation bugs, so always count a small example by hand.

### [Trap 2: Indentation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html#trap-2-indentation)

R uses braces to mark code blocks. Python uses indentation.

```r
if (age >= 20) {
  "adult"
} else {
  "not in adult cohort"
}
```

```python
if age >= 20:
    "adult"
else:
    "not in adult cohort"
```

If Python indentation is inconsistent, the code may fail or run with a different meaning.

### [Trap 3: Assignment vs. Comparison](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html#trap-3-assignment-vs.-comparison)

| Meaning | R | Python |
|---|---|---|
| assign a value | `x <- 10` | `x = 10` |
| compare values | `x == 10` | `x == 10` |
| missing/null check | `is.na(x)` | `pd.isna(x)` or `x is None` |

### [Trap 4: Missing Values](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html#trap-4-missing-values)

R and Python both have missing values, but they are handled by different functions. Always check missingness before comparing summaries.

```r
sum(is.na(nhanes$BMI))
```

```python
nhanes["BMI"].isna().sum()
```

### [Audit Habit](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python04-translation-traps.html#audit-habit)

When a translated result differs, check indexing, indentation, assignment/comparison, missingness handling, and grouping variables before assuming one language is "wrong."

## [Load and Inspect Data](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html)

**What to do on this page:** run the Python code below as written, in `translation.ipynb`, one cell at a time — click the play button beside each cell or press `Shift+Enter`, and the output appears below the cell. You are not asked to translate this Python into R or to modify it. Instead, compare each output with the matching R command in the table at the bottom; you built the R side in [R Deepening and Parity Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html).

### [Load The NHANES Snapshot](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#load-the-nhanes-snapshot)

In `translation.ipynb`, load the same CSV used in the R example:

```python
import pandas as pd

nhanes = pd.read_csv("../../../examples/nhanes-equity/data/nhanes_equity_v6.csv")
```

### [Inspect Before Summarising](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#inspect-before-summarising)

```python
nhanes.head()
```

```python
nhanes.shape
```

```python
nhanes.columns.tolist()
```

```python
nhanes[["BMI", "IncomeGroup", "Gender"]].isna().sum()
```

### [Compare To R](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#compare-to-r)

| Question | R | Python |
|---|---|---|
| How many rows? | `nrow(nhanes)` | `len(nhanes)` |
| How many columns? | `ncol(nhanes)` | `nhanes.shape[1]` |
| What are the column names? | `names(nhanes)` | `nhanes.columns.tolist()` |
| How many missing BMI values? | `sum(is.na(nhanes$BMI))` | `nhanes["BMI"].isna().sum()` |

### [Student Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#student-check)

Before asking AI for any transformation, write down the raw row count, column count, and missingness count for `BMI`.

## [Python Tracebacks](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html)

### [The Bottom Line Is Usually At The Bottom](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html#the-bottom-line-is-usually-at-the-bottom)

Python errors often print several lines called a traceback. Read from the bottom upward:

```text
FileNotFoundError: [Errno 2] No such file or directory: 'Data/patients.csv'
```

This tells you the immediate problem: Python cannot find the file at the path you gave it.

### [Common Week 5 Errors](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html#common-week-5-errors)

| Error | Likely cause | First fix |
|---|---|---|
| `FileNotFoundError` | path is wrong, file is in another folder, or capitalization differs | check the relative path from the notebook location |
| `ModuleNotFoundError` | package is missing | add the package to `requirements.txt` and install it in the Codespace |
| `KeyError` | column name is misspelled or not present | run `nhanes.columns.tolist()` |
| `IndentationError` | Python block spacing is inconsistent | re-indent the block with four spaces |
| `NameError` | object has not been created in the current kernel | rerun earlier cells in order |

### [AI Debugging Prompt](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html#ai-debugging-prompt)

> Read this Python traceback from the bottom up. Identify the error type, the exact object or path causing the issue, and the smallest code change that would fix it. Do not rewrite the full analysis.

### [Student Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python06-tracebacks.html#student-check)

When you fix an error, add one sentence to your notebook explaining what failed and how you knew the fix worked.

## [One Step, One Cell](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html)

### [Why This Rule Exists](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html#why-this-rule-exists)

Large AI-generated code blocks are hard to audit. A single hidden mistake in loading, filtering, grouping, or missingness handling can cascade into a polished but incorrect result.

Use one cell per analytic step:

1. load data;
2. inspect rows and columns;
3. filter missing values;
4. group and summarise;
5. compare with the R result.

### [Good AI Prompt](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html#good-ai-prompt)

> Translate only the data-loading step from R to Python/pandas. Tell me what output I should inspect before moving to the next step.

### [Risky AI Prompt](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html#risky-ai-prompt)

> Translate my full analysis, make the plots, and write the interpretation.

The risky prompt gives up too much control. It may change the analytic question without telling you.

### [Parity Audit Checks](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html#parity-audit-checks)

| Check | R | Python |
|---|---|---|
| Row count | `nrow(df)` | `len(df)` or `df.shape[0]` |
| Column names | `names(df)` | `df.columns.tolist()` |
| Unique levels | `unique(df$IncomeGroup)` | `df["IncomeGroup"].unique()` |
| Missing values | `sum(is.na(df$BMI))` | `df["BMI"].isna().sum()` |
| Summary table rows | `nrow(summary_df)` | `len(summary_df)` |

### [Notebook Habit](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python07-one-step-one-cell.html#notebook-habit)

After each Python cell, add a short Markdown note:

```text
Audit check: this cell matches the R output because ...
```

If you cannot fill in that sentence, do not move to the next cell yet.

## [Mixing R and Python](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html)

### [Why Interoperability Matters](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html#why-interoperability-matters)

Sometimes a project has one useful Python tool, but the rest of the analysis is already in R. The `reticulate` package lets R call Python code and bring Python objects back into the R session. In this course, `reticulate` is awareness-level: you should know what it does and when it might be useful, but you are not expected to build a full mixed-language pipeline.

### [Minimal Demo](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html#minimal-demo)

Run this in an R console or an R Quarto document if `reticulate` is available in your Codespace.

```r
library(reticulate)

py_run_string("
import pandas as pd
numbers = pd.DataFrame({'group': ['A', 'A', 'B'], 'value': [10, 15, 20]})
summary = numbers.groupby('group', as_index=False)['value'].mean()
")

py$summary
```

### [Health Data Example](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html#health-data-example)

The same idea works with the NHANES case-study CSV:

```r
library(reticulate)

py_run_string("
import pandas as pd
nhanes = pd.read_csv('examples/nhanes-equity/data/nhanes_equity_v6.csv')
bmi_rows = nhanes[['BMI', 'IncomeGroup']].dropna()
")

bmi_rows <- py$bmi_rows
head(bmi_rows)
```

### [When To Use It](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html#when-to-use-it)

Use `reticulate` when:

- a small Python library solves a specific problem better than the R ecosystem;
- the rest of your report, tables, or dashboard are already in R;
- you can document the Python dependency clearly.

Avoid it when:

- a clean R solution already exists;
- mixing languages makes the project harder to reproduce;
- the Python step cannot run in a fresh Codespace.

### [Check Your Understanding](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python08-mixing-r-python.html#check-your-understanding)

In one sentence, explain what object moves from Python back into R in the NHANES example above.

## [Reusable Python Scripts](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html)

### [Notebook or Script?](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#notebook-or-script)

Use a notebook when you are exploring, explaining, and checking outputs. Use a script when you have a helper function that should be reused without copying and pasting.

This mirrors the R pattern from Week 3: once a chunk of code has a clear job, turn it into a named function.

### [Create `helpers.py`](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#create-helpers.py)

In your personal workspace Explorer, select
`assignments/assignment04-polyglot/submission/`. Create `helpers.py` there,
beside `translation.ipynb`; a root-level copy will break the import below.

```python
from pathlib import Path
import pandas as pd

def load_and_preview(path, n_rows=5):
    """Load a CSV, print its shape, and return the first rows."""
    csv_path = Path(path)
    if not csv_path.exists():
        raise FileNotFoundError(f"Could not find file: {csv_path}")

    data = pd.read_csv(csv_path)
    print(f"Loaded {data.shape[0]} rows and {data.shape[1]} columns")
    return data.head(n_rows)
```

### [Import It In A Notebook](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#import-it-in-a-notebook)

In `translation.ipynb`, import and use the helper:

```python
from helpers import load_and_preview

preview = load_and_preview("../../../examples/nhanes-equity/data/nhanes_equity_v6.csv")
preview
```

### [Reproducibility Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#reproducibility-check)

Before committing:

- verify that `helpers.py` is saved in the same folder as your notebook;
- rerun the notebook from a fresh kernel;
- check that the relative path starts from the notebook location;
- commit both files together with a message such as `Add Week 5 Python helper`.

### [Student Output](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#student-output)

For Assignment 4, your reusable script should contain at least one function that is actually called from the notebook. A function that is written but never used does not demonstrate reproducibility.

## [Git Progress](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html)

### [Commit The Audit Trail](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html#commit-the-audit-trail)

Week 4 introduced Git as analysis provenance. Week 5 uses that skill to make translation auditable.

Commit after meaningful checkpoints:

1. R pipeline works.
2. R function reproduces the pipeline.
3. Python notebook loads the same data.
4. Python summary matches the R summary.
5. Final parity note is complete.

### [Notebook Output Hygiene](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html#notebook-output-hygiene)

Jupyter notebooks can store rendered tables and images inside the `.ipynb` file. That makes Git diffs noisy.

Before committing:

1. Open the Command Palette with `Ctrl+Shift+P`.
2. Run `Notebook: Clear All Outputs`.
3. Save the notebook.
4. Stage `translation.ipynb`, `helpers.py`, and your Quarto note together.

### [Example Commit Messages](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html#example-commit-messages)

```text
Add R BMI summary for Week 5 parity check
```

```text
Translate BMI summary to pandas and verify row counts
```

```text
Complete Assignment 4 parity audit note
```

### [Student Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html#student-check)

Your Git history should show the work developing in steps, not one unexplained final upload.

## [Proposal Readiness](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html)

### [Why This Belongs In Week 5](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html#why-this-belongs-in-week-5)

Before the project proposal is due, you should know whether your chosen dataset can be loaded, inspected, and explained in the course workflow. Week 5 adds one extra test: can you verify the basic data shape in both R and Python?

### [Proposal Readiness Checklist](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html#proposal-readiness-checklist)

Your proposal should include:

- a focused health-data question;
- the dataset name and source;
- a brief provenance and stewardship note;
- a feasibility check showing the file can load in a Codespace;
- one or two planned descriptive summaries or visualizations;
- any known privacy, licensing, or access limitations.

### [Feasibility Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html#feasibility-check)

For your project dataset, record:

| Check | What to write |
|---|---|
| File path | relative path from the repo root |
| File format | CSV, RDS, Excel, API, or other |
| Row and column count | basic shape after loading |
| Key variables | names and meanings of the fields you expect to use |
| Missingness concern | one variable where missing values may matter |
| R/Python check | whether both languages can load the file |

### [Student Output](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python11-project-milestone.html#student-output)

Add this feasibility check to your project proposal notes. If your dataset does not load cleanly yet, describe the blocker honestly instead of hiding it.

## [Knowledge Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python12-knowledge-check.html)

Answer these in a Markdown cell or short Quarto note.

1. Why is Week 5 called "polyglot awareness" rather than "Python replacement"?
2. Name one task where R is the better default for this course.
3. Name one task where Python might be useful.
4. Why does `my_list[1]` return the second item in Python?
5. What is the difference between `=` and `==`?
6. What does `requirements.txt` document?
7. What is the One Step, One Cell rule?
8. What are three parity checks you should run after translating R code to Python?
9. Why should notebook outputs be cleared before committing?
10. What does `reticulate` allow R to do?

### [Short Applied Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python12-knowledge-check.html#short-applied-check)

Given the R expression:

```r
mean(nhanes$BMI, na.rm = TRUE)
```

Write the Python/pandas equivalent and name the missingness check you would run before trusting it.

## [Bilingual Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html)

### [Purpose](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html#purpose)

This exercise turns the week into a concrete artifact: one small R analysis, one Python translation, and one audit note showing that the outputs agree.

### [Required Task](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html#required-task)

Translate the Week 5 R-deepening summary into Python/pandas:

1. Start from the R pipeline in [R Deepening and Parity Check](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html).
2. Create the Python translation in your personal workspace at
   `assignments/assignment04-polyglot/submission/translation.ipynb`.
3. From that notebook, load the NHANES CSV from
   `../../../examples/nhanes-equity/data/nhanes_equity_v6.csv`.
4. Recreate the BMI-by-income-and-gender summary in Python.
5. Compare the Python output to the R output using row counts, grouping labels, and rounded summary values.
6. Extract one Python helper into `helpers.py` and call it from the notebook.
7. Add a Markdown cell explaining what AI helped with and how you verified the result.
8. Clear notebook outputs before committing.

### [Parity Table Template](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html#parity-table-template)

| Check | R result | Python result | Match? | Notes |
|---|---:|---:|:---:|---|
| Raw row count |  |  |  |  |
| Filtered row count |  |  |  |  |
| Number of grouped rows |  |  |  |  |
| Mean BMI values after rounding |  |  |  |  |
| Group labels |  |  |  |  |

### [AI Prompt](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html#ai-prompt)

> I have a working R `dplyr` summary. Translate it to Python/pandas one step at a time. After each step, tell me exactly what output to compare with R. Do not add new variables, filters, plots, or interpretation.

### [Definition of Done](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python13-translation-exercise.html#definition-of-done)

Your exercise is complete when a reader can open the notebook, rerun the cells in order, and see why the R and Python outputs do or do not match.

## [R To Python Cheatsheet](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python14-cheat-sheet.html)

Use this as a translation aid, not as a substitute for checking outputs.

| Task | R | Python |
|---|---|---|
| Load package | `library(dplyr)` | `import pandas as pd` |
| Read CSV | `read_csv("file.csv")` | `pd.read_csv("file.csv")` |
| First rows | `head(df)` | `df.head()` |
| Row count | `nrow(df)` | `len(df)` or `df.shape[0]` |
| Column names | `names(df)` | `df.columns.tolist()` |
| Select columns | `select(df, BMI, Gender)` | `df[["BMI", "Gender"]]` |
| Filter rows | `filter(df, Age >= 20)` | `df[df["Age"] >= 20]` |
| Missing values | `sum(is.na(df$BMI))` | `df["BMI"].isna().sum()` |
| Group summary | `group_by(...) |> summarise(...)` | `.groupby(...).agg(...)` |
| New column | `mutate(df, whtr = Waist / Height)` | `df["whtr"] = df["Waist"] / df["Height"]` |
| Sort rows | `arrange(df, IncomeGroup)` | `df.sort_values("IncomeGroup")` |
| Unique values | `unique(df$Gender)` | `df["Gender"].unique()` |

**Dependency note:** `read_csv()` comes from the `readr` package, not `dplyr`. Load it with `library(readr)`, or use `library(tidyverse)` to get `readr` and `dplyr` together. On the Python side, every command in this table needs `import pandas as pd` first.

### [Translation Rule](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python14-cheat-sheet.html#translation-rule)

The translation is not finished when the code runs. It is finished when the R and Python outputs have been compared and the comparison is documented.

## [Assignment 4: Polyglot Parity](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html)

### [Purpose](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#purpose)

This assignment strengthens R first, then translates a small descriptive task to Python/pandas and checks whether both languages produce the same answer. The goal is careful reading of code in both R and Python, not Python mastery.

### [Learning Objectives](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#learning-objectives)

- Build a trusted R `dplyr` summary before translating it.
- Refactor repeated R logic into a small function.
- Translate a simple summary to Python/pandas with AI support if useful.
- Run parity checks for row counts, group labels, and rounded statistics.
- Keep notebook outputs and dependency notes clean for review.

### [Inputs](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#inputs)

- Week 5 page: `weeks/week05-polyglot-r-deepening/index.qmd`
- R deepening page: `weeks/week05-polyglot-r-deepening/r-deepening-parity.qmd`
- Dataset: `examples/nhanes-equity/data/nhanes_equity_v6.csv`
- Parity template: `assignments/assignment04-polyglot/parity-table-template.csv`
- Submission folder: `assignments/assignment04-polyglot/submission/`

### [Tasks](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#tasks)

1. Create or use the folder `assignments/assignment04-polyglot/submission/`.
2. Create `polyglot-parity.qmd`.
3. In R, load the NHANES CSV with a relative path.
4. Produce a descriptive BMI summary by `IncomeGroup` and `Gender`.
5. Refactor the R summary into one small reusable function.
6. Create `translation.ipynb` and translate the same summary to Python/pandas.
7. Create `helpers.py` with at least one reusable Python helper called from the notebook.
8. Complete a parity table comparing row counts, filtered row counts, grouping labels, and rounded summary values.
9. Write a dependency note naming the R and Python packages used. If an
   instructor-approved Python package is added, also update the root
   `.devcontainer/requirements.txt`; do not create a second manifest in the
   submission folder.
10. Clear bulky notebook outputs before committing.
11. Render the Quarto file to HTML.
12. Commit and sync the assignment folder.

### [AI-Use Expectations](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#ai-use-expectations)

AI may help translate R to Python, explain tracebacks, or suggest helper functions. You must verify that the translated code answers the same question, uses the same filters, handles missingness the same way, and returns matching grouped results after rounding. Include `ai-use-note.md`.

### [Reproducibility Requirements](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#reproducibility-requirements)

- R and Python files must run in GitHub Codespaces.
- Paths must be relative to the repository.
- The notebook must not contain large stale outputs.
- Dependencies must be documented in `dependency-note.md`.
- Differences between R and Python results must be explained before changing code.

### [What To Submit](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#what-to-submit)

Place all submission files in:

```text
assignments/assignment04-polyglot/submission/
```

Submit these files:

- `polyglot-parity.qmd`: R analysis, R function, parity discussion, and rendered-output instructions.
- `polyglot-parity.html`: rendered Quarto output.
- `translation.ipynb`: Python/pandas translation notebook.
- `helpers.py`: reusable Python helper script called from the notebook.
- `parity-table.csv`: completed parity table.
- `dependency-note.md`: Python/R dependency note.
- `ai-use-note.md`: what AI helped translate or debug and how you verified the result.

### [Submission Route](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#submission-route)

Submit your GitHub repository link on Canvas after committing and syncing the required files.

### [Grading Checklist](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#grading-checklist)

Canvas applies a 7-point rubric. This assignment is part of the best-4-of-6 set for Assignments 4-9:

| Criterion | Points |
|---|---:|
| R summary is correct, clear, and uses a relative data path | 1 |
| R function reproduces the summary logic | 1 |
| Python translation matches the same analytic question | 1 |
| Parity table checks row counts, groups, and rounded values | 1.5 |
| Dependency and notebook hygiene are documented | 1 |
| AI-use note explains generation, changes, and verification | 1 |
| Files render/run from the submission folder and are synced | 0.5 |

### [Definition of Done](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html#definition-of-done)

You are done when the R summary, Python translation, and parity table agree or any differences are clearly explained, and the required files are committed in the Assignment 4 submission folder.
