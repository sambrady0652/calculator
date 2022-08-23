class CalculationRunner

  OPERATIONS = %w[+ - / * x].freeze

  def initialize(inputs:)
    @inputs = inputs
  end

  def run_calculation
    input_array.reduce(operator)
  end

  def displayed_inputs
    # sent to the frontend so users can verify what calculation was ran
    input_array.join(" #{operator.to_s} ")
  end

  def input_array
    # Get all the numbers from the input string
    chunked_inputs.map do |is_operator, sub_arr|
      sub_arr.join('').to_f unless is_operator
    end.compact
  end

  def chunked_inputs
    # group the numbers and operators from the input string
    @inputs.split('').chunk { |char| OPERATIONS.include?(char) }
  end

  def operator
    # If I were to spend more time on this, I'd like to
    # be able to run multiple operators.
    # As it stands, we just grab the first operator in the input
    _, sub_arr = chunked_inputs.find { |is_operator, _| is_operator }
    operator = sub_arr.last
    operator = '*' if operator.downcase == 'x'

    operator.to_sym
  end
end
