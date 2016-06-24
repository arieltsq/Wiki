# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Snoopy.destroy_all

snoopy = Snoopy.create
snoopy.char_name = "Charlie Brown"
snoopy.char_found = "October 2, 1950"
snoopy.char_image = "charlie.png"
snoopy.char_desc = " 'Good ol’ Charlie Brown' is the lovable loser in the zig-zag t-shirt—the kid who never gives up (even though he almost never wins). He manages the world’s worst baseball team…yet shows up for every game.

 He can’t muster the courage to talk to the Little Red-Haired girl…yet keeps hoping.

Even though he gets grief from his friends, his kite-eating tree, even his own dog, Charlie Brown remains the stalwart hero."
snoopy.char_dyknow = "Charlie Brown's dad is a barber just like Charles Schulz's father was"
if snoopy.save
  puts "Charlie record saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Sally Brown"
snoopy.char_found = "August 23, 1959"
snoopy.char_image = "sally.png"
snoopy.char_desc = "Charlie Brown’s little sister believes the world owes her an explanation. Why does she have to go to school? Why doesn’t Linus, her Sweet Babboo, love her? And what’s the capital of Venezuela? Sally is always on the hunt for answers—and when she doesn’t get them, she comes up with a whole new philosophy: “Who cares?” "
snoopy.char_dyknow = 'DID YOU KNOW: For 6 months, Sally experienced amblyopia ("lazy eye") and wore an eye patch.'
if snoopy.save
  puts "Sally record saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Woodstock"
snoopy.char_found = "April 4, 1967"
snoopy.char_image = "woodstock.png"
snoopy.char_desc = "The fluttering, sometimes sputtering, little yellow bird is Snoopy’s sidekick, whether it’s as faithful mechanic to the World War I Flying Ace, stalwart secretary to the Head Beagle, or root beer drinking buddy. Chirping in a language only Snoopy understands, Woodstock and his feathered friends are never far from Snoopy’s doghouse."

snoopy.char_dyknow = 'DID YOU KNOW: Woodstock was first seen in the strip in 1967 but was named in 1970 after the summer music festival.'
if snoopy.save
  puts "Woodstock saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Franklin"
snoopy.char_found = "July 31, 1968"
snoopy.char_image = "franklin.png"
snoopy.char_desc = "Charlie Brown’s quiet friend and confidant, Franklin might be the only one who never has an unkind word about our hapless hero. At school, Franklin sits one seat ahead of Peppermint Patty, which makes his school days that much more unbearable."

snoopy.char_dyknow = "Franklin goes to school with Peppermint Patty and Marcie but visits his friend Charlie Brown in a nearby neighborhood."
if snoopy.save
  puts "Franklin saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Marcie"
snoopy.char_found = "July 20, 1971"
snoopy.char_image = "marcie.png"
snoopy.char_desc = "Peppermint Patty’s best friend, loyal follower, and complete opposite, Marcie is the smart one of the duo—even if she doesn’t know the difference between baseball and hockey. She’s horrible at sports, but terrific at friendship, especially with Charlie Brown (whom she calls “Charles”) and Peppermint Patty (whom she calls “sir”)."

snoopy.char_dyknow = "Though Marcie first appeared by name in 1971, a girl named Clara who bears a striking resemblance attended Camp Kamp with Peppermint Patty in 1968."
if snoopy.save
  puts "Marcie saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Peppermint Patty"
snoopy.char_found = "August 22, 1966"
snoopy.char_image = "peppermintpatty.png"
snoopy.char_desc = "A fearless born leader and a natural athlete, Peppermint Patty is up to any challenge…except studying. She never met a school day she didn’t hate. But this tough girl has a soft side, too: She’s hopelessly in love with her pal Charlie “Chuck” Brown—who has no idea. For Peppermint Patty, sports are easy; it’s life that’s hard."

snoopy.char_dyknow = "Peppermint Patty’s real name is Patricia Reichardt."
if snoopy.save
  puts "Marcie saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Pigpen"
snoopy.char_found = "July 13, 1954"
snoopy.char_image = "pigpen.png"
snoopy.char_desc = "Happily traveling in his own private dust storm, Pigpen is completely comfortable in his own (dust-streaked) skin. Despite his outward appearance, he always carries himself with dignity, knowing full well that he has affixed to him the “dust of countless ages."
snoopy.char_dyknow = "Charlie Brown is the one kid that unconditionally accepts Pigpen for who he is, even defending his uncleanliness in one strip."
if snoopy.save
  puts "Pigpen saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Schroeder"
snoopy.char_found = "May 3, 1951"
snoopy.char_image = "schroeder.png"
snoopy.char_desc = "This mini musical genius is rarely separated from his toy piano or his idol, Beethoven—except when he’s calling a game as the reliable catcher on Charlie Brown’s baseball team. The rest of his time is spent fending off unwanted advances from the bane of his existence: Lucy."

snoopy.char_dyknow = "Schulz chose Beethoven as Schroeder's muse because he believed words beginning with 'b' sounded funny...like blockhead and beagle."
if snoopy.save
  puts "Schulz saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Lucy"
snoopy.char_found = "May 3, 1952"
snoopy.char_image = "lucy.png"
snoopy.char_desc = "Known around the neighborhood (and by her little brother, Linus) for being crabby and bossy, Lucy can often be found dispensing advice from her 5-cent psychiatrist’s booth, yanking away Linus’ security blanket, or humiliating Charlie Brown. Lucy’s only weakness? Her unrequited love for the piano-playing Schroeder."

snoopy.char_dyknow = " Lucy often speaks out for women’s rights and has high aspirations to one day be President and Queen."
if snoopy.save
  puts "Lucy saved!"
end

snoopy = Snoopy.create
snoopy.char_name = "Linus"
snoopy.char_found = "September 19, 1952"
snoopy.char_image = "linus.png"
snoopy.char_desc = "The benevolent, blanket-clutching philosopher always has a kind word for everybody…even his bossy older sister, Lucy. While he’s often the voice of reason in the neighborhood, Linus also believes firmly in the Great Pumpkin, and he suffers more than most when people (or pumpkins) let him down."

snoopy.char_dyknow = "Linus wore glasses for a short time. Snoopy constantly stole them to torment him."
if snoopy.save
  puts "Linus saved!"
end
