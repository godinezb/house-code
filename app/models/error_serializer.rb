module ErrorSerializer
  def ErrorSerializer.serialize(errors)
    return if errors.nil?
    messages = ""
    errors.to_hash.map do |key, msgs|
      msgs.map do |msg|
        messages = msg + " " + messages
      end
    end.flatten
    json = {response: false, message: messages}
    json
  end
end
