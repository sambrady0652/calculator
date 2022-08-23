require 'calculation_runner'

RSpec.describe CalculationRunner do
  let(:inputs) { '5*5' }
  let(:instance) { described_class.new(inputs: inputs) }

  describe 'run_calculation' do
    it 'returns the expected output' do
      expect(instance.run_calculation).to eq(25)
    end

    context 'when there are more than two numbers' do
      let(:inputs) { '1+2+3' }

      it 'returns the expected output' do
        expect(instance.run_calculation).to eq(6)
      end
    end

    context 'when there are multiple operators' do
      let(:inputs) { '5+5-2' }

      it 'ignores the second operator, and performs the first operator on all input numbers' do
        expect(instance.run_calculation).to eq(12)
      end
    end

    context 'when there are float inputs' do
      let(:inputs) { '10/2.5' }

      it 'returns the expected output' do
        expect(instance.run_calculation).to eq(4)
      end
    end
  end
end