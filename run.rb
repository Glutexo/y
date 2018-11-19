require_relative('factorial_non_recursive')

if $PROGRAM_NAME == __FILE__
  if ARGV.count < 1
    warn(<<~'WARNING')
      No input value given.
      Usage: ruby run.rb <number>
        <number> is to be factorized.
    WARNING
    exit(1)
  end

  input_raw = ARGV[0]

  begin
    input_int = Integer(input_raw)
  rescue ArgumentError
    warn("#{input_raw.inspect} is not a valid Integer.")
    exit(1)
  end

  result = FactorialNonRecursive.factorial(input_int)
  puts(result)
end