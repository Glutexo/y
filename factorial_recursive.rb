module FactorialRecursive
  def factorial(n)
    n.zero? ? 1 : n * factorial(n - 1)
  end

  module_function(:factorial)
end
