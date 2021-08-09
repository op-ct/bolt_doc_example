# @summary
#   A concise, single-line `@summary`, suitable for a list or hyperlink
#
# This is a longer, untagged block to describe the plan in more detail,
# including any important behaviors, pre-requisites, quirks, or other
# non-obvious considerations that a user should be aware of.
#
# When `puppet strings` generates a `REFERENCE.md` from this plan, it uses the
# `@summary` text in the TOC and this untagged block of text in the Plan's
# details.
#
# Ideally, `bolt plan show` would treat the plan's docs the same way:
#
#   1. `bolt plan show` would display the short `@summary`
#   2. `bolt plan show bolt_doc_example::a::mixed_docs` would include the
#       content of this untagged block
#
# However, what actually happens is that `bolt plan show
# bolt_doc_example::a::mixed_docs` only shows the short `@summary` text, and
# **all the content in this untagged block is completely lost!** :bomb:
#
# @note
#   As an alternative, I considered using multiple `@note` tags (instead of this
#   untagged text block) to document details that don't belong in a `@summary`.
#   That did't work, either:
#
#     * `puppet strings` only renders a plan's first  `@note` tag
#     * `bolt plan show <specific::plan>` ignores `@note` completely
#
# @note
#   If you `puppet strings` to render a REFERENCE.md from this plan, this second
#   `@note` will be ignored
#
# @param targets The targets to run on.
#
plan bolt_doc_example::a::mixed_docs(
  TargetSpec $targets = "localhost"
) {
  return(false)
}
