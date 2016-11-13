require 'simplecov'
SimpleCov.start

require "quicksort"
RSpec.describe 'quicksort.rb' do

  it 'tests empty array' do
    a = []
    expect(quicksort(a, 0, a.length-1)).to eq([])
  end

  it 'tests equal elements' do
    a = [ 3, 3, 3, 3, 3, 3 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ 3, 3, 3, 3, 3, 3 ])
  end

  it 'tests largest integer' do
    a = [ 20, 7, 13, 14, 10, 25, 23, 2, 8, 16, 12, 21, 6, 3 ]
    expect(quicksort(a, 0, a.length-1)).to end_with(25)
  end

  it 'tests smallest integer' do
    a = [ 20, 7, 13, 14, 10, 25, 23, 2, 8, 16, 12, 21, 6, 3 ]
    expect(quicksort(a, 0, a.length-1)).to start_with(2)
  end

  it 'tests positive integers' do
    a = [ 20, 7, 13, 14, 10, 25, 23, 2, 8, 16, 12, 21, 6, 3 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ 2, 3, 6, 7, 8, 10, 12, 13, 14, 16, 20, 21, 23, 25 ])
  end

  it 'tests negative integers' do
    a = [ -20, -7, -13, -14, -10, -25, -23, -2, -8, -16, -12, -21, -6, -3 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ -25, -23, -21, -20, -16, -14, -13, -12, -10, -8, -7, -6, -3, -2 ])
  end

  it 'tests positive negative integers' do
    a = [ 20, -7, 13, -14, 10, -25, 23, -2, 8, -16, 12, -21, 6, -3 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ -25, -21, -16, -14, -7, -3, -2, 6, 8, 10, 12, 13, 20, 23 ])
  end

  it 'tests positive decimals' do
    a = [ 20.3, 7.9, 13.2, 14.4, 10.7, 25.6, 23.4, 2.5, 8.0, 16.1, 12.0, 21.8, 6.7, 3.4 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ 2.5, 3.4, 6.7, 7.9, 8.0, 10.7, 12.0, 13.2, 14.4, 16.1, 20.3, 21.8, 23.4, 25.6 ])
  end

  it 'tests negative decimals' do
    a = [ -20.3, -7.9, -13.2, -14.4, -10.7, -25.6, -23.4, -2.5, -8.0, -16.1, -12.0, -21.8, -6.7, -3.4 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ -25.6, -23.4, -21.8, -20.3, -16.1, -14.4, -13.2, -12.0, -10.7, -8.0, -7.9, - 6.7, -3.4, -2.5 ])
  end

  it 'tests positive negative decimals' do
    a = [ -20.3, -7.9, 13.2, -14.4, 10.7, 25.6, -23.4, -2.5, -8.0, 16.1, 12.0, -21.8, 6.7, -3.4 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ -23.4, -21.8, -20.3, -14.4, -8.0, -7.9, -3.4, -2.5, 6.7, 10.7, 12.0, 13.2, 16.1, 25.6 ])
  end

  it 'tests repeating elements' do
    a = [ 7, 2, 4, -2, -7, -4, -2, 7, 4, -7, 2, -4 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ -7, -7, -4, -4, -2, -2, 2, 2, 4, 4, 7, 7 ])
  end

  it 'tests decimals integers' do
    a = [ 20.3, 7.9, 13.2, 14.4, 10.7, 25.6, 23, 2, 8, 16, 12, 21, 6, 3 ]
    expect(quicksort(a, 0, a.length-1)).to eq([ 2, 3, 6, 7.9, 8, 10.7, 12, 13.2, 14.4, 16, 20.3, 21, 23, 25.6 ])
  end

end
