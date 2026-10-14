# SPPH 381H 2026W1: class notes

`lectures/<date>/` holds one folder per class session. Notes come from the `class-notes`
skill (`make notes`, `make notes-force`, or `class_notes.py generate --only <folder>`).
Students read this repo, and they are novice coders.

## Textbook chapters (`materials.md`)

The course textbook is HDSx: published at <https://ehsanx.github.io/HDSx/>, source in
`ehsanx/HDSx` (Quarto book, one folder per week under `weeks/`). When Daniel says a
session used a week's chapters, write them to that session's `materials.md`. Get each
chapter's `.qmd` with `gh api`, in the order `_quarto.yml` lists them, plus any assignment
README the week links to. Then:

- Keep the text, tables and code. Drop HTML comments, `AI-EDIT` markers, video embeds
  and `#|` chunk options. Inline any `{{< include >}}` snippets.
- Turn each heading into a link to its section, taking the ids from the published page's
  `<section id="…">`. Pandoc keeps dots in ids, e.g. `#create-helpers.py`.
- Turn links between chapters into published `.html` URLs.
- State the source commit in the file's opening lines.

`lectures/2026-10-13/materials.md` (Week 5) is the worked example.

## Hand additions to generated notes

- The generator runs `claude -p --setting-sources ""`, so it never sees this file. It
  reads only `transcript-plaud.md`, `history.*`, `terminal.txt` / `*console*.txt` and
  `materials.md`. Screenshots and any other files in a session folder are ignored.
- Anything added to a `notes-class-*.md` file by hand is lost when that session is
  regenerated. That includes `make notes-force`, which rebuilds every session. After
  regenerating a session listed below, re-apply its additions, then run
  `class_notes.py tidy --check`.
- macOS screenshot names have a narrow no-break space (U+202F) before AM/PM, which breaks
  Markdown image links. Rename them to `screenshot-<what-it-shows>.png` first.
- Hand-added instructions are for students who have never coded. Write numbered,
  click-by-click steps. Name each button exactly as it appears on screen, say what the
  student should see after each step, and put the ⚠️ warning on the step where the
  mistake happens. Give each image alt text that describes what it shows.

## 2026-09-29 lecture

Context: Daniel worked out the Codespaces fix live, about an hour before class. It is
demoed at 00:00:07–00:07:02 and 00:15:56–00:19:30 and recapped at 00:51:18. It isn't
written down anywhere else yet, so these notes are the students' only written copy. The
details come from the workspace's `.devcontainer/devcontainer.json`
(`ehsanx/HDSx-workspace`): port 8000, labelled "Rendered reports", is started by
`postAttachCommand` running `python3 -m http.server 8000 --bind 127.0.0.1` each time
VS Code connects. The first line of `history.txt` is Daniel's note saying when to run
that command. It was not typed in class.

After regenerating, make sure `lectures/2026-09-29/notes-class-*.md` has:

1. **Knowledge Point 1: numbered steps for getting the fix**, in class order. Open the
   codespace → commit and push (⚠️ unpushed work is lost) → delete the codespace (it keeps
   the setup it was built with) → **Sync fork → Update branch** (⚠️ not **Discard
   commits**), followed by `screenshot-sync-fork.png` → **Code → Create codespace on
   main**.
2. **Knowledge Point 2: numbered steps for viewing reports**. Quarto: Preview → Ports tab
   → port 8000 row ("Rendered reports") → right-click → **Port Visibility → Public**,
   followed by `screenshot-port-8000-public.png` and a ⚠️ that Public lets anyone with
   the address see the workspace files, so it's never OK with private data → **Preview
   in Editor** → **Continue** → click the `.html` file.
3. **"If port 8000 is missing"**, right after step 2's list. New terminal (**+**), not R →
   run the `history.txt` command → it prints `Serving HTTP on 127.0.0.1 port 8000` and
   keeps running (leave it open, and open another terminal for R), followed by
   `screenshot-http-server-terminal.png` → back to the Ports steps. `Address already in
   use` means the server is already running.
4. The `python3` command stays under Code from class (it comes from `history.txt`),
   pointing back to Knowledge Point 2 and without the screenshot.
