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
=begin
  if "A" = 11
    pair = Hash.new
    p_hit = Hash.new("Hit")
    p_st = Hash.new("Stand")
    p_dh = Hash.new("Double and hit if you can")
    p_p = Hash.new("Split!")

    for c in 2..9 && A do pair[c] = p_p

  elsif "A" = 1 || "A" = 11
    soft = Hash.new
    s_hit = Hash.new("Hit")
    s_s = Hash.new("Stand")
    s_dh = Hash.new("Double and hit if you can")
    s_ds = Hash.new("Double and stand if you can")

  else
=end
if
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
for c in 9
  for x 7..10
  hard[c][y] = hit
  end
#hard[c]["A"] =
end
#hard[9][7] = hit
#hard[9][8] = hit
#hard[9][9] = hit
#hard[9][10] = hit
#hard[9]["A"] = hit
#hard[10][10] = hit
#hard[10]["A"] = hit
(12..16).each { |c| hard[c] = Hash.new("Stand")}
hard[12][2] = hit
hard[12][3] = hit
hard[12]

#for c in 2..6 do hard [c] = h_dh end
#for c in
end
end
puts hard

puts "Your best bet is to #{}. Good luck!"
