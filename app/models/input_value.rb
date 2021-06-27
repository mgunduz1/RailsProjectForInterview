class InputValue < ApplicationRecord
    before_validation :all_downcase, on: :create

    validates :input_val, format: { with: /[a-zA-Z]/,
        message: "Only Letters Allowed" }

    def to_param
        input_val
    end

    private
    def all_downcase 
        self.input_val = input_val.downcase
    end
end
