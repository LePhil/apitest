module Api::V1
  class ApiController < ApplicationController

    def test
      render text: 'API V1 test'
    end

  end
end
