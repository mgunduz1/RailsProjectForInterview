require 'rails_helper'

RSpec.describe InputValue, type: :model do
  context "test character type restrictions" do
    
  it "is valid" do
    test1 = InputValue.new(input_val: "abcas")
    expect(test1).to be_valid
  end

  it "is not valid with numbers" do
    test2 = InputValue.new(input_val: "1134")
    expect(test2).to_not be_valid
  end

  it "is not valid with specials" do
    test3 = InputValue.new(input_val: "-?/")
    expect(test3).to_not be_valid
  end

  end

  let(:input1) { InputValue.create(input_val: "abc") }

  describe "test character type restrictions" do
    it 'is valid 2' do
      expect(input1.valid?).to eq(true)
    end
    it "is not valid with numbers 2" do
      input1.input_val = "1134"
      expect(input1.valid?).to eq(false)
    end
  
    it "is not valid with specials 2" do
      input1.input_val = "-?/"
      expect(input1.valid?).to eq(false)
    end
    
  end
end
  
