defmodule ImcTest do
  use ExUnit.Case

  test "O IMC de uma pessoa com 100Kg e 1,80m é 30,9" do
    assert Imc.calcula(100, 1.8) == 30.9
  end

  test "O IMC de uma pessoa com 120Kg e 1,60m é 46,9" do
    assert Imc.calcula(120, 1.6) == 46.9
  end

  test "O IMC de uma pessoa com 80Kg e 1,60m é 31,2" do
    assert Imc.calcula(80, 1.6) == 31.2
  end

  test "O IMC de uma pessoa com 40Kg e 1,60m é 15,6" do
    assert Imc.calcula(40, 1.6) == 15.6
  end

  test "Uma pessoa com 40Kg e 1,60m tem peso baixo" do
    assert Imc.classifica(40, 1.6) == "peso baixo"
  end

  test "Uma pessoa com 60Kg e 1,60m tem peso normal" do
    assert Imc.classifica(60, 1.6) == "peso normal"
  end
end
