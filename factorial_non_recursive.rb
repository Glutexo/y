module FactorialNonRecursive
  def factorial(n)
    return 1 if n.zero?

    result = n.clone
    (n - 1).downto(1).each do |i|
      result *= i
    end

    result
  end

  module_function(:factorial)
end
