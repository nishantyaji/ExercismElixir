defmodule HighSchoolSweetheart do

  defp firs(s), do: String.at(s, 0)

  def first_letter(name) do
    name
    |> String.trim()
    |> firs()
  end

  def initial(name) do
    name
    |> String.upcase()
    |> first_letter()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    String.split(full_name, " ")
    |> Enum.map(&initial/1)
    |> Enum.reduce("", fn name, acc -> acc <> " " <> name end )
    |> String.trim()
  end

  def pair(full_name1, full_name2) do

    "     ******       ******" <> "\n" <>
    "   **      **   **      **"<>"\n" <>
    " **         ** **         **"<>"\n" <>
    "**            *            **"<>"\n" <>
    "**                         **"<>"\n" <>

    "**     #{initials(full_name1)}  +  #{initials(full_name2)}     **"<>"\n" <>

    " **                       **"<>"\n" <>
    "   **                   **"<>"\n" <>
    "     **               **"<>"\n" <>
    "       **           **"<>"\n" <>
    "         **       **"<>"\n" <>
    "           **   **"<>"\n" <>
    "             ***"<>"\n" <>
    "              *"<>"\n"

  end
end
