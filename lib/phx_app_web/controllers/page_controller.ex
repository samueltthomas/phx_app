defmodule PhxAppWeb.PageController do
  use PhxAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn,_params) do
    #text conn, "About Us"
    html conn, "About Us"
  end

  def api(conn,_params) do
    data = %{
      name: "Phoenix Framework",
      developer: "Chris McCord",
      github: "https://github.com/phoenixframework/phoenix",
      features: ["Productive","Reliable","Fast"],
      info: "A productive web framework that does not compromise speed and maintainability",
      version: 1.3
    }
    json conn, data
  end

end
