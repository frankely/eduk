defmodule EdukWeb.PageController do
  use EdukWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
