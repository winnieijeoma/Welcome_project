defmodule WelcomeWeb.WelcomeController do
    use WelcomeWeb, :controller
  
    def home(conn, %{"name" => name}) do
        render(conn, "home.html", name: name)
    end
    
  end