ActiveResource::Base.include_root_in_json = false

# Monkey patch for to_json method
# Fix is already included in activeresource gem, however it works with Rails 4 only
# Ii should be removed after a backport release of activeresource gem.

class ActiveResource::Base
  def to_json(options = {})
    super(include_root_in_json ? { :root => self.class.element_name }.merge(options) : options)
  end
end