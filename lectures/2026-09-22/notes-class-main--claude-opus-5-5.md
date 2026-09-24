# Modern Workflows: GitHub, Codespaces, Quarto and Your First Commit

Instructor: Daniel Chen

## Summary

This week-two session, on "modern workflows," turned last week's work on finding a data file into actually loading data and producing a report. The class worked through Assignment 1 live. Each student forked the course's HDSx workspace repository into their own GitHub account and opened it in GitHub Codespaces, a coding environment that runs in the browser so nothing has to be installed on a laptop. From there they rendered a Quarto practice report that loads `data/patients.csv`, looks at the first rows, and draws a histogram. The instructor also reviewed a point from last week's data-intake-card exercise. Data from general hubs such as Kaggle can be completely synthetic, so always trace a dataset back to its original source before making any claims from it.

Much of the session explained how the pieces fit together. A **repository** works like a Google Drive folder for code. **Markdown** and **Quarto** let you mix plain prose with code chunks, and one source document can be rendered to HTML, PDF or Word. **Git** provides version control through manual checkpoints called commits. The central, repeated message was that saving a file is not the same as committing it, and committing is not the same as pushing it. Only what appears on the GitHub website has been submitted, and that is what gets graded.

The session ended with a tour of VS Code inside Codespaces. It covered the command palette, running code cells, the difference between the system terminal and the R console, and how to restart R cleanly when your code gets into a confusing state. The remaining time was set aside to finish the assignment in class. Next week introduces the Copilot AI features in Codespaces.

## Knowledge Points

### 1. Checking where a dataset really comes from

- **Data intake card** (last week's assignment): a structured way to assess whether a dataset is reliable and fit for the purpose you intend to use it for.
- **Kaggle**: a popular data science site. It started with paid competitions and now also hosts learning datasets and serves as a general data hub.
  - **Warning:** many Kaggle datasets sound perfect but are **completely synthetic, made-up data** uploaded as someone's example. Any claims drawn from them are not real.
  - If you use a non-government source, hunt down exactly where the data originally came from. It often leads back to a government source that you can check directly.
- The course steers you toward government-provided data sources as the default.

### 2. Repositories, GitHub and forking

- **Repository ("repo")**: a place on the internet where code and files are stored. Think of it as a Google Drive or Dropbox folder, but one designed for code.
  - The repo on the GitHub website is the **master copy**. It is stored on Microsoft's servers, not on your computer.
  - **What's on the website is what gets graded.** Work that exists only in your coding environment or on your laptop does not count.
- **HDSx workspace**: the course's template repository. It contains templates for all the assignments and is your main way of submitting work.
- **Fork**: your own copy of someone else's repository, like a fork branching off a main road.
  - Click **Fork** at the top of the course repo, keep the default name (HDSx workspace), make sure the owner shown is **your username**, leave everything else at the defaults, and click **Create fork**.
  - You can't have two repos with the same name, so you can only fork a given repo once under that name.
  - When you work, make sure the repo you are in shows **your** username, not the instructor's account.
- **README file** (`README.md`): GitHub automatically displays any file named README as formatted text below the file list. It documents the project.
  - Write as much documentation as you need, even notes on which buttons to click. The notes then travel with the project, so you'll find them on a new laptop or months later.
  - AI tools such as ChatGPT or Claude can draft documentation from a public repo, **but only if you actually read the output.** AI summaries can be wrong. The instructor has seen them get due dates wrong, so follow the syllabus, not a summary.
- **Beyond this course**: you can create a private repo for each of your courses to back up your work. Word docs, PDFs and slides can all be tracked, though the website won't preview them.

### 3. Git, version control and the "two saves"

- **Git**: the version control system used in the course. It records **checkpoints** of your files, like the "restore previous version" feature in Google Docs or Dropbox.
  - Google Drive and Dropbox checkpoint automatically every so often. **Git checkpoints are completely manual.**
- **Commit**: the technical term for a checkpoint.
- **Saving (Ctrl/Cmd+S) ≠ committing ≠ pushing.** You effectively have to save twice:
  1. Save the file as usual.
  2. **Stage** the file: click the **+** next to it in the Source Control panel. The **−** unstages a file you added by accident.
  3. Type a **commit message** and click **Commit**.
  4. **Push**: open the "…" (three-dot) menu and choose **Push** to send your commits to GitHub.
  5. Refresh the GitHub page. The files should appear with a recent timestamp, such as "a minute ago". If it still says "5 minutes ago" after you just pushed, check that your work actually went through.
- **Source Control panel**: the icon on the left that looks like a graph with circles. It lists the files that have changed since the last commit.
  - Clicking a file shows a **diff**: added lines in green, removed lines in red.
  - Right-click → **Discard changes** reverts a file to its last committed state. This is useful if someone makes unwanted changes to your file.
  - You can choose which files to stage. Scratch or test files can be left uncommitted.
- **Commit messages**: describe what you did, e.g. "quarto render practice report to HTML". They make up the project history shown at the bottom of the panel. Messages like "commit" or "snapshot 1" are useless when you are trying to find something later.
- **Commit often.** Smaller commits give smaller diffs, which are easier to review and easier to roll back.
- **Warning: never put a password or key in a repo.** Repos are public by default. Deleting the password later doesn't remove it from the **history**, and this is one of the ways passwords and keys get leaked. If it happens, tell the teaching team, because there are ways to remove it from history.

### 4. Why put each sentence on its own line

- In source (code) view, every line has a **line number**, so you can say "look at line 15" and both people see the same thing.
- A 500-word paragraph on one line is still just "line 15". That makes the text hard to point to, and in a diff the whole paragraph shows up as one giant red or green block.
- Common practice is to start a new line after each sentence or at about 80 characters.
  - In Markdown, a single line break does not create visual space in the rendered output. You need a blank line to start a new paragraph.
- This matters more with AI tools, which often make massive changes that nobody reviews. Small, line-by-line diffs are what make reviewing possible.
- Word wrap can be turned off in the editor so that long lines visibly run off the screen.

### 5. Markdown and Quarto documents

- **Markdown** (`.md`): plain text with light formatting symbols.
  - Lines beginning with `#` become headings.
  - `**word**` renders as **bold**.
  - To preview it: command palette → **Markdown: Open Preview**.
- **Quarto** (`.qmd`, "Quarto Markdown"): a technical writing tool that interweaves prose, code and the output of that code in one document. It can build whole websites; the instructor's website is a Quarto site.
- **YAML header**: the settings block at the top of the file.
  - The practice report sets `title` ("My First Report"), `author` (change this to your name), and `format`.
  - `format` can be `html`, `pdf` or Word. More than one format can be listed.
- **Code chunk**: three backticks followed by `{r}`, then the code, then three closing backticks. Everything inside runs as R code.
  - The backtick key is to the left of `1` on a US keyboard.
  - Chunk options let you show or hide the code and/or its output.
  - VS Code shades chunks with a different background colour. If a large area is oddly shaded, you've probably missed a backtick.
- **Rendering**: turning the source document into the final output, like exporting a video from its timeline. The rendered file includes each code chunk's output.
- **HTML vs PDF**:
  - HTML opens in a browser and can hold interactive figures. It is common among data scientists, and GitHub can host it for free.
  - PDF has fixed pages, so it is easy to print and easy for anyone to open.
  - A PDF is made via an intermediate `.tex` file.
  - One source document can produce every format, which is the main benefit of working in source form.
- **`embed-resources: true`**: makes the HTML **self-contained**. Figures (e.g. a PNG) are encoded directly inside the file, so you can share a single file.
  - The trade-off is file size. The practice report was about 1.2 MB.
  - Assignment 2's template does not embed resources, so rendering it creates a separate folder of figures, and you will need to commit those files too.
- **Rendering does not update automatically.** After you edit the `.qmd`, you must re-render. Re-rendering overwrites the existing HTML.

### 6. The practice report's R code

- The report reads `data/patients.csv` into a variable called `patients`.
  - Because the Codespace starts in the project folder, the relative path is just `data/patients.csv`. There is no Desktop or Downloads folder to hunt through.
- `head()`: shows the first six rows of a dataset.
- `hist()`: draws a histogram.
- `summary()`: gives summary statistics for every column of a dataset.
- **Code runs top to bottom.** Running `summary(patients)` in a freshly started R session gives an error that the object `patients` is not found. The line that reads the data hasn't been run yet.
  - The fix is to run the cells in order. **Run All Cells** in the command palette runs the whole document from top to bottom.

### 7. Working in VS Code / GitHub Codespaces

- **GitHub Codespaces**: a cloud computer with R, Python and Quarto preinstalled, opened from your fork via **Code → Codespaces → Create codespace on main**.
  - The first setup took about seven minutes.
  - The GitHub Student Developer Pack (from week zero) helps with access.
- **Explorer (file panel)**: on the left. It shows the same files as the GitHub repo view.
- **Command palette**: Ctrl+Shift+P (Windows) or Cmd+Shift+P (Mac). You can also type `>` in the top search box. Type to filter commands, e.g. "Quarto" → **Quarto: Render Document**.
- **Restricted Mode**: if you see it, click **Manage → Trust Folder**. This restores syntax highlighting and other features.
- **Running code interactively**:
  - Click **Run Cell** above a chunk, or select code and press Cmd/Ctrl+Enter or Shift+Enter.
  - The output appears in the console at the bottom.
  - Figures may not display in the browser-based environment. Render the document to see them.
- **Two different consoles**, which is easy to confuse:
  - **Terminal**: the prompt shows your username and folder. You type commands to the (remote) computer itself.
  - **R console**: the prompt is a simple `>`. You type R code.
  - R code pasted into the terminal won't work, and the reverse is also true.
- **Restarting R cleanly**: click the **trash-can** icon to kill all terminals, then run your code again from the top. The first R code you run starts a fresh R session.
  - This matters because testing code out of order can leave things in a state you don't understand, such as accidentally setting `patients` to the number 3.
  - When asking for help, say that you restarted and reran everything, and share the current error message.
- **Shut down when done**: close the Codespace tab. It also shuts itself down after a few minutes of inactivity. A stopped server needs to boot up again next time.

## Questions

- **Q:** For saving the practice report, do we make a copy of it in the assignments folder, or edit this one?
  **A:** Just edit the existing practice report. Later assignments will be done in their own folders.
- **Q:** Where is the render button? Is it safe to press it?
  **A:** There isn't a render button in this setup. Render through the command palette (Ctrl/Cmd+Shift+P → **Quarto: Render Document**) and choose the format.
- **Q:** (Troubleshooting) After rendering, the HTML report didn't open. The pop-up was blocked, and double-clicking or VS Code's built-in "simple browser" didn't work.
  **A:** Opening a website inside a browser-based editor doesn't work well here. Instead, right-click the rendered `.html` file in the file panel, choose **Download**, and open it from your Downloads folder. The textbook has a video walkthrough of this.
- **Q:** If we edit the source file after rendering, does the rendered output update automatically?
  **A:** No. You have to re-render the `.qmd`. Re-rendering overwrites the existing HTML file.

## Assignments

- [ ] **Assignment 1 (practice report)**, due this week (see the syllabus/Canvas for the exact date):
  - [ ] Fork the HDSx workspace repo into your own account and open it in GitHub Codespaces.
  - [ ] Change `author` in the practice report to your real name, render it to HTML, then stage, commit and push the HTML.
  - [ ] Add a **My Notes** section with what you learned in class, and add an R chunk with a small calculation (e.g. `3 + 3`, or `summary(patients)`).
  - [ ] Re-render. This time stage **both** the `.qmd` and the updated `.html`, then commit and push.
  - [ ] Refresh GitHub to confirm the files have a recent timestamp.
  - [ ] Submit the URL of your fork.
- [ ] Close your Codespace tab when you finish working.

---

- prompt: prompt-notes.md @ b25c25f
- prompt-hash: 368fbd6dc3ac
- model: claude-opus-5-5 (requested: opus)
- backend: claude
- inputs: transcript-plaud.md
- generated: 2026-09-24
