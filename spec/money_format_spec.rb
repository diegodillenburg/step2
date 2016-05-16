require_relative '../lib/money_format'

describe MoneyFormat do
  context 'formats money' do
    it 'when 1000' do
      expect(MoneyFormat.formatter("1000")).to eq("1,000")
    end

    it 'when 1000000' do
      expect(MoneyFormat.formatter("1000000")).to eq("1,000,000")
    end

    it 'when 1000000000' do
      expect(MoneyFormat.formatter("1000000000")).to eq("1,000,000,000")
    end
  end

  it 'splits string into single characters' do
    expect(MoneyFormat.split_string("1000")).to eq(["1", "0", "0", "0"])
  end

  it 'reverses given array' do
    expect(MoneyFormat.reverse(["1", "0", "0", "0"])).to eq(["0", "0", "0", "1"])
  end

  context 'slice_arr' do
    it 'slices the array into sets of 3' do
      expect(MoneyFormat.slice_arr(["0", "0", "0", "1"])).to eq(["0", "0", "0"])
    end

    it 'x' do
      n = ["0", "0", "0", "1"]
      MoneyFormat.slice_arr(n)
      expect(n).to eq(["1"])
    end
  end
end
