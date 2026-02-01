# Dummy Installer for Automated Workflow

This project automates the process of building a Windows installer app. Follow the steps below to use the scripts provided.
This is a dummy repo for windows installer build via GitHub Actions.

## Workflow
1. Make a hotfix commit.
2. Go to GitHub → Release.
3. Click Edit release.
4. Change the “Target” branch (e.g., main) or reselect the same tag.
5. Save release.

GitHub will trigger the workflow to rebuild, replacing the old installer with the new one.

