# Dummy Windows Installer (GitHub Actions CI/CD)

This repository demonstrates an automated workflow for building a **Windows installer** using **GitHub Actions** and **Inno Setup**.

It is intentionally minimal and intended for testing and learning a release-driven CI/CD flow.

---

## Release & Rebuild Workflow

The installer is built **only when a GitHub Release is published or edited**.

### Initial Release
1. Go to **GitHub → Releases → Create new release**
2. Create a tag (e.g. `v1.0.0`) targeting `main`
3. Publish the release

GitHub Actions will automatically build the installer and attach it to the release.

---

### Hotfix / Rebuild (Same Version)

If a small fix is required without changing the public version:

1. Commit the hotfix to `main`
2. Go to **GitHub → Releases**
3. Click **Edit** (or create a new release)
4. Create a new tag using the pattern:
   - `v1.0.0-build1`
   - `v1.0.0-build2`
5. Keep the **release title** as `v1.0.0`
6. Publish or update the release

The workflow will rebuild the installer and replace the existing release asset.

---

## Notes
- Tags are treated as immutable and should not be force-moved.
- Release titles represent the **public version**.
- Tag suffixes (`build1`, `build2`, etc.) represent internal rebuild iterations.

---
