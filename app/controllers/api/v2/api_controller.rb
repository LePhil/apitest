module Api::V2
  class ApiController < ApplicationController

    def test
      render text: 'API V2 test'
    end

  end
end
