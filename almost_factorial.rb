require_relative('factorial_non_recursive')

module AlmostFactorial
  def almost_factorial(f)
    lambda do |n|
      n.zero? ? 1 : n * f.call(n - 1)
    end
  end
  module_function(:almost_factorial)

  factorial = almost_factorial(FactorialNonRecursive.method(:factorial))
  define_method(:factorial, factorial)
  module_function(:factorial)
end
