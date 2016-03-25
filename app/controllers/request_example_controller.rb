class RequestExampleController < ApplicationController
  protect_from_forgery with: :null_session

  def get_example
    render text: 'Thanks for sending a GET request!'
  end

  def notifyUpdate

    if JSON.parse( request.body.read )
      json = JSON.parse request.body.read
      json["cats"].each do |cat|
        newCat = Cat.new
        newCat.name = cat["name"]
        newCat.description = cat["description"]
        newCat.age = cat["age"]
        newCat.save()
      end
      render text: "OK"
    else
      render text: "ERROR"
    end

  end

  def register
    render text: "register"
  end

  def updateSystem
    render text: "updateSystem called on system with ID #{params[:id]}"
  end

  def updateTask
    render text: "updateTask called on task with ID #{params[:id]}"
  end

end
