> Date Time: 2026-10-13 11:00:07  
>
> Location: [Location]  
>
> Instructor: Daniel Chen  

## Summary

The lecture marks the transition from R/Tidyverse coding instruction to broader data science applications and Python workflows using Jupyter Notebooks and Large Language Models (LLMs). Instructor Daniel Chen outlines grading policies and upcoming deadlines while demonstrating Git/GitHub collaboration workflows, including branching, pull requests (PRs), and repository management. Key topics include translating tidyverse data pipelines into pandas operations, handling categorical variables and missing data, and writing generalized functions using tidy evaluation (`{{ }}`). The lecture highlights the differences between web-based LLMs and local coding agents with workspace access, emphasizing prompt engineering, official documentation grounding, and parity checking between R and Python implementations. Additionally, Chen covers Python modular programming (`helper.py`), environment setup via `requirements.txt`, and version control best practices for Jupyter Notebooks, such as clearing cell outputs before committing.

## Knowledge Points

### 1. Course Milestones, Grading Policy, and Deadlines

* **Grading Policy Shift**: Completion-based grading has ended; future assignments receive letter/numerical grades, with the best 4 of 6 counting toward the final grade.
* **Key Deadlines**:
  - October 12, 2026: Group project repository setup due.
  - October 27, 2026: Part 1 of the Group Assignment (Project Proposal) and associated homework due.
* **Curriculum Trajectory**: Code-specific R instruction is wrapping up to transition toward data visualization and cross-language translation in Python.

### 2. Git, GitHub, and Repository Workflows

* **Branching and Synchronization**:
  - Always run `git pull` on the `main` branch before branching to sync upstream changes.
  - Create feature branches (e.g., `add-name`), stage changes, commit with descriptive messages, and publish to GitHub.
* **Forked vs. Template Repositories and PR Targets**:
  - Individual assignments originate from forks; PR base repositories must point to the student’s own fork, not the instructor’s upstream repository.
  - Group projects originate from repository templates.
  - Clean up feature branches post-merge and avoid committing build artifacts or temporary render folders.
* **Jupyter Notebook Version Control**:
  - `.ipynb` files store code, execution counts, and output blocks in JSON format.
  - Frequent execution produces cluttered Git diffs and merge conflicts. Always select "Clear All Output" before committing notebook files to keep version control clean.

### 3. File Paths and Quarto Project Configurations

* **Absolute vs. Relative Paths**:
  - Absolute paths (e.g., `/Users/dan/...`) break portability across collaborator environments.
  - Relative paths based on the project workspace root ensure reproducible collaboration.
* **Working Directories and Quarto YAML**:
  - Discrepancies often occur between the file's folder and the repository root (`getwd()` in R vs. `getcwd()` in Python).
  - Quarto projects use `_quarto.yml` to specify execution contexts and directory settings.
  - Enclose paths in quotes or backticks to avoid LLM whitespace parsing errors.

### 4. LLM Coding Agents vs. Web Chat Interfaces

* **Capabilities of Coding Agents**:
  - Unlike standalone web chats (e.g., standard ChatGPT) that operate in isolation, local AI agents execute tool calls within the workspace, create/edit files (e.g., `assignment04.qmd`), and inspect file structures.
  - Agents exhibit context awareness of local files and can auto-balance between underlying models (e.g., Claude 3.5 Sonnet vs. OpenAI models).
* **Human Oversight and Prompt Engineering**:
  - Human validation is required to catch incorrect structural workarounds.
  - Anchor LLM instructions in official documentation links to prevent hallucinations.
  - Prompt iteratively with precise domain terminology rather than asking for full scripts at once.
  - Course requirement: Document and record prompts used in Markdown comments.
* **Data Privacy**: Avoid exposing private or sensitive organizational data (e.g., hospital records) to external LLM tooling.

### 5. Data Pipelines and Syntax: Tidyverse (R) vs. Pandas (Python)

* **Pipeline Translation Equivalencies**:
  - `filter(!is.na(...))` $\rightarrow$ `.dropna()` or `.query('BMI.notna() and income_group.notna()')`
  - `group_by(...)` $\rightarrow$ `.groupby(['col1', 'col2'])` (uses list syntax)
  - `summarize(...)` $\rightarrow$ `.agg()` or `.aggregate()`
  - `arrange(...)` $\rightarrow$ `.sort_values()`, followed by `.reset_index()` to flatten MultiIndexes
* **Summary Calculations and NA Handling**:
  - In R, `mean()` on data with `NA` returns `NA` unless `na.rm = TRUE` is passed.
  - In pandas, `.mean()` ignores missing values by default.
  - Column access: `df$col` in R vs. `df['col']` in pandas.
* **Categorical Ordering vs. Alphabetical Sorting**:
  - Default sorting organizes character categories alphabetically (e.g., "High", "Low", "Middle").
  - To achieve logical progression ("Low", "Middle", "High"), columns must be converted to ordered factors/categoricals, or custom sort orders must be specified in the prompt.
* **Dimension Inspection in Python**:
  - `df.shape` returns `(n_rows, n_cols)` and supports tuple unpacking: `n_rows, n_cols = df.shape`.
  - Can be formatted using f-strings: `f"rows: {n_rows}, columns: {n_cols}"`.
  - Alternatively, row count is given by `len(df)` and column count by `len(df.columns)`.

### 6. Generalized Functions and Parity Checking

* **Writing Generalized R Functions with Tidy Evaluation**:
  - Abstract repeated pipeline logic into functions accepting parameters (`data`, `group1`, `group2`, `value`).
  - Use tidy evaluation syntax (`{{ value }}`) to pass unquoted column names correctly without data masking errors.
* **Parity Checking**:
  - Validate refactored functions against initial manual pipelines using parity tests (e.g., `all.equal`).
  - Diagnosing parity failures: Check for swapped grouping variable order (altering row arrangement), column naming differences (e.g., hardcoded vs. generic summary names), or missing data handling discrepancies.
  - Test generalized functions across distinct datasets (e.g., validating on NHANES data, then applying to `diamonds` grouped by `cut` and `color`).

### 7. Modular Python Code and Environment Management

* **Python Functions and Syntax**:
  - Defined with `def function_name(param):` using strict 4-space whitespace indentation for code blocks.
  - Built-in exceptions (e.g., `raise FileNotFoundError`) handle error validation.
* **Modularization and Module Caching**:
  - Reusable logic should be placed in external scripts (e.g., `helper.py`) and loaded via `import helper` or `from helper import function_name`.
  - Python caches imported modules; when editing `.py` files during an interactive session, restart the Jupyter kernel to load the latest changes.
* **Package Management**:
  - Containerized environments (Dev Containers / GitHub Codespaces) manage dependencies via configuration files like `requirements.txt` (e.g., `pandas`, `matplotlib`, `seaborn`, `plotnine`, `altair`).

## Questions

- [Insert Question/Confusion]

## Assignments

- [ ] 1. Ensure personal GitHub Codespaces environments are properly loaded and configured for homework submissions.
- [ ] 2. Complete Assignment 4 inside the `submissions/` directory:
  - Modify and test generalized R functions in `parody.qmd`.
  - Create `translation.ipynb`, import `pandas` and custom helper functions from `helper.py`, load the NHANES dataset, and reproduce the R summary tables.
  - Document all external packages used and record all AI prompts utilized in Markdown or code comments.
- [ ] 3. Clear all outputs from Jupyter Notebooks before staging, committing, and opening a PR against your own repository fork.
- [ ] 4. Collaborate with group members on Part 1 of the Group Project Proposal ahead of the October 27, 2026 deadline.
