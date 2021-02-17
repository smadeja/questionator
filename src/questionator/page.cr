require "http/client"

class Questionator::Page
  URL = "https://conversationstartersworld.com/good-questions-to-ask/"

  @response : HTTP::Client::Response?

  def body
    response.body
  end

  private def response
    @response ||= HTTP::Client.get(URL)
  end
end
