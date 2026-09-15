library(tidyverse)  # AI-EDIT(2026-06-23): tidyverse-default — consolidated core library() calls into library(tidyverse)
candidate_paths <- c(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"
)
candidate_paths
nhanes_path <- candidate_paths[file.exists(candidate_paths)][1]
if (is.na(nhanes_path)) {
  stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
}
nhanes_spine <- read_csv(nhanes_path, show_col_types = FALSE)
library(tidyverse)
library(tidytidy)
candidate_paths <- c(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"
)
nhanes_path <- "examples/nhanes-equity/data/nhanes_equity_v6.csv"
nhanes_spine <- read_csv(nhanes_path, show_col_types = FALSE)
nhanes_path
read_csv("examples/nhanes-equity/data/nhanes_equity_v6.csv", show_col_types = FALSE)
nhanes_spine = read_csv(nhanes_path, show_col_types = FALSE)
nhanes_spine
glimpse(nhanes_spine)
candidate_paths <- c(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  "../../examples/nhanes-equity/data/nhanes_equity_v6.csv"
)
candidate_paths
candidate_paths[1]
candidate_paths[2]
candidate_paths[3]
file.exists(candidate_paths)
candidate_paths[file.exists(candidate_paths)]
candidate_paths[file.exists(candidate_paths)][1]
read_csv(candidate_paths[file.exists(candidate_paths)][1])
nhanes_path <- candidate_paths[file.exists(candidate_paths)][1]
nhanes_path
stop("i have stopped")
stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
is.na(nhanes_path)
if (is.na(nhanes_path)) {
  stop("Could not find examples/nhanes-equity/data/nhanes_equity_v6.csv")
}
if (FALSE) {stop("hello")}
if (TURE) {stop("hello")}
summary(nhanes_spine)
