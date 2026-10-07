Date Time: 2026-10-06 11:00:47

Location: [Insert Location]

Instructor: Daniel Chen

## Summary

In these lectures, Daniel Chen provides a comprehensive guide to version control with Git and GitHub, focusing on its application for collaborative data analysis projects in R. He begins by explaining the fundamental problem Git solves: managing file versions and collaborative edits without the chaos of manual naming conventions. The core Git workflow is introduced, consisting of adding files to a staging area, creating commits as project snapshots, and synchronizing with a remote GitHub repository. Chen emphasizes best practices such as making frequent, small, and well-documented commits, which aids in code review, debugging, and historical tracking.

A significant portion of the lectures is dedicated to collaborative workflows essential for group projects. This includes setting up a shared repository from a project template (not a fork), managing repository cleanliness with a `.gitignore` file to exclude temporary or generated files (like PDFs and HTMLs), and organizing projects with structured folders (e.g., `data`, `output`). The concept of "branching" is introduced as a critical tool for parallel development, allowing team members to work on separate features (e.g., data cleaning, visualization) in isolated "universes" without disrupting the stable main branch. The workflow of creating a branch, making commits, publishing it, and then creating a pull request (PR) for review and merging is demonstrated in detail.

The lectures also integrate the use of modern AI coding assistants (like Copilot). Chen explains how these tools can summarize repository changes, help write commit messages, and assist in code review, but stresses the importance of human oversight and critical review, especially when results matter. Finally, practical guidance is given for setting up group projects on Canvas and GitHub, including forming groups, designating a leader to create the repository from a template, adding all members and instructors as collaborators, and using GitHub Codespaces as a shared development environment. Throughout, Chen demonstrates R code for data summarization using `dplyr` functions like `group_by`, `summarize`, and the important practice of ungrouping data to prevent unintended calculations.

## Knowledge Points

### 1. Introduction to Version Control with Git

*   **The Problem Git Solves**: Git is a version control system that tracks file changes over time, eliminating the confusion of manual versioning (e.g., `final_v2.doc`) and making collaboration manageable. It creates a complete history of a project, allowing users to revert to previous versions.
*   **Core Concepts**: A `commit` is an explicit snapshot of the entire project at a specific point in time. Simply saving a file does not record it in the version history; it must be committed.
*   **The Git Workflow (Add, Commit, Push/Sync)**:
    1.  **Add (Stage)**: Select which file changes to include in the next snapshot. This is done by adding files to the "staging area."
    2.  **Commit**: Create the snapshot with a descriptive message explaining the changes.
    3.  **Push/Sync**: Upload the local commits to the remote repository on GitHub, making them visible and accessible to others.
*   **Push/Pull for Collaboration**: When working in a team, members `push` their changes to the shared repository and `pull` changes made by others to keep their local version up-to-date.
*   **Using Git for Coursework**: Students are encouraged to use private GitHub repositories for all courses as a powerful backup and project history tool. GitHub is ideal for text files and documents but has size limits (around 2GB) that make it unsuitable for very large media files.

### 2. Data Analysis and Code Management in R

*   **Data Summarization**:
    *   The `summarize()` function in R is used to compute summary statistics (e.g., count, mean, median) from a dataset, returning a new data frame.
    *   The `group_by()` function is used with `summarize()` to calculate these statistics for different subgroups within the data.
*   **Ungrouping Data**: After a grouped operation, the data frame remains grouped. It is a critical best practice to `ungroup()` the data (e.g., using `ungroup()` or `.groups = "drop"` in `summarize()`) to prevent subsequent calculations from being unintentionally grouped.
*   **Code Reading and Debugging**: A suggested method for reading chained R code is to first identify the functions being used (`filter`, `group_by`, etc.) and then examine the arguments to understand their specific actions. Version control diffs are a primary tool for debugging by showing the exact changes between a working and a broken state.

### 3. Repository Management and Best Practices

*   **The `.gitignore` File**:
    *   This special file, located in the project's root directory, tells Git which files and folders to ignore (e.g., temporary or generated files like PDFs, HTMLs, and `.qordo` folders).
    *   Patterns with wildcards (e.g., `*.pdf`, `output/`) can be used to ignore entire sets of files, which simplifies the commit process by preventing regenerable files from being tracked. This helps avoid merge conflicts with binary files, which are difficult to resolve.
*   **Troubleshooting Untracked Files**: If a file's changes aren't tracked, it's typically because either the file has not been saved or it matches a pattern in the `.gitignore` file.
*   **Project Folder Structure**: A strategic folder structure (e.g., having dedicated `data` and `output` folders) makes it easier to manage files and configure `.gitignore`. By saving all generated files to an `output` folder, the entire folder can be ignored.
*   **Commit Best Practices**:
    *   Make frequent, small commits, with each commit representing a single, logical unit of work.
    *   Write clear and descriptive commit messages that explain what was done. This creates a valuable project history.

### 4. Collaborative Workflow with Branches and Pull Requests

*   **Branching**:
    *   Branching allows developers to work in parallel "universes." Each team member can work on a separate feature or task in their own branch without affecting the main (`main`) branch.
    *   This isolates work, reduces friction in collaboration, and allows for independent development until changes are ready to be integrated.
    *   To create a branch, use the UI to create a "New Branch" from the current one (e.g., `main`). Subsequent commits will occur on this new branch.
*   **Pull Requests (PRs)**:
    *   A PR is a formal request to merge changes from one branch (a feature branch) into another (usually `main`). It provides a platform for code review and discussion.
    *   **Creation**: After publishing a branch, GitHub prompts you to create a PR. Ensure the base repository and branch are correct (i.e., your team's project, not the original template).
    *   **Review**: The "Files changed" tab in a PR shows a "diff" of the changes. Team members can leave line-by-line comments to request modifications.
    *   **Updating**: To address feedback, push new commits to the same feature branch. The PR will update automatically.
    *   **Merging**: Once the PR is approved, the changes are merged into the `main` branch, making the feature part of the main project. The feature branch can then be deleted.
*   **Collaboration Etiquette**: Avoid scope collisions by not editing a teammate's section of the project within your own feature branch. Communicate changes and coordinate tasks to prevent merge conflicts.

### 5. Using AI Coding Assistants (LLMs)

*   **Integration with Git**: AI agents integrated into an IDE (like Copilot in VS Code) can interact with the codebase. They can summarize repository changes by running commands like `git status` and `git diff` and interpreting the output.
*   **Assistance in Workflow**: LLMs can help write concise commit messages (especially for large changes) and explain what happened in the code. It's good practice to signal AI-assisted commits with an emoji (e.g., 🤖 or ✨).
*   **Human Oversight**: While powerful, AI tools can provide inaccurate UI instructions or code. It is crucial for the user to review, understand, and validate all AI-generated output, especially for projects where accuracy is important.

### 6. Group Project Setup

*   **Forming Groups**: Students form groups in Canvas (ideally of four). Canvas designates a "group leader" who will be responsible for the initial repository setup.
*   **Creating the Repository**: The group leader must use the "Use this template" button on the provided project template link, not "Fork." This creates a new, clean repository for the group.
*   **Adding Collaborators**: The leader must add all group members, the instructor, and the TA as collaborators via the repository's "Settings" page. Collaborators must accept the email invitation to gain edit access.
*   **Using Codespaces**: The entire team will work within a single shared GitHub Codespaces environment, opened from the newly created group repository. This ensures everyone is using the same setup.

## Questions

- [Insert Question/Confusion]

## Assignments

- [ ] 1. Self-form groups in Canvas for the group project. The group leader will create the shared repository.
- [ ] 2. Practice the Git workflow: complete the Git practice assignment.
- [ ] 3. Complete the group project setup: the leader creates the repository from the template, adds all collaborators, and the team opens it in Codespaces. (Due next week, on or before October 13, 2026).
- [ ] 4. Practice making frequent, small commits with clear messages. Remember to "Sync" (push) work to GitHub.
- [ ] 5. For group work, create a `.gitignore` file to ignore generated outputs like HTML and PDF files, placing them in an `output` folder.
- [ ] 6. Use Git branching for individual tasks. Break up project work (e.g., data cleaning, EDA, visualization) among team members, with each person working on a separate branch.
- [ ] 7. Create a feature-focused branch, make changes, and open a Pull Request (PR) to merge into `main`. Add a clear title and description.
- [ ] 8. Practice reviewing a PR, leaving comments, and updating the PR by pushing new commits to the same branch.
- [ ] 9. Use AI coding agents to help summarize changes and write commit messages, but always review the output for accuracy.
- [ ] 10. Be mindful of ungrouping data in R after using `group_by` to avoid unexpected behavior in later calculations.
