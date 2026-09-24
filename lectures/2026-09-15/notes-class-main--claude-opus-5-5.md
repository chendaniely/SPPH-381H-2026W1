# Week 1: Course Introduction, R and the Tidyverse, and Loading the NHANES Data

Date Time: 2026-09-15 11:00:00

Instructor: Daniel Chen

## Summary

This first lecture of SPPH 381H covered what the course is and how it runs, then worked through a first piece of R code that loads a real health dataset. The course's main thesis is **"just because code runs doesn't mean the code is correct."** AI tools such as GitHub Copilot and Claude now make writing code cheap. The student's job is therefore to read, check and guide code, not to type it from scratch. Guiding an AI well means telling it both what you want and what you do *not* want, and that requires knowing enough about code and data to say so. The course has no exam. It runs on individual assignments (best four of six count) and a group milestone project that ends in a report and a presentation. Everything happens in a GitHub Codespace, so nothing needs to be installed on your own computer.

The first coding half went through the textbook's reference code for loading a cleaned NHANES extract, `examples/nhanes-equity/data/nhanes_equity_v6.csv`, almost word by word. Along the way it introduced several core ideas:

- `library(tidyverse)` and why languages make you load packages.
- The tidyverse "conflicts" message, which is red text but not an error.
- The working directory and relative file paths.
- CSV files and why to move away from Excel for analysis.
- Variables and the `<-` assignment arrow.
- Reading data with `read_csv()` and checking it with `glimpse()`.
- Column data types (`chr`, `dbl`) and `NA` for missing values.

The instructor then broke down the "defensive" code that AI assistants often write: a vector of candidate paths, `file.exists()`, a true/false filter, `[1]`, and `if (...) stop(...)`. He explained that LLMs write this kind of checking code because they only "see" what gets printed to the screen.

The last part moved from code to understanding data. Topics were:

- **Provenance:** record where the data came from, which version, and when you downloaded it.
- **The RDS format.**
- **Missing-value codes** such as 99 and 98 in survey codebooks.
- **Survey weights:** analysing survey data without its weights gives inaccurate claims about the population.
- **Who a dataset does and does not cover:** NHANES excludes military and incarcerated people.
- **Licensing.**
- **Presentation:** raw `summary()` output is not a result you can hand to anyone.

The session ended with students starting the week 1 assignment, a data card for a health dataset of their choosing.

## Knowledge Points

### 1. How this course works

- **Main thesis**: just because code runs doesn't mean it is correct. Writing code is no longer the hard part; dealing with, reading and checking what AI/LLM tools produce is.
- **Reading over writing**: you need to be able to read code, or at least recognise what is happening. You do not need to type large amounts from scratch. Lectures break code down almost word by word so it becomes less intimidating over time.
- **Guiding AI tools**: telling an LLM "analyse this dataset" gets *some* analysis. You get much better results when you tell it what you want, how to do it, and what *not* to do. You end up typing more English prose than code.
- **Assessment**:
  - There is no exam.
  - Individual assignments teach the mechanics. Your best **four out of six** count, so a missed assignment is simply dropped as a zero.
  - The group **milestone project** starts about a month in, in groups of three or four. You may form your own group; anyone left over is placed in one.
  - The project ends in a report and a presentation. Code that makes a plot or table is not useful if you can't present what it means.
- **Deadlines**: assignments are due **Mondays at 4 pm**. Class meets on Tuesdays. Due dates appear in Canvas, but the course textbook is the main reference.
- **Assignment Schedule page**: a new page in the course textbook that puts every assignment, individual or milestone, into one table.
- **Course materials**: nearly all materials are on the course website (the textbook), which is hosted on GitHub and not behind Canvas. The syllabus lives there too; Canvas just links back to it. The website is built with the same tools you will learn, including Quarto, which comes later in the course.
- **Health data science workspace**: a GitHub repository where all the course work happens.
  - **Fork** it, meaning make your own copy on GitHub.
  - Click **Code**, then **Codespaces**, then **Create codespace on main**.
  - **GitHub Codespaces** is a ready-to-use coding environment that runs in the browser, so nothing needs installing locally. You upload your datasets there.
  - Optional appendix chapters explain how to install R on your own computer.
- **GitHub account and Student Pack**: you need a GitHub.com account. The GitHub Student Pack gives free credits for tools you would normally pay for, including the AI tools used in the course. If it doesn't apply to your account (for example, it expired from a past registration), post on the Canvas message board. Git and GitHub collaboration is covered in about two weeks.
- **Lecture recordings and AI summaries**:
  - Lectures are voice-recorded and transcribed. An LLM then summarises each transcript, and the transcripts will be posted on GitHub.
  - Use the summary's headings as a self-check: for each heading, ask whether you understand it and what words you'd expect to see under it.
  - Once Git has been covered, the class can collectively edit the prompt that generates these summaries. You could then reuse it for your other courses.
  - If you don't want to be recorded, wait until the recorder is turned off at the end of class before asking a question.

### 2. Using AI tools safely with health data

- **Never paste real rows of data into an AI model.** The course datasets are public, so a slip is harmless here. In a job, though, you may work with hospital data full of patient identifiers, and a single row can represent a real person.
- **What to share instead**: describe your data. For example: "my variable is called X, and here are some examples of what it contains."
- **Fake example datasets**: ask the AI to *generate a fake dataset with these column names*.
  - It doesn't need to match your real data's distribution; it only needs to be realistic enough to run code on.
  - You can tweak it in Excel if needed.
  - You can then paste fake rows freely when asking for help.
- **LLMs only know what gets printed**:
  - A coding agent doesn't keep a live R session in its head. A dataset loaded on your computer is invisible to the model until something prints it, for example "show me the first five rows."
  - This is why tidy, informative printed messages are so useful to these tools.
  - It is also why AI-written code often contains checks that print or stop with a clear message.

### 3. R, the tidyverse and packages

- **R**: a free, open-source programming language developed by statisticians for data work. It is widely used in public health, epidemiology, medicine and pharma, where the main alternative is SAS. Many users are switching from SAS because R is free.
  - R is easier to install than Python. There is essentially one way to install R, but many ways to install Python, which makes Python harder to troubleshoot. Python is covered later in the course.
- **Posit**: the company formerly called RStudio.
- **Hadley Wickham and the tidyverse**: around 2012 Hadley Wickham started what became the **tidyverse**. This is a collection of R packages designed to make data-analysis code easier and more consistent to write. If you program in R, you are almost certainly using some code he wrote.
- **Package**: an add-on collection of functions that someone has written and shared.
  - Packages mean you don't copy-paste the same code into five files.
  - A fix made in one place applies everywhere the package is used.
- **`library()`**: the R command that loads a package, as in `library(tidyverse)`.
  - Other languages have the same idea: `import` in Python and JavaScript, `include` in C++.
  - Library calls usually sit at the top of a script, one call per package.
- **Why load things at all?** Even languages with everything "built in" make you load what you need. That way the language starts up quickly instead of loading everything every time.
- **Function**: a named command that takes inputs. The inputs go inside parentheses, as in `library(tidyverse)`.
- **Meta-package**: a package that loads other packages. `library(tidyverse)` attaches the core packages `dplyr`, `readr`, `forcats`, `stringr`, `ggplot2`, `tibble`, `lubridate`, `tidyr` and `purrr`.
- **Masking / conflicts**:
  - R already has functions called `filter()` and `lag()` in its built-in `stats` package. Loading the tidyverse loads `dplyr`, which has its own `filter()` and `lag()`.
  - When two loaded packages share a function name, the one **loaded last takes precedence**. From then on, `filter()` means `dplyr::filter()`.
  - The conflicts message is just telling you this happened.
- **Red text is not always an error**: R prints some informational messages in red, and the ✖ marks in the conflicts message look alarming. Most red text does mean something went wrong, but not all of it. Read the message.
- **Tidyverse vs base R when prompting AI**:
  - **Base R** is R without add-on packages. The same task, such as subsetting a dataset, can look very different in base R.
  - If an AI gives you notation you've never seen, re-prompt: *"please write this in tidyverse syntax."*
  - Sometimes you may genuinely want base R, for example to avoid installing packages. You can ask for that too.
- **`library(readr)` + `library(dplyr)` instead of `library(tidyverse)`**: AI-written code sometimes loads only the specific packages it needs, `readr` for reading files and `dplyr` for manipulating data. This is equivalent in spirit. Which one you get is partly random.

### 4. Files, folders and the working directory

- **Files and folders matter when coding.** You can find a file by searching or clicking, but code needs its exact location.
  - Windows: the Downloads folder is under `C:\Users\<username>\Downloads`.
  - Mac: it is under `/Users/<username>/Downloads`.
- **Working directory**: the folder R treats as its starting point when you run code.
  - Each assignment will live in a different folder, so the working directory changes with it.
- **Path**: the address of a file, as a sequence of folders separated by `/`.
  - Example: `examples/nhanes-equity/data/nhanes_equity_v6.csv` means "from the starting point, open `examples`, then `nhanes-equity`, then `data`, then the file."
- **Relative path and the Google Maps analogy**: a path is like turn-by-turn directions without a final address. "Walk 500 m and turn left" ends somewhere different depending on whether you start at ESB or the Nest.
  - **"File not found" when you can see the file** almost always means the working directory is not what you think. The file exists; the starting point of your address is wrong.
- **`..` (two dots)**: "go up one folder," like a Back button. `../../examples/...` means go up two folders, then into `examples`.
- **Capitalisation matters**: `data` and `Data` are different folders, although Macs are more forgiving about this. Forgetting one capital letter means the file won't be found.
- **Avoid spaces and capitals in file and folder names**: use lowercase with underscores or dashes. Names may look less pretty, but they are far easier to type and load in code.
- **Typos are the most common beginner error**: the instructor spells names out loud letter by letter while typing. When something "doesn't exist," first check that you typed it correctly.

### 5. Data file formats

- **CSV (comma-separated values)**: a plain-text file where each line is a row and commas separate the columns.
  - The first line usually holds the column names, for example `Cycle,BMI,Weight,...`.
  - **Pros:** very portable. Any computer can open it in a text editor, spreadsheet programs open it, and GitHub displays it as a table.
  - **Cons:** it can be slow to load with millions of rows.
- **TSV (tab-separated values)**: like CSV but uses a tab character between columns. This helps when the data itself contains commas. A tab looks like a wide space but is a different character from a space.
- **Fixed-width files**: each column occupies fixed character positions, for example positions 1–5 are the ID and 6–20 the name. They are common in SAS datasets and machine-generated output.
- **Excel files (`.xlsx`)**: avoid them for analysis.
  - You need special software to open them.
  - In code you must specify both the file and the sheet name. One CSV per sheet is easier.
  - **Colour formatting** (e.g. red or green cells) is lost when data is loaded into code. That is lost information.
  - **Stray one-off calculations** typed beside the data become part of a row when loaded. They contaminate the dataset with odd numbers and missing values.
  - Excel is still fine for entering or viewing data. It's also fine to mix tools while learning, doing one step in R and the rest in Excel. The R part will grow over time.
- **RDS (`.rds`)**: R's own format. It saves any R object exactly as R holds it in memory.
  - **Pros:** it loads faster, and it can store things that aren't tables. For example, you can save a fitted linear regression model so someone else can use it without refitting it.
  - **Cons:** it looks like gibberish in a text editor and is only really readable in R, so it's harder to share or view online.

### 6. Loading and inspecting data in R

- **`read_csv()`**: the tidyverse function (from `readr`) that reads a CSV file into R as a dataset.
  - Base R has a similar `read.csv()`. The tidyverse used an underscore to avoid overwriting the existing function.
- **Arguments (parameters)**: extra inputs that change how a function behaves. They are separated by commas.
  - `show_col_types = FALSE` turns off the column-type message `read_csv()` normally prints. `FALSE` means "off."
- **Variable**: a name that stores a value so you can reuse it and keep lines short. Short lines are easier to read, the same way books aren't printed extremely wide.
  - When R sees a variable name, it substitutes the stored value. `read_csv(nhanes_path)` behaves exactly as if you had typed the path string there.
  - Typing a variable's name on its own prints its value.
- **Assignment `<-`**: the "arrow," typed as a less-than sign followed by a dash. It means "take everything on the right and save it into the name on the left."
  - When you assign, nothing is printed. When you run the same code without assigning, R prints the result.
  - `=` also works for assignment. The `<-` form is the R convention and worth getting used to reading.
- **Tibble**: the tidyverse's version of a data table. When printed, it shows its dimensions (`105,626 × 18`), the column types under each name, and the first 10 rows.
- **`glimpse()`**: shows the number of rows and columns, then one line per column with the column's name, its data type, and its first few values. It is especially useful in Codespaces, which has no built-in spreadsheet viewer.
- **`dim()`**: short for *dimension*. It gives two numbers, the number of rows and the number of columns.
  - Knowing what an abbreviated name stands for (dim = dimension, not "make dimmer") makes functions much easier to remember.
- **`summary()`**: gives per-column summary statistics.
  - For number columns: minimum, quartiles, median, mean, maximum, and the count of `NA`s.
  - For character columns: `Length`, `N.unique` (number of distinct values), `N.blank` (empty strings), and `Min.nchar`/`Max.nchar` (shortest and longest value in characters).
  - "N" is jargon for a count.

### 7. Data types and missing values

- **Column data type**: every value within a column is expected to have the same type. Different columns in the same row can have different types.
  - **`chr` (character)**: text. The values appear in quotes in `glimpse()` output, e.g. `"1999-2000"`.
  - **`dbl` (double)**: a number with a decimal part (a floating-point number). By default R stores most numbers this way.
  - **integer**: a whole-number type. It takes slightly less memory, which can matter when a very large dataset barely fits on your computer.
- **Check the types against what you expect.** If BMI shows as `chr` instead of `dbl`, something non-numeric is hiding in that column. For example, someone may have typed the word "missing" instead of leaving the cell blank.
  - A single non-number forces the entire column to become character.
  - There are settings that say "treat as numbers, mark non-numbers as missing." Only use them if that text genuinely means missing and not something else.
- **`NA`**: R's value for *missing*.
  - Empty cells in a CSV (or empty `""`) are read in as `NA` by default.
  - `NA` is **not** the same as `""`, an empty character string. `NA` means "no information"; `""` is a text value that happens to be empty, and it might mean something else in your data.
- **Missing-value codes in health surveys**:
  - Survey data (NHANES includes interviews) needs to distinguish *why* something is missing. A blank is ambiguous: was the question not applicable, never asked, or refused?
  - Codebooks therefore use codes such as **99**, **98** and **88**, e.g. 99 = missing, 98 = refused.
  - A BMI of 99 makes no sense. Seeing it is your cue to check the **codebook**, the documentation describing each variable and its codes.
  - Deciding what to do with these codes is your job as the researcher. They can also cause unexpected column types.

### 8. Reading AI-style "defensive" code: vectors, indexing, filters and conditionals

- **Vector**: an ordered collection in which every item has the same data type. `candidate_paths` is a *character vector*. You can think of it as a list, but R also has a separate "list" object that can hold mixed types.
  - Each column of a dataset is a vector, which is why people say "that column" and "that vector" interchangeably. The term comes from maths and statistics.
- **`c()`**: combines values into a vector.
- **Square brackets `[ ]`**: pull items out of a container.
  - **By position**: `candidate_paths[1]` is the first item and `candidate_paths[2]` the second. Asking for a position that doesn't exist, `candidate_paths[3]`, returns `NA` in R; some other languages throw an error instead.
  - **By true/false values**: give a TRUE/FALSE value for each item, and the items marked `TRUE` are kept. This is the idea behind filtering data, for example "age over 18" produces TRUE/FALSE for each person.
  - Even a one-item vector is still a container, so you still take out item `[1]`. The instructor's analogy: if there is one person on the bus and you want the person, you still call person one off the bus rather than asking for the bus.
- **`file.exists()`**: checks whether each path in a vector exists, returning `TRUE` or `FALSE` for each.
- **Mask / filtering criterion**: any expression that returns TRUE/FALSE, such as `file.exists(candidate_paths)`, can be used inside `[ ]` to keep only the matching items. The same principle powers much more complicated filters, e.g. picking out only the files for years starting with "201".
- **Nested code is read inside-out**:
  - `candidate_paths[file.exists(candidate_paths)][1]` first checks which paths exist, then keeps the existing ones, then takes the first. Taking the first guarantees exactly one path, since `read_csv()` loads one file at a time.
  - You can put this whole expression directly inside `read_csv()`, because it evaluates to a path string.
- **`is.na()`**: checks whether a value is `NA`. If none of the candidate paths exist, `nhanes_path` ends up `NA`.
- **`stop()`**: deliberately throws an error with your own message.
- **`if (condition) { ... }`**: a *conditional statement*. The code inside the curly braces runs only if the condition is `TRUE`; if it is `FALSE`, R skips the block. `if (FALSE) {stop("hello")}` does nothing.
- **Why LLMs write this code**: an agent doesn't know your folder structure, so it writes code to check. A clear custom error such as "Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv" tells both you and the model exactly what failed and where to fix it. Writing checks like this is a good habit for you too. Still, read AI code critically and understand *why* each check is there.

### 9. The NHANES dataset

- **NHANES**: a cross-sectional national survey run by the US Centers for Disease Control and Prevention (CDC). It measures the health and nutritional status of the population.
  - It uses sampling methods so that a smaller sample can support conclusions about the larger population.
  - It is often used as a baseline or reference dataset, for example when adjusting for background differences before comparing groups.
- **Individual-level vs aggregate data**:
  - In the course extract each row is one person; this is *micro-level* or individual-level data.
  - Other health datasets are *aggregate*, e.g. summarised by census region.
- **The course file**: `examples/nhanes-equity/data/nhanes_equity_v6.csv` has 105,626 rows and 18 columns:
  - `Cycle`, `BMI`, `Weight`, `Height`, `Waist`, `WeightMEC`, `Strata`, `PSU`, `Gender`, `Race`, `Education`, `Marital`, `Age`, `PIR`, `EducationClean`, `MaritalClean`, `IncomeGroup`, `WHtR`.
  - `Cycle` holds survey cycles such as `"1999-2000"`; `summary()` shows 11 distinct cycles.
  - The lecture did not explain every column. Note that there is both a `Weight` and a `WeightMEC` column. Check the codebook before assuming which one is a survey weight.
- **Who is covered**: NHANES samples the **civilian, non-institutionalised** US population. It has no information on military personnel living on bases or on incarcerated people, so you cannot use it to make claims about those groups. You'd need a different survey.
- **Original NHANES files** can have hundreds of columns, because they come from long interviews that are then recoded. Your research question needs only a subset of them.

### 10. Provenance, versions and reproducibility

- **Document the provenance of your dataset**, meaning where it came from, even if you just clicked a download link. Record both the **source** and the **local path**.
  - **`download.file()`**: an R function that downloads a file from a URL. Using it in code documents the source automatically. Some sources require a login, which complicates this.
  - Alternatively, paste the source URL into a separate text file or into a **code comment**, a line beginning with `#` that R ignores.
- **Record the version and download date**:
  - Data publishers find mistakes and recode variables, then re-release the data, even within the same survey wave. "Wave one" alone can refer to several versions.
  - Summary statistics calculated in January may not match those calculated in March.
  - Your code keeps the *steps* the same. You also need to track the *inputs*, via the date, a version tag, or a renamed file.

### 11. Survey weights, limitations and generalisability

- **⚠️ Survey weights are not optional.**
  - Surveys typically include a weight column. The weights are calculated using census data so that under-sampled groups are scaled up and over-sampled groups scaled down, putting everyone on par with the population.
  - For example, a random sample will capture few members of a small minority group. Weighting corrects for this.
  - **If you analyse survey data without its weights, the averages, models and claims you make about the population will not be accurate.**
- **Weights can change over time**: census data are updated (the US has 10-year, 1-year and 5-year census products), which is another reason datasets get new versions.
- **Know who was sampled**, and **don't overclaim**.
  - The instructor's example: about 68% of one DCI 100 section owned iPhones. That is safe to state for that section. It is shakier for all sections, and increasingly unjustifiable for UBC, Vancouver, BC, Canada or the world.
  - Report findings for the population your data actually covers. They can still serve as a reference for other groups if you say so clearly.
- **Sampling biases to watch for**:
  - **Rare diseases**: a general-population survey won't generalise. Look for a dataset that specifically targets those patients.
  - **Stigmatised or fearful groups** may be under-represented. For example, immigrants may not answer the door to someone in a uniform conducting a survey.
  - **Collection method**: polls done by landline will skew old, because few people have landlines now.
- **Free and public does not mean good.** Every dataset has problems. It's your responsibility to find and state its limitations. That is far better than someone else showing your overclaim is invalid.
- **Citations**: keep track of sources so you can cite them properly. Automating bibliographies with code comes later in the course.

### 12. Licensing

- **Publicly available ≠ free to use for any purpose.** Licences set the terms of use.
  - A **non-commercial (NC)** licence means you may not use the data commercially, e.g. inside an insurance company, without paying for a commercial licence. Ignoring this can get a company sued.
  - **No licence doesn't mean fair game.** In a workplace you'd be "rolling the dice."
- For a university course this is generally fine. The instructor, however, had to confirm that every dataset in his published (commercial) textbook allowed commercial use, and he replaced the ones that didn't.

### 13. Communicating results

- **Raw output is not a result.** A `summary()` table is fine for exploratory work or for answering a teammate's quick question, e.g. "mean BMI is 25.65." It does **not** belong in a report as-is.
  - A reader can't tell what to look at or what question it answers.
- **Code that runs and is correct still isn't enough**: you must convey the result to people outside the room. If your audience can't make sense of the numbers, the technical work was wasted. This is why the milestone project ends with a report and presentation.
- **Start from a research question**: pick variables by reading the codebook with your question in mind. In academic work, also check which variables other papers on the same question have used. Feeding a model everything doesn't mean you know what the output means.

### 14. The data card activity

- For the week 1 assignment, browse the data portals listed at the bottom of the course textbook. Choose one health dataset to work with for the rest of the course. You can switch later, but you'll have invested time learning it.
  - You can still learn from classmates working on other datasets.
- Fill in a copy of the **data card** template covering:
  - the dataset name;
  - where it comes from and how you accessed it;
  - its licence;
  - geography and time period;
  - its columns;
  - what research or health question it could answer.
- The template avoids spaces in names and puts values in quotes. It aims for a middle ground that is readable by both humans and computers.
- It is the starting point for later individual assignments and the milestone. Later weeks generalise today's code to load *your* dataset and filter it to the columns relevant to your question.

## Code from class

### The textbook's reference code

This is the full block from the textbook that the lecture then took apart line by line:

```r
library(tidyverse)                                   # load the tidyverse collection of packages

candidate_paths <- c(                                # places the file might be, relative to the working directory
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"
)
nhanes_path <- candidate_paths[file.exists(candidate_paths)][1]   # first path that actually exists
if (is.na(nhanes_path)) {                            # no path existed -> stop with a clear message
  stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
}
nhanes_spine <- read_csv(nhanes_path, show_col_types = FALSE)     # read the CSV, without the column-type message
```

### Loading the tidyverse

```r
library(tidyverse)
```

The output is red and has ✖ marks, but it is not an error:

```
── Attaching core tidyverse packages ─────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.2.1     ✔ readr     2.2.0
✔ forcats   1.0.1     ✔ stringr   1.6.0
✔ ggplot2   4.0.3     ✔ tibble    3.3.1
✔ lubridate 1.9.5     ✔ tidyr     1.3.2
✔ purrr     1.2.2     
── Conflicts ───────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
```

The Conflicts section means that from now on `filter()` and `lag()` refer to the `dplyr` versions, because the last package loaded wins.

### Reading the NHANES file with a simple path

The instructor simplified the reference code to a single known path first:

```r
nhanes_path <- "examples/nhanes-equity/data/nhanes_equity_v6.csv"   # store the path in a variable
nhanes_spine <- read_csv(nhanes_path, show_col_types = FALSE)       # assign: nothing is printed
nhanes_path                                                         # typing a name prints its value

read_csv("examples/nhanes-equity/data/nhanes_equity_v6.csv", show_col_types = FALSE)  # same thing with the path typed in; not assigned, so it prints
nhanes_spine = read_csv(nhanes_path, show_col_types = FALSE)        # `=` also works for assignment
```

These paths are relative to the working directory, which in the demo was the course textbook's project folder.

### Looking at the data

```r
nhanes_spine          # print the tibble
glimpse(nhanes_spine) # compact view: rows, columns, type and first values of each column
```

`glimpse()` output, trimmed:

```
Rows: 105,626
Columns: 18
$ Cycle          <chr> "1999-2000", "1999-2000", "1999-2000", "1999-2000", "1999-2000", "1999…
$ BMI            <dbl> 14.90, 24.90, 17.63, NA, 29.10, 22.56, 29.39, 15.51, 18.48, 30.94, 22.…
$ Weight         <dbl> 12.5, 75.4, 32.9, 13.3, 92.5, 59.2, 78.0, 40.7, 45.5, 111.8, 65.0, 99.…
...
$ Education      <chr> NA, "College Grad", NA, NA, "College Grad", NA, "HS or Less", NA, NA, …
$ Age            <dbl> 2, 77, 10, 1, 49, 19, 59, 13, 11, 43, 15, 37, 70, 81, 38, 85, 2, 1, 0,…
```

`chr` columns show values in quotes, `dbl` columns are numbers, and `NA` marks a missing value.

### Breaking down the path-checking code

```r
candidate_paths <- c(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"   # `..` = go up one folder
)
candidate_paths                                   # a character vector of two paths
candidate_paths[1]                                # first item
candidate_paths[2]                                # second item
candidate_paths[3]                                # doesn't exist -> NA (no error in R)
file.exists(candidate_paths)                      # TRUE FALSE: a check for each path
candidate_paths[file.exists(candidate_paths)]     # keep only the paths marked TRUE
candidate_paths[file.exists(candidate_paths)][1]  # guarantee exactly one path
read_csv(candidate_paths[file.exists(candidate_paths)][1])   # the whole expression can go straight into read_csv()
nhanes_path <- candidate_paths[file.exists(candidate_paths)][1]
nhanes_path
```

The key output:

```
> candidate_paths[3]
[1] NA
> file.exists(candidate_paths)
[1]  TRUE FALSE
```

Calling `read_csv()` here *without* `show_col_types = FALSE` shows the message that argument normally hides:

```
Rows: 105626 Columns: 18
── Column specification ─────────────────────────────────────────────
Delimiter: ","
chr  (8): Cycle, Gender, Race, Education, Marital, EducationClean, MaritalClean, IncomeGroup
dbl (10): BMI, Weight, Height, Waist, WeightMEC, Strata, PSU, Age, PIR, WHtR

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

### Conditionals and custom errors

```r
stop("i have stopped")          # stop() always throws an error with your message
stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")

is.na(nhanes_path)              # FALSE: a path was found
if (is.na(nhanes_path)) {       # condition is FALSE, so the block is skipped and nothing prints
  stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
}
if (FALSE) {stop("hello")}      # same idea: a FALSE condition means the code inside never runs
```

```
> stop("i have stopped")
Error:
! i have stopped
```

### Summary statistics

```r
summary(nhanes_spine)   # per-column summaries: fine for exploring, not for a report
```

Excerpt:

```
       Cycle             BMI       
 Length   :105626   Min.   :  7.99 
 N.unique :    11   1st Qu.: 19.88 
 N.blank  :     0   Median : 24.90 
 Min.nchar:     9   Mean   : 25.65 
 Max.nchar:     9   3rd Qu.: 30.00 
                    Max.   :130.21 
                    NAs    :9356   
```

The maximum BMI of 130.21 is alarming. It could be real, or it could be a data-entry error, so it is worth investigating rather than trusting. `BMI` also has 9,356 missing values.

### What went wrong live

- **Misspelled package name**: `library(tidytidy)` failed with
  ```
  Error in `library()`:
  ! there is no package called ‘tidytidy’
  ```
  The package does exist; the name was mistyped. `library(tidyverse)` is correct. When R says something doesn't exist, check the spelling first.
- **Typo in `TRUE`**: `if (TURE) {stop("hello")}` failed with
  ```
  Error:
  ! object 'TURE' not found
  ```
  R read `TURE` as the name of a variable, which doesn't exist. The intended code was `if (TRUE) {stop("hello")}`, which would run `stop()` and print the error "hello". The log does not show the corrected line being run.
- **Out-of-range index**: `candidate_paths[3]` asked for a third item in a two-item vector. It returned `NA` instead of an error, which can silently hide mistakes.
- **Forgetting `show_col_types = FALSE`**: calling `read_csv()` without it printed the full column-specification message. This isn't an error, just extra output that the argument suppresses.

## Questions

- **Q:** A student asked, while looking at the `glimpse()` output, whether the red `NA` marks a missing value.
  **A:** Yes. `NA` is R's way of saying a value is missing. Empty cells in a CSV are read in as `NA`, and `NA` is different from an empty text string `""`. Health surveys often use numeric codes (e.g. 99 or 98) instead, so check the codebook.

## Assignments

- [ ] Complete the week 0 tasks, including the surveys in Canvas.
- [ ] Create a GitHub.com account if you don't already have one.
- [ ] Apply for the GitHub Student Pack. If it doesn't activate, post on the Canvas message board.
- [ ] Week 1 assignment: pick a health dataset from the data portals listed in the course textbook, read its documentation, and fill in the data card, including a possible research question. Submit it in Canvas by copying in the contents or uploading the file. Due Monday, 2026-09-21, at 4 pm.

---

- prompt: prompt-notes.md @ uncommitted
- prompt-hash: 368fbd6dc3ac
- model: claude-opus-5-5 (requested: opus)
- backend: claude
- inputs: transcript-plaud.md, history.R, R-console.txt
- generated: 2026-09-24
