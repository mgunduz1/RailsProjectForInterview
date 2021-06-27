class InputValuesController < ApplicationController
before_action :set_input_value, only: :show

def show
end

def new
    @input_value = InputValue.new
end

def create
    @input_value = InputValue.new(input_value_params)

    
      if @input_value.save
        redirect_to input_path_path(@input_value.input_val)
      else
       render :new
      end
    

end

private

def set_input_value
    @input_value = InputValue.find_by(input_val: params[:input_val])
  end

  
  def input_value_params
    params.require(:input_value).permit(:input_val)
  end
end
