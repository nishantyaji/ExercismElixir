defmodule Username do
  def sanitizeChar(s) do
    case s do
      ?ä -> 'ae'  
      ?ö -> 'oe'  
      ?ü -> 'ue'  
      ?ß -> 'ss'  
      s when s in ?a..?z -> [s]  
      ?_ -> '_'  
      _ -> []  
    end
  end

  def sanitize(username) do
    username
    |> Enum.flat_map(&sanitizeChar/1)  
  end
end
