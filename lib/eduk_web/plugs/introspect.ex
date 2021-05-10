defmodule EdukWeb.Plugs.Instrospect do

  def init(default), do: default

  def call(conn, _opts) do
    introspect(conn, _opts)
  end
  @spec introspect(
          atom | %{:host => any, :method => any, :req_headers => any, optional(any) => any},
          any
        ) :: atom | %{:host => any, :method => any, :req_headers => any, optional(any) => any}
  def introspect(conn, _opts) do
    IO.puts """
    Verb: #{inspect(conn.method)}
    Host: #{inspect(conn.host)}
    Headers: #{inspect(conn.req_headers)}
    """

    conn
  end
end
