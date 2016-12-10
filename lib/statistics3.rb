require_relative 'statistics3/base'

module Statistics3
  extend Base

  if not defined? Statistics3::NO_EXT
    begin
      require '_statistics3'
      extend Extension
    rescue LoadError
    end
  end
end
