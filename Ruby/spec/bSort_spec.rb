#require 'simplecov'
#SimpleCov.start

require_relative '../main/bSort.rb'

RSpec.describe 'bSort.rb' do
  describe '#test_sort' do
    it 'No errors' do
       expect { bubble_sort([1, 2, 3]) }.not_to raise_error
    
    end
	end
end
