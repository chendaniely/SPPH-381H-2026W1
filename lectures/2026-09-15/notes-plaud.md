Date: 2026-09-15 11:01:38

Location: [Insert Location]

Instructor: Daniel Chen

## Summary

This introductory lecture for a course on coding with AI for health datasets is delivered by the instructor, Daniel Chen. The course is designed for students with no prior coding experience, emphasizing code reading and comprehension over writing code from scratch. It leverages AI and LLM tools like GitHub Copilot and Claude to make coding more accessible. The main thesis is that while AI can generate code easily, the critical skill is guiding the AI and correctly interpreting the output. The course is project-based, culminating in a group milestone project, with no exams. Students will use the R programming language and work with public health datasets hosted on GitHub, utilizing a pre-configured "Code Spaces" environment.

The instructor explains the logistical and pedagogical approach, which involves recording lectures and generating AI-powered transcripts and summaries that will be available on GitHub. Students will have the opportunity to collectively create a custom prompt to tailor these summaries. The lecture then transitions to an introduction to the R programming language, highlighting its origins in statistics and its prevalence in fields like public health. Key concepts covered include the `tidyverse` package, file paths, working directories, and data file formats like CSV, TSV, and fixed-width files.

A significant portion of the lecture is dedicated to a live coding demonstration on loading and handling data using R and the `tidyverse` package. The instructor explains different data file types, demonstrates the `read_csv` function, and contrasts code-based analysis with spreadsheet programs like Excel, noting Excel's pitfalls such as data contamination. He shows how to interpret `tidyverse` library output, including conflicts with base R functions, and how this knowledge helps in prompting LLMs for coding assistance.

The lecture further focuses on loading and inspecting datasets in R, explaining how LLMs interact with code via printed outputs and the importance of understanding R’s data types (chr, dbl), assignment operators (`<-`, `=`), and file path conventions. Using the NHANES dataset, he introduces the `glimpse` command for efficient data previews and discusses handling missing data (`NA`) and survey-encoded missingness codes (e.g., 99, 98) common in health datasets. The session also included a brief 5-minute movement break led by Mila from Move You.

Building on this, the instructor explains how LLMs use conditional statements (`if` statements) to write self-correcting code with custom error messages and how to write explicit testing and error-handling code in R. The lecture emphasizes the principles of responsible data handling, including documenting data provenance (source URL, download date), versioning, and understanding data limitations and biases, using NHANES as an example (e.g., exclusion of military/incarcerated individuals, need for survey weights). The discussion also contrasts the human-readable CSV format with the faster, R-specific RDS format. He stresses that the ultimate goal is effective communication, requiring results to be presented clearly in a report, not just as raw code output.

Finally, the instructor guides students on how to approach their individual assignments. He emphasizes formulating a specific research question first, then using the dataset's codebook to identify relevant variables, considering factors like licensing, geography, and time. The main task for the week is to create and submit a "data card" for a chosen dataset, which will serve as the foundation for future work. The class concludes with time for students to begin this task with TA support.

## Knowledge Points

### 1. Course Overview and Philosophy

*   **Course Title and Focus**: The course, "Coding Using AI," focuses on working with health datasets for students with no prior coding experience.
*   **Instructor and Textbook**: The instructor is Daniel Chen. The course textbook was written by Elsan and students from the School of Public Health.
*   **Core Thesis**: The central idea is that with AI making code generation "cheap," the critical skill is now guiding the AI and verifying its output, encapsulated by the phrase: "just because code runs doesn't mean the code is correct."
*   **Role of AI in Coding**: Students will learn to guide AI tools like GitHub Copilot and Claude by providing specific English prose instructions, which is presented as the future of coding.

### 2. Course Structure and Logistics

*   **Assessment Structure**: The course is project-based with no exams. Assessment is through one large project with several milestones, worked on first individually and then in groups of three or four.
*   **Assignments and Deadlines**: A consolidated assignment schedule is available on the course website. Individual assignments are graded on a "best four out of six" basis and are due on Mondays at 4 PM.
*   **Course Materials and Platform**: Materials are hosted on a public GitHub webpage, not Canvas. The course website is built with Quarto, a tool students will learn.
*   **Lecture Recordings and Summaries**: Lectures are recorded, transcribed, and summarized using AI. These resources will be available on GitHub. Students will collaboratively create a custom prompt to refine the technical summaries.

### 3. Technical Setup and Tools

*   **GitHub Requirement**: Students must have a GitHub.com account and sign up for the GitHub Student Pack to get free access to tools like GitHub Codespaces.
*   **Development Environment**: All work will be done in the "Health Data Science Workspace" via GitHub Codespaces, requiring no local software installation.
*   **Programming Language**: The course primarily uses the R programming language, with a focus on the `tidyverse` package for easier data analysis. A section on Python is also included.
*   **AI Tools**: The GitHub Education pack provides access to AI tools. The instructor may also demonstrate paid tools like Claude.

### 4. Fundamental Concepts in Coding and Data Handling

*   **Files and Working Directory**: A critical concept is understanding file/folder structures and the "working directory," which is the reference point for all file paths. An incorrect working directory is a common source of errors.
*   **File Path Conventions**: Paths are the textual addresses of files. `..` navigates one folder up. It is best practice to use lowercase folder/file names with underscores (`_`) or dashes (`-`) instead of spaces to avoid errors.
*   **Data File Formats**:
    *   **CSV (Comma-Separated Values)**: A common, portable plain-text format.
    *   **TSV (Tab-Separated Values)**: Uses tabs as separators, useful when data contains commas.
    *   **Fixed-Width Format**: Data is structured by character position, common in older datasets.
    *   **RDS (R Data Serialization)**: An R-specific binary format that loads much faster than CSVs and can store any R object, including machine learning models, but is not human-readable.
*   **Loading Packages**: In R, the `library(tidyverse)` command loads the `tidyverse` collection of tools. This concept of explicitly loading needed packages is common across programming languages.
*   **Conditional Logic (`if` statements)**: `if` statements execute code only if a condition is `true`. LLMs use them to create self-correcting code with custom error messages, which aids debugging. The `stop()` function can be used to halt execution with a specific error.

### 5. Working with R and Tidyverse

*   **Loading Data**: The `read_csv()` function from `tidyverse` is used to load CSV files. It is distinct from R's base `read.csv()` function.
*   **Tidyverse Conflicts**: When `tidyverse` is loaded, it may show "Conflicts" messages because its functions (e.g., `filter`) have the same names as base R functions. R gives precedence to the most recently loaded package.
*   **Assignment Operators**: The traditional R assignment operator is `<-`, though `=` can also be used. Values on the right are assigned to variables on the left.
*   **Vectors and Subsetting**: A vector is a sequence of elements of the same type. Square brackets `[]` are used for subsetting (extracting elements) by position (e.g., `[1]`) or by a boolean (true/false) mask.
*   **Inspecting Data**: The `glimpse()` command provides a quick summary of a dataset's structure, including rows, columns, variable names, data types (`chr` for character, `dbl` for double/decimal, `integer`), and sample values.
*   **Handling Missing Data**: `NA` represents missing data in R and is distinct from an empty string `""`. Health datasets often use sentinel values (e.g., 99 for missing, 98 for refused) that must be identified using a codebook and converted to `NA`.
*   **File Existence and Error Handling**: The `file.exists()` function checks if files at given paths exist, returning a boolean vector. This is used to build robust code that can find a valid file from a list of candidates and provide specific error messages if no file is found.

### 6. Data Analysis Principles and Best Practices

*   **Spreadsheets vs. Code**: Excel is useful for data entry but can lead to issues like lost formatting information and data contamination from stray calculations. A code-based approach is recommended for analysis.
*   **Data Provenance**: It is crucial to document the data's source, including the download URL and date, to ensure reproducibility, as datasets are often updated.
*   **Understanding Data Limitations**: Analysts must understand who was sampled to know the limits of generalizability. For example, the NHANES dataset excludes military and incarcerated individuals.
*   **Survey Weights**: Survey datasets like NHANES often include a 'weight' column. These weights must be used in analysis to adjust for over/undersampling and make accurate claims about the broader population.
*   **Bias and Licensing**: Public datasets are not inherently unbiased. Data collection methods can introduce bias (e.g., polling via landlines skews older). Datasets also have licenses that dictate their use (e.g., academic vs. commercial).
*   **The Goal is Communication**: The purpose of data analysis is to communicate findings effectively. Raw code output is insufficient; results must be presented clearly and contextually in a report or presentation for the target audience.

### 7. Interacting with Large Language Models (LLMs)

*   **Prompting LLMs**: When asking an LLM for R code, it is beneficial to specify "in tidyverse syntax" to ensure consistency.
*   **How LLMs "See" Code**: LLMs do not have a persistent state. They rely on the printed output of code to understand the current state of the data and decide on the next step.
*   **LLMs and Testing Code**: LLMs often generate testing code (e.g., checking for file existence) because they cannot access the user's local environment. The resulting error messages help the LLM debug and correct the code.

### 8. The Data Card Assignment

*   **Formulating a Research Question**: Before analysis, students should formulate a specific health question.
*   **Variable Selection**: Using the dataset's codebook, students should select a relevant subset of variables to answer their question, rather than using all available columns.
*   **Assignment Task**: For the week, students must choose a dataset, formulate a question, and fill out a "data card" detailing the dataset's characteristics. This card will be the foundation for their individual assignments and project milestones.

## Questions

- [Insert Question/Confusion]

## Assignments

- [ ] 1. Complete the "Week Zero" assignment, which includes several surveys on Canvas.
- [ ] 2. Create a GitHub.com account and register for the GitHub Student Pack.
- [ ] 3. Select a dataset, read its documentation (codebook), and formulate a potential research question.
- [ ] 4. Complete and submit the "data card" file via Canvas for the week one module.
- [ ] 5. For the milestone project, ensure that data analysis is presented in a clear, understandable report and not just as raw code output.
- [ ] 6. When working with a dataset, investigate and document its provenance (source, access method, license) and limitations (sampling, biases).
- [ ] 7. If using survey data, check for and correctly apply survey weights.
- [ ] 8. Practice loading data in R using `read_csv`, inspecting it with `glimpse`, and handling missing values (`NA`) and encoded missingness (e.g., 99, 98).
- [ ] 9. Implement a file loading routine with candidate paths, `file.exists`, and explicit error handling.
- [ ] 10. Check Canvas after September 16th, 2026, for links to the course's GitHub repository containing lecture materials.
