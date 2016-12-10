module Statistics3
  require 'statistics3/base'
  extend Base

  if not defined? Statistics3::NO_EXT
    begin
      require '_statistics3'
      extend Extension
    rescue LoadError
    end
  end
end
