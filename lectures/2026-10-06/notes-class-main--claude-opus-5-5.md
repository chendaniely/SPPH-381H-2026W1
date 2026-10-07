# Version Control with Git: Commits, .gitignore, Branches and Pull Requests

Instructor: Daniel Chen

## Summary

This session revisited Git, the version control system students had already been using to save and submit homework, and explained what is happening behind the buttons in GitHub Codespaces. It opened with the familiar "final_v2_final_DC.docx" problem and showed how Git replaces file renaming with **commits**, which are snapshots you choose to take. The instructor separated saving a file, staging it, committing it and syncing it. Only the last two put your work on GitHub, and grading is based on what is on GitHub before the due date. Using a Week 4 example Quarto file built around the NHANES equity data, he showed how small commits produce small **diffs** that you can review, how to roll back with *Discard Changes*, and how to read a `filter()` → `group_by()` → `summarize()` pipeline. That pipeline came with a warning about leftover groupings.

The second part covered keeping a repository clean with a `.gitignore` file. Generated outputs such as PDFs, HTML files and figures can usually be ignored because the code can always regenerate them, and ignoring them avoids conflicts between teammates. This led into collaboration. **Branches** let each person work in a "parallel universe" without breaking anyone else's code. **Pull requests** are the place where a human reviews changes, especially AI-generated ones, before they are merged into `main`, the branch that gets graded. The instructor also showed how the Copilot agent can summarise uncommitted changes by running Git commands, and he flagged which commands to be wary of approving.

The class ended with group formation for the course project. Students joined groups on Canvas. One "group leader" per group created the team repository with **Use this template**, not Fork, and added teammates, the instructor and the TA as collaborators. Every member then had to be able to open the shared repository as a Codespace. From now on, students work in a shared repository rather than only on their individual forks.

## Knowledge Points

### 1. Why version control exists

- **The "final document" problem**: without version control, people track versions by renaming files, for example `final`, `final2`, `final_18_DC`, or by emailing zip files around. This gets worse with multiple files and multiple collaborators.
- **Version control system**: software that records the history of a project so you can see who changed what, when, and go back to earlier versions.
- **Git**: the version control system used in this course and, by the instructor's estimate, in about 98% of workplaces that version-control their code. It was designed for code, but it works for any files.
  - It works best with **plain-text files**, such as `.qmd` Quarto documents, because Git can show line-by-line differences.
  - Word documents partly work, because they are really a special zip file underneath.
  - PDFs and images do not give useful differences.
- **GitHub**: a website that stores Git repositories online. Students already have accounts from earlier homework.
  - **Repository (repo)**: a project folder tracked by Git.
  - You can create **private** repositories, visible only to people you choose, for free. Historically Bitbucket was used for free private repos and GitHub for public ones. GitHub now allows unlimited private repos too.
- **Using it beyond this course**: you can keep one private repo per UBC course as a backup of all your coursework.
  - The instructor believes the cap is roughly 2 GB per repository, so don't store movies or very large files there.
  - Taking notes in plain-text `.qmd` files works well with this approach.

### 2. The commit cycle: save ≠ commit ≠ on GitHub

- **Saving (Ctrl/Cmd + S)**: writes the file to disk only. It does **not** create a snapshot, and it does **not** put anything on GitHub.
  - A common homework problem: "my files don't show up at the submitted URL" because they were saved but not committed and synced.
- **Commit**: a snapshot of the whole project that you deliberately tell Git to make. Each commit has a message describing what changed.
- **Stage / add**: clicking the **+** button in the Source Control panel runs Git's `add` command. It moves the file into the **staging area** (shown as *Staged Changes*), which is the set of files that will go into the next commit.
  - The big **+** stages everything. The individual **+** buttons stage single files.
  - You can **unstage** a file you added by mistake.
- **Commit message**: typed in the box above the Commit button. Writing one is required. Make it meaningful, for example "summarize missing values", not "blah" or "making changes".
- **Push / pull / sync**:
  - **Push** sends your commits from your computer to GitHub.
  - **Pull** brings commits from GitHub down to your computer.
  - The **Sync Changes** button does both. When you work alone, it is effectively a push.
  - In GitHub Codespaces this is partly automatic because your work environment already lives on GitHub. On a laptop for another course, you would click push and pull yourself.
  - Outside this class, avoid editing files directly on the GitHub website and also locally. Things can get out of sync and you'll have to pull.
- **Status letters in the Source Control panel**:
  - **M (modified)**: a file Git was already tracking has changed.
  - **Untracked**: a brand-new file Git has never recorded, for example a freshly rendered PDF.
- **Branch indicator in the status bar**: the bottom-left of the editor shows the current branch, such as `main`, plus counts of commits not yet pushed. If `main` and `origin/main` point to different commits in the history view, your local work is not yet on GitHub.
  - **origin**: the copy of the repository on GitHub.
- **How grading works**: graders look at the commits on GitHub and use the version from just before the due date. To check your work is there, open your repository on GitHub, refresh the page, and confirm your changes appear.
  - ⚠️ If it isn't committed **and** synced, it is as if you never did it.

### 3. Good commit habits, diffs and going back in time

- **Commit small, commit often**: whenever you finish a bite-sized task and the code works, commit it. For example, once a dataset is cleaned to a reasonable point, commit.
  - This isn't graded, but it forces you to break problems into small pieces.
  - There is almost nothing wrong with "too many" commits.
  - Doing the whole analysis in one giant commit makes bugs very hard to track down.
- **Diff (difference)**: the view of exactly what changed since the last commit. You open it by clicking a changed file in Source Control.
  - **Green** lines were added. **Red** lines were removed.
  - Changing a line appears as deleting the old line and adding a new one.
  - Small diffs are much easier to review, whether the code was written by you or by an AI.
- **Discard Changes**: right-click a changed file to reset it to the last commit. This is the quickest way back to a working state when new code, typed by you or by an LLM, breaks something.
  - In the demo, changing a single `1` to a `2` in the path-picking code broke data loading. The diff made the culprit obvious.
  - Possible causes of a break like this: an accidental keystroke, or an AI assuming the wrong working directory.
- **⚠️ "It still runs" can be misleading**: after the breaking change, the code appeared fine until R was restarted, because the dataset was still loaded in memory. Restart R to confirm code really works from scratch.
- **History**: because every commit is a full snapshot, you can click an old commit, for example "changes week 3", and view files exactly as they were. This lets you recover deleted code or see how a file evolved.
  - Git moves the "final_v3" naming into commit messages, so there is only ever one copy of each file.
- **Debugging with history**: look at recent commits' diffs and ask whether a change touches what's broken. If not, step back to earlier commits until you find where the bug came in.

### 4. Reading the Week 4 example code

- **Spotting code that won't run**: the example code was pasted into a `.qmd` file **outside a code chunk**. It was missing the opening and closing triple backticks and the `{r}` engine label, so Quarto treated it as text.
  - Visual cue: real code chunks have a shaded background. When the colour disappears, something is wrong.
  - Copilot, which can see the open file, correctly diagnosed the problem when asked "why is it not working?"
- **Candidate paths pattern**: the code built a **character vector** of two possible file locations with `c()`. It then kept only the one where `file.exists()` returned `TRUE`, and pulled out that single path.
  - One path was relative to the project root (`examples/nhanes-equity/...`). The other started with `../`, which assumes you are running from inside a homework subfolder.
  - **`..`** means "one folder up". From the project root, going up one folder leaves the project entirely, so that candidate doesn't exist there.
  - Always know where the start of your project is, and where the document thinks it is.
- **Defensive checks written by LLMs**: AI assistants often add checks like this, for example "could not find file X", so that an error points to its exact cause instead of a vague failure inside `read_csv()`.
  - Without the check, a failure could mean the file is missing, isn't really a CSV, or got incompatible arguments.
  - You don't have to write these yourself, but they make debugging much faster, so consider prompting for them.
- **Summary statistic**: something that takes many numbers and returns one, such as a count, mean or median.
- **`summarize()`**: computes summary statistics and returns them as a data frame. The first version gave one row: number of rows and number of missing values for two columns, using the counting-missing-values trick from the previous week.
- **`filter()`**: keeps only the rows that meet conditions. Here it kept rows with non-missing BMI, non-missing income group, and age greater than 20 and less than 80.
- **`group_by()`**: tells the next calculation to happen separately for each value of a variable. Grouping by income group turned one row of results into **three rows**, one per income group, with n and mean BMI.
- **How to read a pipeline**: start with the data frame. Then read the verbs in order: `filter` (fewer rows), `group_by` (a calculation is coming, per group), `summarize` (what's calculated). Then read each verb's arguments.
- **`.groups = "drop"` and `ungroup()`**: both remove the grouping after a grouped calculation.
  - ⚠️ **Common mistake**: if a data frame stays grouped, later calculations, even fifty lines further down, are silently done per group when you wanted one overall number.
  - A grouped tibble prints a `Groups:` line, for example showing the income-group variable with 3 groups. If you don't need grouping, that line should not be there.
  - Whenever you see `group_by()`, expect a matching ungroup step. Newer versions of `summarize()` may drop groups for you, but since AI is writing much of your code, **it's on you to check**.

### 5. Keeping the repository clean with `.gitignore`

- **`.gitignore`**: a special file, usually at the top (root) of the project. It lists files or **patterns** that Git should not track.
  - It starts with a dot, so it is a **hidden file**. Normal file browsers hide it, but coding editors show it.
- **What to ignore**: anything your code can regenerate, such as rendered HTML or PDF files, figures and derived datasets. The code is the important thing.
  - In this class you may want to keep the HTML or PDF output. For the group project, while you are actively working on the report, generated outputs are good candidates to ignore.
  - Very large files, such as a 1 GB lecture video, should be ignored and stored elsewhere, for example in Dropbox.
  - If you see files in the staging view and don't know what they are, that's a strong sign they should be ignored.
- **Conflict**: what happens when two people edit the same file at the same time. Conflicts in text files can be fixed by editing. Conflicts in a PDF can't really be fixed; you just delete and regenerate it. Ignoring outputs avoids this.
- **Why bother**: otherwise you must remember every time not to stage those files. The convenient "stage all" button will happily add them. Aim for a repo where "add everything" is always safe.
- **Pattern syntax shown in class**:
  - `file*.pdf`: `*` matches any characters, so `file1.pdf`, `file2.pdf` and so on are ignored. After saving `.gitignore`, those files disappeared from Source Control.
  - ⚠️ Loose patterns can ignore **too much**. A pattern matching "pdf" anywhere in a name would catch unrelated files.
  - `!file1.pdf`: a leading `!` ("bang") **un-ignores** a specific file that a broader pattern caught.
  - You can also **force-add** an ignored file with Git, though the instructor wasn't sure there's a web-interface button for it.
- **Paths in `.gitignore` are relative** to where the `.gitignore` file sits, usually the project root. This is the same idea as relative paths when loading data.
  - Whole folders can be ignored.
  - `**` matches any subfolder depth. That's why the template ignores `.quarto` both at the root and in nested folders.
- **Project structure tip**: the template has fixed folders such as `data` and an output folder. If generated datasets and figures go into a dedicated output folder, you can ignore the whole folder instead of individual files.
  - This also guards against stale figures. If an output file is missing, it's a hint to re-run the code that makes it.
- **Troubleshooting "my file doesn't show up in Git"**:
  1. Did you actually save it?
  2. Does a pattern in `.gitignore` match it?
  3. If it's committed, did you sync it to GitHub?
- Commit `.gitignore` changes with clear messages, for example "ignore file*.pdf". The history then explains why something isn't showing up.

### 6. Branches

- **Branch**: a separate line of commits, like a parallel universe of the project. Changes on your branch don't affect anyone else's work until you choose to combine them.
  - **`main`**: the default branch. Every commit so far "carried" `main` forward.
  - On a new branch, each commit carries **that** branch forward instead.
  - Viewed alone, a branch is still just a straight sequence of commits, and you still add, commit and sync exactly as before.
- **Why branches matter in groups**: tasks such as data cleaning and exploratory analysis, figures, and report text can proceed independently. People only coordinate at agreed times.
  - Some tasks block others. Nobody can make figures until the data loads, so get the shared starting point done early.
  - ⚠️ Keep **`main` always in a working state**. Half-finished work belongs on a branch so it doesn't break teammates' code.
- **Creating a branch in Codespaces / VS Code**: click the branch name (`main`) in the bottom status bar, choose **Create new branch**, and type a name, for example `my_first_branch`.
- **Publishing a branch**: the first sync shows **Publish Branch** and asks where to publish.
  - Choose **origin**, the copy with *your* username or your team's name.
  - ⚠️ **Don't** pick the one belonging to the teaching team; you don't have permission to change it.
- **Switching branches**: click the branch name and pick another. The files in your editor actually change to that branch's version. Code added on a branch was absent on `main` and reappeared when switching back.
- **Viewing branches on GitHub**: use the branch dropdown on the repository page. Teammates can view, or even check out and run, your in-progress branch without it touching `main`.
- **Vocabulary helps with AI**: knowing terms like *branch*, *commit*, *diff* and *merge* lets you ask an LLM precise questions, for example "my teammate is on branch X, I'm on branch Y, how do we combine them?". Not on any test, but useful for debugging.

### 7. Pull requests: reviewing and merging

- **Pull request (PR)**: GitHub's interface for proposing that one branch be **merged** (combined) into another, usually into `main`. Bitbucket and GitLab call it a *merge request*.
  - It is the final point where a **human reviews** the changes. That matters especially in this course, where much of the code is AI-generated or AI-assisted.
- **Opening a PR**:
  - Click **Compare & pull request**, the green banner that appears after pushing a branch.
  - If the banner has gone, use the **Branches** page, click the **⋯** next to your branch, then **New pull request**.
  - ⚠️ On repositories **forked** from the course, check the **base repository**. Switch it to the one with your name or your team's. Otherwise you'd be requesting changes to the original course template. Using **Use this template** for the group project avoids this step.
- **Self-review before clicking Create**:
  - Scroll down to the diff of every file in the branch.
  - Remove files that don't belong, and add them to `.gitignore`.
  - Discard accidental edits.
  - Check that files you expected are actually there. If something's missing, was it unsaved, ignored, or not synced?
- **Title and description**: give the PR a clear title and describe what changed. Simple bullet points like "cleaning dataset, dropping these rows" are fine for this class.
- **One task per branch**: a branch should be one feature. At the very least, the code should run top to bottom when it's ready to share, even if the task isn't fully finished.
  - Data cleaning "never ends", but it must run.
  - ⚠️ Don't fix a teammate's typo in their section from your branch. Tell them instead, to avoid conflicts.
- **Reviewing**: the PR has a **Conversation** tab and a **Files changed** tab.
  - In *Files changed*, hover over a line to leave a comment or start a review. Comments also appear in the conversation thread.
- **Updating a PR**: you don't need a new branch or a new PR. Make the change on the same branch, then add, commit and sync, and the PR updates automatically.
  - Comments on code that has since changed are marked *outdated* and collapse.
  - In the demo, a reviewer asked for the username in backticks, which is good practice for anything that must be copied exactly. A second commit was pushed and the PR went from 1 to 2 commits.
- **Merging**: click **Merge pull request**, then **Confirm merge**. The changes now appear on `main`.
  - You may delete the branch afterwards. In this class it's fine to leave it.
  - The PRs list is under the **Pull requests** tab of the repo.

### 8. Using AI agents with Git

- **Ask the agent "what did I just change?"**: the Copilot agent asks permission to run Git commands. For example, it runs `git status` (short form) to see which files changed and `git diff` to see the changes. It then summarises them.
  - Models **don't see anything until it's printed to the screen**, which is why they run these commands.
  - ⚠️ Be wary of approving commands containing **`restore`** or **`reset`**. These may delete or discard your work.
- **A fresh conversation for review**: after the AI writes code, start a new conversation and ask what just changed. This works best with small commits and focused branches.
  - If you understand roughly what happened and the AI's summary agrees, that is a useful check.
- ⚠️ **Walls of AI text get skimmed**: skimming is acceptable for throwaway experiments. It is not acceptable for a real analysis on a real dataset that will inform someone.
- **Commit messages**: the AI can help condense many changes into one message.
  - The instructor asks agents to start AI-written commit messages with a 🤖 or ✨ emoji. This marks commits mostly handled by the AI, which helps when hunting for where a problem came from.
- **Hallucinated buttons**: when asking an AI which buttons to click, don't be surprised if it describes buttons that don't exist. Follow up and say so.
- **Agent vs. web chat**: unlike ChatGPT or Claude in a browser, a coding agent can run commands in your actual codebase. Its answers can therefore be specific to your project.

### 9. Group project setup

- **Forming groups**: in Canvas, go to **People** → **Group Project** tab and drag your name into a group.
  - Groups are four people, with possibly two groups of three.
  - Anyone unassigned, including absent students, is placed in a group by the instructor.
- **Group leader**: Canvas lists one member per group as leader. Only this person creates the repository. Everyone else works on that one copy.
  - ⚠️ Others could also create a copy, but must not submit it or confuse the group about which copy is real.
- **Creating the team repo (leader only)**:
  1. Open the project template repository linked on Canvas.
  2. Click **Use this template** → *Create a new repository*. ⚠️ **Do not click Fork**, which is what you did for individual homework.
  3. You don't need to include all branches.
  4. Owner: the leader's GitHub username.
  5. Name: ideally include the course name. You can rename it later after the dataset, the analysis or your team name.
  6. Description can be blank. Visibility can be public or private.
  7. Click **Create repository**.
- **Adding people**: go to **Settings** → **Collaborators** → **Add people** and add every teammate, the instructor and the TA. This is required if the repo is private, so they can grade it.
  - Teammates receive an email invitation and **must accept it**. You can't make changes otherwise.
  - Each repo should end up listing five or six people.
- **Final check**: every member should be able to click **Code** on the team repo and open it as a new Codespace. From then on, add, commit and sync happen in the shared, collaborative repository.
- **Office hours**: after class, take the elevator to the third floor; the instructor sits right in front of the elevator.

## Questions

- **Q:** A student who would miss next week's class noticed the assignment showed no due date on Canvas and asked whether it was okay to submit later.
  **A:** The missing date was because the assignment had just been released, and the instructor said he'd fix it. Follow the due date given in the assignment itself. The Canvas due date is always the **Monday before class at 4:00 pm**.

## Assignments

- [ ] Git practice assignment: due next week, Monday before class at 4:00 pm.
- [ ] Group project setup: due next week, Monday before class at 4:00 pm.
  - Join a group on Canvas.
  - The group leader creates the team repo with **Use this template**.
  - Add teammates, the instructor and the TA as collaborators. Everyone accepts the invitation.
  - Everyone confirms they can open the repo in a Codespace.
- [ ] In-class exercise: on a new branch, add your name and GitHub username to the top line of the `README` file. Commit, publish the branch, open a pull request into your own repo's `main`, and merge it.

---

- prompt: prompt-notes.md @ b25c25f
- prompt-hash: 368fbd6dc3ac
- model: claude-opus-5-5 (requested: opus)
- backend: claude
- inputs: transcript-plaud.md
- generated: 2026-10-06
