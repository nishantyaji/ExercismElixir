defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    cond do
      list == [] -> []
      true -> tl(list)
    end
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    cond do
      list == [] -> 0
      true -> 1 + count(tl(list))
    end
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
