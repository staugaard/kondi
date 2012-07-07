module Kondi
  module JsonClient
    def self.get(url, &block)
      error_ptr = Pointer.new(:object)
      data = NSData.alloc.initWithContentsOfURL(NSURL.URLWithString(url), options:NSDataReadingUncached, error:error_ptr)
      raise error_ptr[0] unless data

      error_ptr = Pointer.new(:object)
      json = NSJSONSerialization.JSONObjectWithData(data, options:0, error:error_ptr)
      raise error_ptr[0] unless data

      block.call(json)
    end
  end
end
