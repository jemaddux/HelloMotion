class Post
  attr_accessor :message
  attr_accessor :id

  def initWithCoder(decoder)
    self.init
    self.message = decoder.decodeObjectForKey("message")
    self.id = decoder.decodeObjectForKey("id")
    self
  end

  def encodeWithCoder(encoder)
    encoder.encodeObject(self.message, forKey: "message")
    encoder.encodeObject(self.id, forKey: "id")
  end
end