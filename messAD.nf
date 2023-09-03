params.str = 'Hello world!'

process splitLetters {
  output:
    path 'chunk_*'

  """
  printf '${params.str}' | split -b 6 - chunk_
  """
}

process convertToUpper {
  input:
    path x
  output:
    stdout

  """
  cat $x | tr '[a-z]' '[A-Z]'
  """
}
// flatten = operator to manipulate channels
// view ?
// "." is a delimiter when used in parameters, excape it using '\'
workflow {
  splitLetters | flatten | convertToUpper | view { it.trim() }
}