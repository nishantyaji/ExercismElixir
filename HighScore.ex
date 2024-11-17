defmodule HighScore do

  @mp %{}
  @initial_score 0

  def new(), do: @mp

  def add_player(scores, name, score \\ @initial_score), do: Map.put(scores, name, score)

  def remove_player(scores, name) do
    cond do
      Map.has_key?(scores, name) -> Map.delete(scores, name)
      true -> @mp
    end
  end

  def reset_score(scores, name) do
    add_player(scores, name, 0)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn current_value -> current_value + score end)
  end

  def get_players(scores), do: Map.keys(scores)
end
