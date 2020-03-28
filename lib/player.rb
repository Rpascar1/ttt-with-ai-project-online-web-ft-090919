# frozen_string_literal: true

class Player
  attr_reader :token

  def initialize(token)
    @token = token
  end

  def move; end
end
