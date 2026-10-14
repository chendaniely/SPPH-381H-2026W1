# Reading Code Across Languages: R Deepening, Parity Checks and a First Look at Python

Instructor: Daniel Chen

## Summary

This session started with a review of the Git and GitHub pull request workflow from the previous week. The instructor added the step he had not shown before: using `git pull` to bring changes that teammates made on GitHub down to your own copy. He also explained a common submission mistake. Because individual homework repositories are *forks* (copies) of an instructor's repository, a pull request can end up pointing at the instructor's repository instead of your own.

Most of the session reviewed the R/tidyverse data-processing work using the NHANES health-equity dataset. A coding agent (an AI assistant that can read and edit the files in your Codespace) set up a Quarto document. The class then read and ran a `filter()` → `group_by()` → `summarise()` → `arrange()` pipeline summarising BMI by income group and gender. They turned that pipeline into a reusable function, `summarise_mean_sd()`, which uses tidyverse "curly-curly" `{{ }}` syntax. Along the way the instructor kept stressing one habit: **predict what the output should look like before you run code, then write checks that confirm it.** One of his own parity checks returned `FALSE` live because he had quietly swapped the order of the grouping variables.

The second half switched to Python. The point was to show that once you know the *steps* of an analysis in R, you can read the same steps in another language, with AI help. The class created a Jupyter notebook, loaded the same CSV with `pandas`, compared R and Python syntax, and asked the agent to translate the R pipeline into pandas. They then checked that both languages gave the same numbers. They finished by importing a helper function from a separate `helpers.py` file and learning why notebook outputs should be cleared before committing.

Two themes ran through the session. First, your thinking about the data is now the main skill: the code is easy to get, so judging whether it is right is the hard part. Second, coding agents act directly on your computer and your data. That brings real privacy responsibilities.

## Knowledge Points

### 1. Git review: branches, pull requests and `git pull`

- **Branch**: a separate line of work in a repository. You can make commits on your branch without changing `main`. Once your work is committed and pushed to a branch, it is saved somewhere others can see it and help you.
- **Remote**: the copy of the repository that lives on GitHub. Your Codespace holds the local copy where you type.
- **`git pull`**: copies new commits from the remote down to your local copy.
  - **Always switch to `main` and pull before you create a new branch.** Teammates may have merged work (for example, on a Friday night) that you know nothing about. Pulling first means your new branch starts from the team's agreed working state.
  - VS Code may offer to pull automatically every so often. The instructor said no, to keep things manual. The sync button in the bottom bar does the equivalent.
- **Workflow demonstrated**:
  1. Pull on `main`.
  2. Create a branch (here called `add-name`).
  3. Create a file (`Daniel.txt`).
  4. Stage it with the **+** button and write a commit message.
  5. Click **Publish Branch**.
  6. Open a pull request (PR) on GitHub.
  7. Review **Files changed**.
  8. **Merge pull request**.
  9. Optionally delete the branch. If you don't, it keeps showing in the branch list.
- **Status letters in the Git tab**: **U** means *untracked*, a brand-new file Git hasn't seen before. **M** means *modified*, an existing tracked file you have changed.
- **Review the PR's file list before merging.** Watch for files you don't want to commit:
  - Jupyter checkpoint files.
  - A `.quarto` folder or `<filename>_files` folders left behind when a Quarto render stops partway.
  - Rendered images. The instructor recommends not committing images for now, because they should be reproducible by rendering your document.
- **Warning: check where your pull request is going.**
  - **Individual homework repositories are forks** of a co-instructor's repository. By default, GitHub sets the PR's *base* to the original instructor repository. Many students have already sent homework PRs to the wrong place this way.
  - Before creating a PR, check that the **base repository** is your own and the **compare** branch is the branch you just pushed.
  - If you open your repository's **Pull requests** tab after refreshing and your PR isn't there, you sent it to the wrong place. You should be able to change the base with the pencil (edit) icon.
  - **Group project repositories were made from a template, not forked.** There is no "source" repository, so the base should simply say `main`.
- **Seeing the effect of a pull**: after a change was made directly on `main` on GitHub (standing in for a teammate's work), switching to `main` locally and running `git pull` brought both the merged PR and the new edit into the local file.

### 2. Working with a coding agent

- **Coding agent vs. a chat window**:
  - A web chatbot can only give you instructions to follow and paste back.
  - An agent can create and edit files, run code in the terminal, read other files in your project and check its own output.
  - **Warning: just because the agent created a file doesn't mean it works.** You are still the human in the loop.
- **Give documentation as a reference.** If the agent does something in a roundabout way, paste the official documentation link and tell it to use that.
  - The instructor's example was Quarto slides. A chatbot suggested custom HTML/CSS to shrink text. Quarto has a one-line built-in option for this.
  - The final result can look right while the code underneath is "wonky". That causes problems later when you or others need to change it.
- **Use technical vocabulary in prompts.**
  - "That didn't work" gives the model nothing to go on.
  - "Don't use the relative path from the file, use the path from the project root" fixed the problem quickly.
  - Knowing terms like *working directory*, *ordinal variable* and *missing values* means fewer back-and-forth turns.
- **Ask the agent to prove its claims.** For example: "Did you just make this up? Give me the actual link." The instructor followed the link to Quarto's official documentation on the execution directory, confirmed it was real and learned something new in the process.
- **Work in small pieces.**
  - Have the agent write one chunk at a time and direct the analysis yourself.
  - 500 lines generated in one go are very hard to check.
  - You must be able to defend each decision. For example, why weight instead of BMI for national data?
- **Tool calls**: modern agents run code themselves (a "tool call", e.g. running Python from the command line). When asked for the mean BMI, the agent actually ran pandas and reported the computed value. It did not invent a number, which older models used to do.
- **Agents read your whole project.**
  - The agent found the instructor's leftover test notebook and reused its code. Your results may differ from the demo for that reason.
  - It also noticed the project contained R code.
- **⚠️ Privacy warning.**
  - Without being asked, the agent ran its translated function on the NHANES data and ran Python on its own.
  - Where you run these tools matters. **Don't start a job at a hospital and throw all your data into an LLM.**
  - Agents sometimes ask before running code and sometimes just do it.
- **Auto model selection**: the Codespace's agent was set to an automatic mode that switched between models. Because the work was done in small, checked steps, the instructor wasn't concerned which model answered.

### 3. Paths and working directories

Textbook: [R Deepening Studio](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#r-deepening-studio)

- **Absolute (full) path**:
  - Starts with `/`, from the top of the computer.
  - On your own machine it includes your username and personal folders (e.g. a "UBC" or "Work" folder). That stops others running your code without editing it.
  - Avoid using full paths.
- **Relative path**: starts from the project folder. VS Code's right-click menu offers both **Copy Path** and **Copy Relative Path**.
- **Project root**: in this course's workspace, R code in Quarto runs with the working directory at the **root of the repository**. You can confirm this with `getwd()`.
  - The agent first wrote `../`-style paths relative to the `.qmd` file, and they failed.
  - The fix came once it looked at the project's `_quarto.yml` metadata file. That file already sets Quarto's execution directory to the project root.
  - The agent also suggested the `here` package's `here()` function as an option.
- **Spaces in file names**: names without spaces are easier for both you and the model to read as one path. Otherwise wrap the path in quotes, or in backticks in Markdown.

### 4. Reading a tidyverse pipeline: BMI by income group and gender

Textbook: [Part A: R Pipeline](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-a-r-pipeline)

- **How to read pipeline code**: look at the main verbs in order.
  1. `filter()` keeps rows where `BMI`, `IncomeGroup` and `Gender` are not missing.
  2. `group_by()` groups by two variables.
  3. `summarise()` calculates three statistics per group: `n`, mean BMI and SD BMI, each rounded to 2 decimals. `.groups = "drop"` removes the grouping afterwards.
  4. `arrange()` sorts the result. This was new this session.
- **Predict before running.** `IncomeGroup` has 3 levels and `Gender` has 2 (male/female). So you expect 3 × 2 = **6 rows**, and that's what came back. You also expect fewer rows than the full data after filtering. The instructor said NHANES has roughly 105,000 rows.
- **Treat the LLM like a teammate submitting code for review.** Your job is to decide whether it is working properly.
- **`na.rm = TRUE` isn't needed inside `mean()` here**, because the `filter()` step already removed missing values.

### 5. Sorting surprises and ordinal variables

- `arrange(IncomeGroup, Gender)` gave the order **high, low, middle**. That's **alphabetical**, not meaningful.
- **Ordinal variable**: a categorical variable whose categories have a natural order, like low < middle < high. To sort properly, tell R (or prompt the AI) to treat `IncomeGroup` as ordered: low, middle, high. That data cleaning belongs right after loading the data.
- Choosing the primary sort variable (income first or gender first) depends on your question. There's no single right answer.
- **The key point**: noticing "this order is weird" is not a coding skill. It is thinking about the data, and that is now the bottleneck, not writing code.

### 6. Investigating missing data

- The group `n` values don't add up to the full dataset, because missing rows were dropped. A natural follow-up prompt was: "Can we count the number of missing values in each group?"
- The agent's code grouped by income and gender without filtering out missing values. It counted with `is.na()` instead of `!is.na()`.
- What it showed: some people have a gender recorded but **no income group**. The instructor suggested a possible reason, such as people not working having a different income category. Missing is not the same as zero income.
- **Why it matters**:
  - A high proportion missing in one group is worth exploring.
  - If ~90% of a column is missing, ask whether you need it, or do a sub-analysis of only those who answered.
  - Whether you **keep or drop missing values** in the `filter()` step is a research decision.
- **⚠️ Don't ask the model "why is there missing data?"** Unless it is documented in your repository, it will make something up. The codebook and data documentation are where the answer lives.

### 7. Writing a reusable function with curly-curly

Textbook: [Part B: R Function](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-b-r-function)

- **Function**: reusable code whose inputs can change.
- **Rule of thumb**: if you find yourself pasting the same code more than about twice, turn it into a function.
- `summarise_mean_sd(data, value, group1, group2)` is the earlier pipeline with these changes:
  - `nhanes` became `data`.
  - `BMI` became `value`.
  - `IncomeGroup` and `Gender` became `group1` and `group2`.
  - The output columns became `mean_value` and `sd_value`.
- **Curly-curly `{{ }}`**: tells tidyverse functions "don't look for a column literally called `value`; use the column the caller passed in, e.g. `BMI`."
  - That's all you need to know about it.
  - The instructor called this one of the stranger features across programming languages, but a nice one that many languages lack.
- **The function is generic.**
  - It works on any data frame with one continuous variable and two categorical variables.
  - The `diamonds` dataset that comes with tidyverse gave 35 rows for `price` by `cut` and `color`.
  - With a non-numeric value such as `clarity`, it errors, complaining it can't round. The function only makes sense for things you can take a mean and SD of.
- You might swap the value variable, e.g. weight instead of BMI. BMI combines weight and height, and might not suit some populations, such as athletes. You should be able to justify such a choice.

### 8. Checking your work (parity checks)

Textbook: [Part D: Parity Audit](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-d-parity-audit)

- **Parity check**: confirming that two ways of computing something give the same result. Examples are the manual pipeline vs. the function, or R vs. Python.
- **When you're not writing the code, checks are your only safeguard.** Ask the AI something like: "I expect these two things to be the same. Can you write the code that confirms that?"
- `all.equal()` compares whole data frames. It can fail for harmless reasons. Here, the column names differ (`mean_bmi` vs `mean_value`), and it reports "names: 2 string mismatches". In that case, compare the specific columns you care about.
- Checks also catch your own mistakes. When you run cells out of order or edit earlier code, later checks start returning `FALSE`.
- Expect "no missing values"? Write a check for it. The instructor does this when he downloads grades from Canvas.

### 9. Python for R users

Textbook: [Python Environment](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html), [Load and Inspect Data](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html)

- **Why Python**: it is as popular as R, or more, for data science. Knowing the steps from R makes Python code readable. You learn new words for steps you already understand.
- **Jupyter notebook (`.ipynb`)**:
  - Created via **File → New File → Jupyter Notebook**.
  - Cells are either Python code or Markdown. You can switch a cell's type, shown in the bottom-right of the cell.
  - Unlike a `.qmd`, there are no backtick code chunks. Each cell is its own type.
  - Run a cell with the play button or `Shift+Enter`. Double-click a rendered Markdown cell to edit it.
- **Kernel**: the Python installation that runs your code. A computer can have several. On the first run, VS Code asks you to **Select Kernel**. The Codespace has Python 3.11 with pandas preinstalled.
- **`import`** in Python is like `library()` in R.
  - Loading pandas took ~5 seconds the first time and is faster afterwards.
  - Python always makes you say where a function comes from: `pandas.read_csv()`. In R you can write `read_csv()` after `library(tidyverse)`.
  - R's explicit equivalent is the double colon, e.g. `readr::read_csv()`.
- **Aliases**: `import pandas as pd` lets you write `pd.read_csv()`. `pd` is the standard convention, but any name would work. The instructor's example was `import pandas as pizza`.
- **Working directory in Python**: `os.getcwd()` (*get current working directory*) is the equivalent of R's `getwd()`. It matters for the same reason: it determines how file paths resolve.
- **Syntax comparisons**:
  - `=` assigns, like R's `<-`.
  - `nhanes["BMI"]` pulls out a column, like R's `nhanes$BMI`.
  - Square brackets `[...]` create lists. That is roughly like R's `c()`, though not exactly.
  - `.shape` returns a *tuple* (rows, columns). Python can unpack it into two variables at once: `n_rows, n_cols = nhanes.shape`.
  - **f-string**: `f"...{variable}..."` inserts a value into text. Its single curly braces are unrelated to R's curly-curly.
  - `len()` gives the length: `len(nhanes)` is the number of rows, and `len(nhanes.columns)` is the number of columns.
  - If you don't understand AI-generated code, ask for a simpler version. That's how you learn the language.
- **Missing values differ between languages**:
  - R's `mean(nhanes$BMI)` returns `NA` if any value is missing. A summary statistic of `NA` means either everything is missing or at least one value is.
  - pandas' `.mean()` **skips missing values automatically**.
  - Both gave 25.65 once R used `na.rm = TRUE` (R printed 25.648).
- **Indentation matters in Python.** Code inside a function must be indented. The official style is 4 spaces. Wrong indentation causes errors and red squiggles.
- **Why the agent wouldn't edit the notebook directly**:
  - An `.ipynb` file is JSON (structured text) underneath. One missing comma breaks the whole file.
  - The agent offered code to paste or an **Insert at Cursor** button instead.
  - It did edit a plain `.py` file directly.

### 10. Translating the R pipeline into pandas

Textbook: [Part C: Python Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-c-python-translation)

- **Prompt**: "Can you translate this R code into Python?" followed by the pasted pipeline.
  - The agent wrote the pandas code, ran it and showed the table.
  - Plain ChatGPT, given the same prompt, could only translate line by line with no results, because it can't see your data.
- **The agent did *not* also run the R code to check the two matched.** You have to do that comparison yourself. The class did: same counts and values. R drops trailing zeros, which is fine.
- **How the pieces map from R to pandas**:

  | R | pandas |
  |---|---|
  | `filter(!is.na(...))` | `.dropna(...)`, or `.query(...)` if you ask for a true filter step |
  | `group_by(a, b)` | `.groupby(["a", "b"])` (a list is needed) |
  | `summarise()` | `.agg()` (short for aggregate) |
  | `round()` | `.round()` |
  | `arrange()` | `.sort_values()` |

  - `.reset_index()` is pandas-specific and makes a normal flat table.
  - The AI's comment equating `.groups = "drop"` with a pandas step isn't exactly accurate, but it was good enough here.
- The pandas result had the same **high, low, middle** alphabetical order. The ordinal problem carries over until you fix it in data cleaning.

### 11. Helper scripts, packages and notebook hygiene

Textbook: [Reusable Python Scripts](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html), [Packages and Reproducibility](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html), [Git Progress](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html)

- **Functions in separate files**: R uses `source("file.R")` to run a file and gain its functions. Python saves functions in a `.py` file (a *module*) and imports them, e.g. `from helpers import load_and_preview`.
- **Defining a function**: Python uses `def name(params):` with an indented body. The R equivalent is `load_and_preview <- function(path, n_rows = 5) { ... }`.
- **`raise FileNotFoundError(...)`**: Python has a clean way to raise errors. The instructor noted R needs more trickery for this.
- **Re-importing requires a restart.** Python won't re-import a module that's already loaded. After editing `helpers.py`, click **Restart** on the kernel and rerun the cells.
- **`DtypeWarning`**:
  - The helper's `pd.read_csv()` printed a data-type warning. The class's earlier load didn't, because the AI-written load had `low_memory=False`.
  - To change that behaviour, edit the function, restart the kernel and rerun.
- **`requirements.txt`**:
  - It lives at `.devcontainer/requirements.txt` and lists the Python packages installed in the Codespace (currently `pandas`).
  - If you add packages, such as plotting libraries like Matplotlib, Seaborn, Plotnine or Altair, they go there.
  - Rebuilding a deleted Codespace takes ~10 minutes because it re-downloads the container and reinstalls R and Python packages.
- **Clear notebook outputs before committing.**
  - The `.ipynb` file stores printed outputs and an *execution count* that rises with every run across the whole notebook.
  - When collaborators each have different outputs and counts, version control gets messy and causes merge conflicts.
  - Run **Clear All Outputs**, save, then commit. Only the source code is version-controlled; outputs can always be regenerated.

### 12. Course logistics

- This week ends the "marked for completion" check assignments. From now on, assignments are graded, and the best 4 of 6 count.
- Next week's topic is data visualisation. After that, you'll have seen all the pieces needed for the analytics part of the group project.

## Code from class

### Loading the data and building the R pipeline

Textbook: [Part A: R Pipeline](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-a-r-pipeline)

```r
library(tidyverse)

getwd()  # confirm the working directory is the repository root

# path is relative to the project root, not to the .qmd file
nhanes <- read_csv("examples/nhanes-equity/data/nhanes_equity_v6.csv")

r_summary <- nhanes |>
  filter(!is.na(BMI), !is.na(IncomeGroup), !is.na(Gender)) |>  # drop missing
  group_by(IncomeGroup, Gender) |>          # 3 income groups x 2 genders
  summarise(
    n = n(),
    mean_bmi = round(mean(BMI), 2),
    sd_bmi = round(sd(BMI), 2),
    .groups = "drop"
  ) |>
  arrange(IncomeGroup, Gender)              # sorts alphabetically: high, low, middle

r_summary                                   # expect 6 rows
```

The agent first named the data frame differently from the textbook code. The instructor renamed it to `nhanes` so the pasted pipeline would run. The class then prompted the agent to count missing values per group. That code kept the missing rows and counted them with `is.na()`.

### Turning the pipeline into a function

Textbook: [Part B: R Function](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-b-r-function)

```r
summarise_mean_sd <- function(data, value, group1, group2) {
  data |>
    filter(!is.na({{ value }}), !is.na({{ group1 }}), !is.na({{ group2 }})) |>
    group_by({{ group1 }}, {{ group2 }}) |>
    summarise(
      n = n(),
      mean_value = round(mean({{ value }}), 2),   # {{ }} = use the column passed in
      sd_value = round(sd({{ value }}), 2),
      .groups = "drop"
    ) |>
    arrange({{ group1 }}, {{ group2 }})
}

r_function_summary <- summarise_mean_sd(nhanes, BMI, IncomeGroup, Gender)
r_function_summary

names(nhanes)                                       # look for other variables to try

summarise_mean_sd(diamonds, price, cut, color)      # works on any dataset: 35 rows
```

The class then compared `r_summary` with `r_function_summary` using `all.equal()` and column-by-column checks (see *What went wrong live*). For the in-class exercise, students changed only the *call*, not the function, to use different value and grouping columns.

### Missing values in a mean: R vs. Python

```r
mean(nhanes$BMI)                 # NA: at least one BMI value is missing
mean(nhanes$BMI, na.rm = TRUE)   # 25.648
```

```python
nhanes["BMI"].mean()             # 25.65: pandas skips missing values by default
```

### Setting up Python and loading the data

Textbook: [Load The NHANES Snapshot](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#load-the-nhanes-snapshot)

```python
import pandas            # Python's equivalent of library()
import pandas as pd      # the usual short alias

nhanes = pd.read_csv("../../../examples/nhanes-equity/data/nhanes_equity_v6.csv")

import os
os.getcwd()              # Python's getwd()
```

The textbook's path starts with `../../../` because the notebook lives in `assignments/assignment04-polyglot/submission/`. In class, the instructor's notebook ended up at the repository root, so his working directory was the root and he loaded the CSV from `examples/...` directly. The agent's version also added `low_memory=False` to `pd.read_csv()`.

### Rows and columns

Textbook: [Inspect Before Summarising](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html#inspect-before-summarising)

```python
n_rows, n_cols = nhanes.shape        # .shape is a (rows, columns) tuple
print(f"Rows: {n_rows}, Columns: {n_cols}")   # f-string inserts the values

len(nhanes)                          # simpler version: number of rows
len(nhanes.columns)                  # number of columns
```

The f-string line is the gist of what the agent produced. When asked to simplify, it switched to `len()`.

### Translating the R pipeline to pandas

Textbook: [Part C: Python Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-c-python-translation)

```python
py_summary = (
    nhanes
    .dropna(subset=["BMI", "IncomeGroup", "Gender"])     # R: filter(!is.na(...))
    .groupby(["IncomeGroup", "Gender"], as_index=False)  # R: group_by()
    .agg(                                                # R: summarise()
        n=("BMI", "size"),
        mean_bmi=("BMI", "mean"),
        sd_bmi=("BMI", "std")
    )
    .sort_values(["IncomeGroup", "Gender"])              # R: arrange()
)

py_summary["mean_bmi"] = py_summary["mean_bmi"].round(2)
py_summary["sd_bmi"] = py_summary["sd_bmi"].round(2)

py_summary
```

This is the textbook's version. The class used the agent's own translation, which followed the same steps. It used `.reset_index()` to flatten the result. When asked to replace `dropna` with a real filter step, it switched to `.query()` with "not NA" conditions on `BMI` and `IncomeGroup`. The output matched the R table.

### Importing a helper function from `helpers.py`

Textbook: [Create `helpers.py`](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#create-helpers.py)

```python
from pathlib import Path
import pandas as pd

def load_and_preview(path, n_rows=5):
    """Load a CSV, print its shape, and return the first rows."""
    csv_path = Path(path)                 # body indented 4 spaces
    if not csv_path.exists():
        raise FileNotFoundError(f"Could not find file: {csv_path}")

    data = pd.read_csv(csv_path)          # no low_memory=False -> DtypeWarning
    print(f"Loaded {data.shape[0]} rows and {data.shape[1]} columns")
    return data.head(n_rows)
```

Textbook: [Import It In A Notebook](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#import-it-in-a-notebook)

```python
from helpers import load_and_preview

preview = load_and_preview("../../../examples/nhanes-equity/data/nhanes_equity_v6.csv")
preview
```

The instructor then prompted the agent to add a Python translation of `summarise_mean_sd()` to the same helper file. It kept the same function signature (data, value, two grouping variables), tested it on NHANES and imported it in the notebook. After a kernel restart, it ran.

### What went wrong live

- **The agent's data path failed in the Quarto document**: the agent assumed the working directory was the `.qmd` file's folder and wrote a `../`-style relative path, so the chunk didn't run. The fix was a precise prompt: "Don't use the relative path from the file, use the path from the project root." The agent then found `_quarto.yml`, which already sets the execution directory to the project root, and switched to a root-relative path.
- **Unexpected sort order**: `arrange(IncomeGroup, Gender)` produced high, low, middle. That isn't a bug: the categories are sorted alphabetically. The fix is to treat `IncomeGroup` as an ordinal variable (low, middle, high) during data cleaning. The same order appeared in pandas.
- **Parity check returned `FALSE`**: comparing the pipeline with the function gave `FALSE`, for two reasons.
  - The instructor had swapped the grouping order in the function call (`Gender` first, then `IncomeGroup`), so the rows came out in a different order. Changing it back fixed the row comparison.
  - `all.equal()` also reports "names: 2 string mismatches", because the pipeline names columns `mean_bmi`/`sd_bmi` and the function names them `mean_value`/`sd_value`. Comparing specific columns avoids this.
- **Non-numeric value column**: calling the function with `clarity` (a category) as the value errored because R couldn't round it. The value argument must be a continuous variable.
- **`mean()` returned `NA` in R**: at least one BMI value is missing. `na.rm = TRUE` fixed it. pandas silently skipped the missing values, which explains why Python "worked" first.
- **The agent couldn't edit the notebook**: it couldn't write to an unsaved, empty notebook and asked for its code to be pasted in manually. Pasting by hand, or using **Insert at Cursor**, works.
- **`import helper` failed**: there were two problems.
  - The instructor mixed up the file and module names (`helper` vs `helpers`). The module name must match the file name.
  - His notebook had ended up at the repository root, so Python's working directory was the root rather than the submission folder. As a workaround, he put the helper file at the root.
  - **Follow the textbook instead**: put `helpers.py` in `assignments/assignment04-polyglot/submission/`, next to `translation.ipynb`. The textbook warns that a root-level copy will break the import.
- **Updated helper didn't take effect**: Python doesn't re-import an already-imported module. Restarting the kernel and rerunning the cells fixed it.
- **`DtypeWarning` from the helper**: the helper's `pd.read_csv()` lacked `low_memory=False`, which the earlier load had included. To silence it, add the argument, restart and rerun.

## Questions

- **Q:** A student was unsure whether their Git setup was right, because the name, working directory and branch all looked correct on GitHub.
  **A:** Those were correct, but the branch hadn't been pushed yet and there was no pull request. Push (publish) the branch, then create the pull request.
- **Q:** Do we have to include the prompts we used in the assignment document?
  **A:** Yes, for this class. Save the prompts you used, as Markdown text or as code comments, placed above or below the code they produced. Prompts sometimes give unexpected or wrong answers, and keeping track of them helps you learn the language. In a real job nobody would ask for this, but this course is teaching prompting.
- **Q:** The assignment mentions a `dependency-note.md`. What goes in it?
  **A:** Describe any packages you install or add and what they do. You can prompt your way through it, even fully vibe-coded, but it's still your responsibility to know what is being installed.

## Assignments

- [ ] **Assignment 4: Polyglot Parity**, due next week (exact date not stated in class). Work in `assignments/assignment04-polyglot/submission/`. You will need:
  - the R pipeline and function in `polyglot-parity.qmd`, with modified function calls;
  - the Python translation in `translation.ipynb`;
  - a helper in `helpers.py` that is called from the notebook;
  - both tables printed, plus a written comparison and parity table;
  - your prompts recorded;
  - `dependency-note.md`;
  - cleared notebook outputs before committing.

  See the [assignment page](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html) for the full file list.
- [ ] Try prompting the AI to treat `IncomeGroup` as an ordinal variable (low, middle, high) so the summary sorts properly.
- [ ] **Group project part 1 (proposal)**, due 2026-10-26. A second assignment is due the same day.

## Textbook

- [Polyglot Awareness & R Deepening: R Deepening Studio](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/#r-deepening-studio): the NHANES CSV path and writing R code in the assignment's `.qmd`.
- [R Deepening and Parity Check: Part A: R Pipeline](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-a-r-pipeline): the BMI-by-income-and-gender pipeline the class read and ran.
- [R Deepening and Parity Check: Part B: R Function](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-b-r-function): `summarise_mean_sd()` and the curly-curly explanation.
- [R Deepening and Parity Check: Part D: Parity Audit](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-d-parity-audit): checking that two computations agree.
- [Python Environment: Create A Notebook](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python02-environment.html#create-a-notebook): creating a Jupyter notebook and selecting a kernel.
- [Load and Inspect Data](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python05-load-inspect-data.html): loading NHANES with pandas and counting rows and columns.
- [R Deepening and Parity Check: Part C: Python Translation](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/r-deepening-parity.html#part-c-python-translation): translating the R pipeline into pandas.
- [Reusable Python Scripts: Create `helpers.py`](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python09-reusable-scripts.html#create-helpers.py): the `load_and_preview()` helper and importing it.
- [Packages and Reproducibility: Why `requirements.txt` Matters](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python03-packages-reproducibility.html#why-requirements.txt-matters): where Python packages are recorded.
- [Git Progress: Notebook Output Hygiene](https://ehsanx.github.io/HDSx/weeks/week05-polyglot-r-deepening/python10-git-progress.html#notebook-output-hygiene): clearing outputs before committing notebooks.
- [Assignment 4: Polyglot Parity](https://ehsanx.github.io/HDSx/assignments/assignment04-polyglot/README.html): the homework walked through at the end of class, including the dependency note.

---

- prompt: prompt-notes.md @ b25c25f-dirty
- prompt-hash: 6b9690e1e746
- model: claude-opus-5-5 (requested: opus)
- backend: claude
- inputs: transcript-plaud.md, materials.md
- generated: 2026-10-14
