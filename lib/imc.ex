defmodule Imc do
  @moduledoc """
  Documentation for `Imc`.
  """

  def calcula(peso, altura) do
    round(peso / (altura * altura) * 10) / 10
  end

  def classifica(peso, altura) do
    classifica(calcula(peso, altura))
  end

  defp classifica(imc) when imc < 18.5 do
    "peso baixo"
  end

  defp classifica(imc) when imc <= 24.9 do
    "peso normal"
  end
end
