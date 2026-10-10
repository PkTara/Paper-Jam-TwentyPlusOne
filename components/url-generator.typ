
#let url-generator(
  players_character:none,
  direction:none,
  current_player:none,
  number:none
) = {
  
  let output = "URL-GEN"

  if players_character != none {
    output += ";character=" + players_character
  }

  // direction = left or right
  if direction != none {
    output += ";direction=" +direction 
  }

  if current_player != none {
    output += ";current_player=" + current_player
  }

  if number != none {
    output += ";number=" + str(number)
  }

  return(output)
   

  

  


}