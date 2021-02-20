require "http/client"
require "myhtml"

class Questionator::Page
  URL = "https://conversationstartersworld.com/good-questions-to-ask/"

  @http_response : HTTP::Client::Response?
  @parsed_body : Myhtml::Parser?
  @questions : Array(String)?

  def questions
    @questions ||= parsed_body.css(".entry-content p").compact_map do |element|
      if match = element.inner_text.match(/\d+\.\s*(?<question>.+\?)/)
        match["question"]
      end
    end.to_a
  end

  private def http_response
    @http_response ||= HTTP::Client.get(URL)
  end

  private def parsed_body
    @parsed_body ||= Myhtml::Parser.new(http_response.body)
  end
end
