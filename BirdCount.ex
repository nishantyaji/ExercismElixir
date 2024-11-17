defmodule BirdCount do
  def today([]), do: nil
  def today([head | _tail]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([head|tail]), do: [head + 1 | tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head|tail]) do
    head == 0 || has_day_without_birds?(tail)
  end

  def total([]), do: 0
  def total([head|tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head|tail]) do
    cond do
      head >= 5 -> 1 + busy_days(tail)
      true -> busy_days(tail)
    end
  end
end
