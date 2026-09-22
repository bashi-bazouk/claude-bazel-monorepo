
## Manage a collection of interdependent projects.

The `src` directory is the root of a Bazel workspace.

Projects that are sourced from other vendors are found in `src/third_party`.

Github projects that are sourced from other vendors are Git submodules under `src/third_party`.

A Github project called `<project>`, sourced from a vendor called `<org>`, at `https://github.com/<org>/<project>`, is integrated as a Git submodule under `src/third_party/<org>/<project>`.

A developer may ask Claude to add a Github submodule by referring to its Github URI. Claude will parse the URI to get the project and vendor, and then install the project into the corresponding subroot in `src/third_party`.