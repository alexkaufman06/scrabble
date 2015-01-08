require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('can tell you the scrabble point value of a single letter string input') do
    expect("a".scrabble()).to eq(1)
  end

  it('can tell you the scrabble point value of a multiple letter string input') do
    expect("dog".scrabble()).to eq(5)
  end

  it('can tell you the scrabble point value of a multiple word string input') do
    expect("super duper man".scrabble()).to eq(20)
  end

  it('can tell you the scrabble points value of a string with capital letters') do
    expect("Dog".scrabble()).to eq (5)
  end

end
