require './lib/fizz_buzz'

describe 'fizz_buzz' do
    it 'returns 1 if 1 is entered' do 
        expect(fizz_buzz(1)).to eq 1
    end
    it 'returns fizz if 3*n is entered' do
        expect(fizz_buzz(3)).to eq "fizz"
    end
    it 'returns fizz if 5*n is entered' do
        expect(fizz_buzz(5)).to eq "buzz"
    end
    it 'returns "fizz buzz" if 15*n is entered' do
        expect(fizz_buzz(15*rand(100))).to eq "fizz buzz"
    end
    it 'returns "nope" if "asd" is entered' do
        expect(fizz_buzz('asd')).to eq "nope"
    end
    it 'returns "nope" if nothing is entered' do
        expect(fizz_buzz()).to eq "nope"
    end
    it 'returns fizz_buzz(arg[0]) if several arguments are entered' do
        expect(fizz_buzz(15,"asd")).to eq "fizz buzz"
    end
end

describe 'fizz_buzz_hard' do
    it 'returns 1 if 1 is entered' do 
        expect(fizz_buzz_hard(1)).to eq 1
    end
    it 'returns fizz if 3*n is entered' do
        expect(fizz_buzz_hard(3)).to eq "fizz"
    end
    it 'returns fizz if 5*n is entered' do
        expect(fizz_buzz_hard(5)).to eq "buzz"
    end
    it 'returns "fizz buzz" if 15*n is entered' do
        expect(fizz_buzz_hard(15)).to eq "fizz buzz"
    end
    it 'returns fizz if 3x is entered' do
        expect(fizz_buzz_hard(34)).to eq "fizz"
    end
    it 'returns fizz if 5x is entered' do
        expect(fizz_buzz_hard(52)).to eq "buzz"
    end
    it 'returns "fizz buzz" if 3x%5==0 is entered' do
        expect(fizz_buzz_hard(30)).to eq "fizz buzz"
    end
    it 'returns "nope" if "asd" is entered' do
        expect(fizz_buzz_hard('asd')).to eq "nope"
    end
    it 'returns "nope" if nothing is entered' do
        expect(fizz_buzz_hard()).to eq "nope"
    end
    it 'returns fizz_buzz(arg[0]) if several arguments are entered' do
        expect(fizz_buzz_hard(15,"asd")).to eq "fizz buzz"
    end
end