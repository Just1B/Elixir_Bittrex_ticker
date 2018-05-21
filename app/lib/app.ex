defmodule App do

  use HTTPoison.Base
  @http_opts [timeout: 60_000, recv_timeout: 60_000]

  def ticker( first , second ) when is_bitstring(first) and is_bitstring( second ) do

    "https://bittrex.com/api/v1.1/public/getticker?market=" <> String.upcase( first ) <> "-" <> String.upcase( second )
    |> get( [], @http_opts )
    |> process_result()
  end

  def process_result(_resp = {:ok, %HTTPoison.Response{status_code: 200, body: body}}), do: {:ok, Poison.decode!(body)}
  def process_result(_resp = {:ok, resp}), do: {:ok, resp}
  def process_result(resp), do: resp

end

