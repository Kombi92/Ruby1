require 'simplecov'
SimpleCov.start

require_relative '../lib/qSort.rb'

RSpec.describe 'qSort.rb' do
  describe '#test_sort' do
    it 'No errors' do
       expect { quick_sort([1, 3, 2]) }.not_to raise_error
    end
	it 'returns the correct sort' do
	  expect(quick_sort([1, 3, 2])).to     match_array([1,2,3])
	  expect(quick_sort([-1, 2, -10])).to     match_array([-10,-1,2])
	  expect(quick_sort([-100, 100, 3])).to     match_array([-100,3,100])

    end
	end
end