require './lib/script.rb'

describe '#caesar_cipher' do
  it "lowercase letters shifted by 1" do
    expect(caesar_cipher('the quick',1)).to eql("uif rvjdl")
  end

  it "upper and lowercase letters shifted by 1" do
    expect(caesar_cipher('tHe QuICk',1)).to eql("uIf RvJDl")
  end

  it "ignores spaces and numbers" do
    expect(caesar_cipher('123 1tHe23 QuICk',1)).to eql("123 1uIf23 RvJDl")
  end

  it "z and Z are correctly wrapped" do
    expect(caesar_cipher('abc zZy',1)).to eql("bcd aAz")
  end

  it "w,x,y,z are correctly wrapped with shfit factor of 5" do
    expect(caesar_cipher('wxyz WXYZ',5)).to eql("bcde BCDE")
  end
end
