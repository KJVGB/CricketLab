
# Git & renv workflow — MANUAL cheat sheet
# Nothing runs automatically; everything is wrapped in if (FALSE).

if (FALSE) {
  # --- First publish to GitHub (run ONCE) ---
  # Save dependency state
  renv::snapshot(prompt = FALSE)
  # Stage & commit everything
  gert::git_add(".")
  gert::git_commit("Initial publish: code + renv.lock")
  # Create remote & push
  usethis::use_github(private = TRUE)

  # --- Daily updates (after repo exists) ---
  # If you installed/removed packages:
  renv::snapshot(prompt = FALSE)           # writes renv.lock
  # Stage changes (code + lockfile)
  gert::git_add(".")
  # Commit with a clear message
  gert::git_commit("Update code; snapshot deps")
  # Push to GitHub (NOT use_github after first time)
  gert::git_push()

  # --- Diagnostics helpers ---
  renv::status()            # dependency drift
  gert::git_status()        # staged/unstaged files
  gert::git_remote_list()   # "origin" after first publish
  # Rename branch to main (optional)
  # system("git branch -m master main"); gert::git_push(set_upstream = TRUE)
}

