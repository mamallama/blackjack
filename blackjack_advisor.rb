#def check_is_a_number (number)
#  Float(number) rescue false
#end
def card_valid (card)
    return true if card == "A"
  card = card.to_i
  if  card > 1 && card < 11
    true
  else
    false
   end
end

puts "Let's check your cards and figure out the best Blackjack strategy."
puts "Enter numbers 1-9, 'A' for ace, and 10 for 'K','Q', or 'J'."
puts "First card: "
first_card = gets.chomp
puts "Second card: "
second_card = gets.chomp

puts "What about the dealer's card?"
dealer_card = gets.chomp

card_valid(first_card)
card_valid(second_card)
card_valid(dealer_card)

total_player = first_card.to_i + second_card.to_i

#puts total_player
#puts moves

#conditional statement where whe figure out which type of hand you have.


  if first_card.to_i == second_card.to_i
    pair = Hash.new
    p_hit = Hash.new("Hit")
    p_st = Hash.new("Stand")
    p_dh = Hash.new("Double and hit if you can")
    p_p = Hash.new("Split!")
# ALL the pairs
    (2..4).each { |c| pair[c] = Hash.new("Split!")}
    pair[2][8] = p_hit
    pair[2][9] = p_hit
    pair[2][10] = p_hit
    pair[2]["A"] = p_hit

    pair[3][9] = p_hit
    pair[3][10] = p_hit
    pair[3]["A"] = p_hit

    pair[4][2] = p_hit
    pair[4][3] = p_hit
    pair[4][7] = p_hit
    pair[4][8] = p_hit
    pair[4][9] = p_hit
    pair[4][10] = p_hit
    pair[4]["A"] = p_hit
    (5).each { |c| pair[c] = Hash.new("Double and hit if you can")}
    pair[5][10] = p_hit
    pair[5]["A"] = p_hit

    (6..9).each { |c| pair[c] = Hash.new("Split!")}
    pair[6][8] = p_hit
    pair[6][9] = p_hit
    pair[6][10] = p_hit
    pair[6]["A"] = p_hit

    pair[7][9] = p_hit
    pair[7][10] = p_st
    pair[7]["A"] = p_hit

    pair[9][7] = p_st
    pair[9][10] = p_st
    pair[9]["A"] = p_st

    (10).each { |c| pair[c] = Hash.new("Stand")}
    ("A").each { |c| pair[c] = Hash.new("Split!")}

    puts "Your best bet is to #{}. Good luck!"

  elsif #idk how to write this. oops. "A" = 1 || "A" = 11
    soft = Hash.new
    s_hit = Hash.new("Hit")
    hit= "Hit"
    s_s = Hash.new("Stand")
    stand = "Stand"
    s_dh = Hash.new("Double and hit if you can")
    dh = "Double and hit if you can"
    s_ds = Hash.new("Double and stand if you can")
    ds = "Double and stand if you can"

    (13..16).each { |c| soft[c] = Hash.new("Hit")}
    soft[13][4] = s_dh
    soft[13][5] = s_dh
    soft[13][6] = s_dh

    soft[14][4] = s_dh
    soft[14][5] = s_dh
    soft[14][6] = s_dh

    soft[15][4] = s_dh
    soft[15][5] = s_dh
    soft[15][6] = s_dh

    soft[16][4] = s_dh
    soft[16][5] = s_dh
    soft[16][6] = s_dh

    soft[17][2] = s_dh
    soft[17][3] = s_dh
    soft[17][4] = s_dh
    soft[17][5] = s_dh
    soft[17][6] = s_dh
    soft[17][7] = s_hit
    soft[17][8] = s_hit
    soft[17][9] = s_hit
    soft[17][10] = s_hit
    soft[17]["A"] = s_hit

    soft[18][2] = s_s
    soft[18][3] = s_ds
    soft[18][4] = s_ds
    soft[18][5] = s_ds
    soft[18][6] = s_ds
    soft[18][7] = s_s
    soft[18][8] = s_s
    soft[18][9] = s_hit
    soft[18][10] = s_hit
    soft[18]["A"] = s_s

    (19..21).each { |c| soft[c] = Hash.new("Stand")}
    soft[19][6] = s_ds

    puts "Your best bet is to #{}. Good luck!"

  else

    hard = Hash.new
    # -> hit, stay, etc.
    h_hit = Hash.new ("Hit")
    hit= "Hit"
    h_s = Hash.new ("Stand")
    stand = "Stand"
    h_dh = Hash.new ("Double and hit if you can")
    dh = "Double and hit if you can"

    (5..8).each { |c| hard[c] = Hash.new("Hit")}
    hard[8][5] = dh
    hard[8][6] = dh
    (9..11).each { |c| hard[c] = Hash.new("Double and hit if you can")}
#I know there's an easier way, but I can't get it to work right now.
    hard[9][7] = hit
    hard[9][8] = hit
    hard[9][9] = hit
    hard[9][10] = hit
    hard[9]["A"] = hit
    hard[10][10] = hit
    hard[10]["A"] = hit
    (12..16).each { |c| hard[c] = Hash.new("Stand")}
    hard[12][2] = hit
    hard[12][3] = hit
    hard[13][7] = hit
    hard[13][8] = hit
    hard[13][9] = hit
    hard[13][10] = hit
    hard[13]["A"] = hit
    hard[13][7] = hit
    hard[13][7] = hit
    hard[13][7] = hit
    hard[13][7] = hit
    hard[13][7] = hit
    hard[14][7] = hit
    hard[14][8] = hit
    hard[14][9] = hit
    hard[14][10] = hit
    hard[14]["A"] = hit
    hard[15][7] = hit
    hard[15][8] = hit
    hard[15][9] = hit
    hard[15][10] = hit
    hard[15]["A"] = hit
    (17..21).each { |c| hard[c] = Hash.new("Stand")}

    puts "Your best bet is to #{}. Good luck!"

end
