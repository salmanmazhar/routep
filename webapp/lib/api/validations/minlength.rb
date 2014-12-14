class Api::Validations::MinLength < Grape::Validations::SingleOptionValidator
  def validate_param!(attr_name, params)
    unless params[attr_name].length >= @option
      throw :error, status: 400, message: "#{attr_name}: must be at the least #{@option} characters long"
    end
  end
end