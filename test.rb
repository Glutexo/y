require('minitest/autorun')
require_relative('factorial_non_recursive')
require_relative('factorial_recursive')

[FactorialNonRecursive, FactorialRecursive].each do |mod|
  klass = Class.new(Minitest::Test) do |klass|
    def test_zero
      assert_equal 1, mod.factorial(0)
    end

    def test_one
      assert_equal 1, mod.factorial(1)
    end

    [[2, 2], [3, 6], [4, 24], [5, 120], [20, 2432902008176640000]].each do |dataset|
      input = dataset[0]
      result = dataset[1]
      define_method("test_#{input}") do
        assert_equal result, mod.factorial(input)
      end
    end
  end

  klass.define_method(:mod) do
    mod
  end
end
