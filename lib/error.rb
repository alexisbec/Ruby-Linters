$errors = 0

def error
  if $errors > 0
    "#{$errors} ERRORS FOUND, NEED TO BE FIXED."
  else
    '0 ERRORS FOUND, CONGRATS.'
  end
end
