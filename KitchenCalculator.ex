defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup, do: {:milliliter, elem(volume_pair, 1) * 240}
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce, do: {:milliliter, elem(volume_pair, 1) * 30}
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon, do: {:milliliter, elem(volume_pair, 1) * 5}
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon, do: {:milliliter, elem(volume_pair, 1) * 15}
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter, do: {:milliliter, elem(volume_pair, 1)}

  def from_milliliter(volume_pair, unit) do
    {unit, elem(to_milliliter(volume_pair) , 1)/ elem(to_milliliter({unit, 1}), 1)}
  end

  def convert(volume_pair, unit) do
    from_milliliter(volume_pair, unit)
  end
end
