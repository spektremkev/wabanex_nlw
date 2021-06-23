defmodule WabanexWeb.IMCController do
  use WabanexWeb, :controller

  defp index(conn, params) do
    params
    |>IMC.calculate()
    |>handle_response(conn)
    #conn
  end
  #retorna uma função como se fosse uma recução ???
  defp handle_response({:ok, result},conn), do: render_response(conn, result, :ok)

  defp handle_response ({:ok, result},conn) do: render_response(conn, result, :bad_response)

  end
  defp render_response()do
    conn
    |> put.status(:status)
    |>json(result: result)
  end
