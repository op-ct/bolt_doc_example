# Untagged description block
#
# This sentence is on a new line, demonstrating that a lone untagged block of
# text is not a great choice for either Puppet Strings or `bolt plan show`.
#
# 1. `bolt plan show` weirdly chops off the description's third word ("block"),
#    resulting in `Untagged description...`
#
# 2. The `REFERENCE.md` includes most of the first few lines, rendered as if
#    they had no line breaks.
#
# @param targets The targets to run on.
#
plan bolt_doc_example::c::untagged_only(
  TargetSpec $targets = "localhost"
) {
  return(false)
}
