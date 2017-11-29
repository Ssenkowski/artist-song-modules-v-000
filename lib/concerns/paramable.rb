module Paramable
  module ClassMethods
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
end
