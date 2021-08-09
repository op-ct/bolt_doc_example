# @summary
#   A multiple-line `@summary`,  without an untagged block
#
#   A multi-line `@summary` block works okay with `bolt plan show`, but
#   dramatically breaks the formatting of Puppet Strings' `REFERENCE.md` by
#   rendering the entire block inside the TOC link's description (complete with
#   line breaks).
#
#   1. `REFERENCE.md` includes the **entire `@summary` block** in the Plan's TOC
#     - This breaks the formatting of the TOC rather badly
#   2. `bolt plan show` displays most of the first line, except the final word
#      * It replaces the last word ("block") with "...", even though it display
#        the (much longer) single-line `@summary` from
#        **`bolt_doc_example::a::mixed_docs`** without any truncation
#
# @param targets The targets to run on.
#
plan bolt_doc_example::b::multiline_summary (
  TargetSpec $targets = "localhost"
) {
  return false
}
