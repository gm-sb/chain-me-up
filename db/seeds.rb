# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require 'benchmark'

# sentences = %q(Call me Ishmael.
# A screaming comes across the sky.
# Lolita, light of my life, fire of my loins.
# Happy families are all alike; every unhappy family is unhappy in its own way.
# It was a bright cold day in April, and the clocks were striking thirteen.
# I am an invisible man.
# The sun shone, having no alternative, on the nothing new.
# This is the saddest story I have ever heard.
# Through the fence, between the curling flower spaces, I could see them hitting.
# 124 was spiteful.
# Mother died today.
# Every summer Lin Kong returned to Goose Village to divorce his wife, Shuyu.
# The sky above the port was the color of television, tuned to a dead channel.
# I am a sick man . . . I am a spiteful man.
# Where now? Who now? When now?
# In a sense, I am Jacob Horner.
# It was like so, but wasn't.
# Mrs. Dalloway said she would buy the flowers herself.
# All this happened, more or less.
# They shoot the white girl first.
# For a long time, I went to bed early.
# The moment one learns English, complications set in.
# Dr. Weiss, at forty, knew that her life had been ruined by literature.
# Ships at a distance have every man's wish on board.
# There was a boy called Eustace Clarence Scrubb, and he almost deserved it.
# It was the day my grandmother exploded.
# Elmer Gantry was drunk.
# We started dying before the snow, and like the snow, we continued to fall.
# It was a pleasure to burn.
# In the beginning, sometimes I left messages in the street.
# It was love at first sight.
# I have never begun a novel with more misgiving.
# You better not never tell nobody but God.
# If I am out of my mind, it's all right with me, thought Moses Herzog.
# When Dick Gibson was a little boy he was not Dick Gibson.
# The past is a foreign country; they do things differently there.
# I write this sitting in the kitchen sink.
# He was born with a gift of laughter and a sense that the world was mad.
# Psychics can see the color of time it's blue.
# In the town, there were two mutes and they were always together.
# Time is not a line but a dimension, like the dimensions of space.
# They say when trouble comes close ranks, and so the white people did.)

# sentences = sentences.split("\n")

# sentences.each do |quote|
#   Prompt.create(:content => quote)
# end


tree_one = Tree.new(:content => "Once upon a time in a galaxy far, far away", :title => "A Fantasy Science Fiction")


pars = [
  [
  "<br /><br />Garson Thayer didn't like driving at night, but since his internal clock, an expensive Swiss gadget, sent signals to the effect that it wasn't officially night yet, he kept going.", 
  "<br /><br />There are many who will still bear in mind the singular circumstances which, under the heading of the Rugby Mystery, filled many columns of the daily Press in the spring of the year 1892. Coming as it did at a period of exceptional dullness, it attracted perhaps rather more attention than it deserved, but it offered to the public that mixture of the whimsical and the tragic which is most stimulating to the popular imagination.",
  "<br /><br />There she slept, a puckered little bundle of DNA fighting to organise. She looked and smelled like a lump of dough. Her breathing rattled less than it had when she was born; I could hardly tell she was alive apart from that relentless ticking."
  ],
  [
  "<br /><br />There was an electronic pad tucked beneath her baby mattress that sensed her breathing, translating each inhalation and exhalation into a metronomic tick. The ticks were supposed to be reassuring, but to me they sounded like a countdown.",
  "<br /><br />At five o'clock on the evening of the 18th of March in the year already mentioned a train left Euston Station for Manchester. It was a rainy, squally day, which grew wilder as it progressed, so it was by no means the weather in which anyone would travel who was not driven to do so by necessity.",
  "<br /><br />He was on his way to do a job for Strategic Air Command. He worked for them fairly often, couldn't help wondering why they paid stratospheric consultation fees yet refused to spring for drivers. The US Military had a near-infinite pool of uniformed serfs with valid military licenses and civilian hot rod/speedway experience. He could've used expensive travel time to review classified documents and equipment diagrams in the back seat, in a cone of light from some highly engineered inner-automobile reading apparatus.",
  "<br /><br />Our eyes met for a moment, and I then looked down toward my ten-dollar pleather shoes, as if to say, yes, I am tardy again, and I apologize for my stupidity and pray for compassion and understanding on your part, oh exalted manager of Peachy Burroughs Terrace, Fine Dining at the P.B. Country Club.",
  "<br /><br />If this particular person hadn't popped a clot out of his heart and got it lodged in his brain, subsequently wound up on the stroke ward of the local District General with no movement in his right side and not much in the way of consciousness either, I wouldn't be here. Literally.",
  "<br /><br />The couple's research had been thorough and they threw themselves into the project with an earnest enthusiasm. First they checked the PH of the soil. Then they built a compost bin, decided which crop varieties were most suited to the composition of the earth and drew up a planting schedule for the Spring. Overwintering vegetables - onions and cauliflower, garlic and leeks - were planted and the rest of their plot was forked and left rough dug, with the roots of any weeds exposed to the frosts that would follow."
  ],
  [
  "<br /><br />It had been some time since the couple had met and spoken to anyone new and at first they were ill-at-ease around the more established plot holders. But their diligence was noted and they were soon made to feel welcome.",
  "<br /><br />can't go and touch this poor bastard, can't hold his hand or shake his shoulder myself, can't try and reach him physically. But I've got a whole shed load of different camera views from my little room, and I can see it's pretty much a hopeless case. He hasn't really woken up, not since he's been brought in.",
  "<br /><br />'I cut myself shaving and it wouldn't stop bleeding. I practically bled to death. See?' I said, pointing to my shirt.",
  "<br /><br />The answer was obvious. The missiles were aimed the other way. So he was driving to an officially uncharted location near Barrow, in the upper reaches of the USA's freezer cabinet, at three in the afternoon, according to the aforementioned internal timepiece. The dashboard clock and radio announcer expressed agreement, but the charcoal-gray outer darkness said the timely information was a lie. Night was coming. Night was already there. Night was outrageously cold.",
  "<br /><br />The train, however, is a favourite one among Manchester business men who are returning from town, for it does the journey in four hours and twenty minutes, with only three stoppages upon the way. In spite of the inclement evening it was, therefore, fairly well filled upon the occasion of which I speak. The guard of the train was a tried servant of the company - a man who had worked for twenty-two years without a blemish or complaint. His name was John Palmer.",
  "<br /><br />It\'s true in America that old people are put in institutions or abandoned. Didn\'t you tell me about Granny dumping?'",
  "<br /><br />Next day she turned over what then happened: the men who'd been at the end of the hall crouching over her, concerned by the mess of blood and glass that was her hand. It riveted her too: the perpendicular embedded shards and the dark-red ribbons beginning to ooze. The way they helped her to her feet; she remembers the prodding sensation of their fingers in her armpits, the idiocy of her legs akimbo and exposing her pants as she tried to stand. It was her hand that was the dramatic thing, and it wasn't until next morning that she understood that she'd hit the base of the doorpost with her head.",
  "<br /><br /> She was brushing her hair in her own hallway mirror: it wasn't easy because as well as damaging her hand and right knee she'd badly bruised her right shoulder. As the brush touched the side of her head she realized that even though she had slept without noticing it, her right ear was sore. She brought her hand up to feel her skull around it, and winced with pain.",
  "<br /><br />The bulky extreme low-temperature Olive Drab snorkle coat, Gov't Issue, which he'd found neatly folded on the webbing seat next to his on the transport airplane, sat humped in the back seat of the car. Its coyote-fur ruff shimmered in warm breezes from the auto heater. The minimal movement caught Garson's eye in the rearview mirror. He reached back and scrunched the parka down. Didn't want a spectral, vaguely human-shaped presence looming behind him.",
  "<br /><br />The old woman approached John's wife. With her long fingers she pushed a brass teapot into Alice's hands. The transparent skin on her arms swung with the momentum of her tiny motions."
  ],
  [
  "<br /><br />The old woman's stand consisted of one green table, overwhelmed with useless things from the past. Heavy, iron mementos.",
  "<br /><br />John rolled his eyes when his wife set the brass teapot in the backseat of their Ford Festiva. The car was noticeably struggling as they drove down the interstate, burdened by the small weight of weekend suitcases.",
  "<br /><br />In the mirror her boyfriend floated up behind her, pale, the way mirrors can make you, the slight asymmetry of his features reversed and exaggerated, the effect you get when you see others reflected.",
  "<br /><br />By the end of their first month - as was the tradition with newcomers - they were given gifts of fruit and vegetables from those growers that had been most successful that Summer. They found themselves with bags of runner beans and courgettes, tomatoes and plums.",
  "<br /><br />On the drive home they argued about money. Wasted money. With two children in college, neither having been able to maintain their scholarships, not only was John and Alice's retirement dwindling but also their ability to make ends meet.",
  "<br /><br />You should not feel sorry for the time-sweepers, though their work is menial: they are never sick, do not worry that they are in the wrong career, and have excellent working conditions, though what they do for leisure is unknown. They enjoy bank holidays off, which is why, on these days, there seems so much more time than usual. At Christmas and new year, the time-sweepers have a week's holiday. When they return to work in January, they face a vast backlog of time which has been lost, wasted and thrown away over the holidays. It takes them around three weeks to resume normal service, which is why January always seems to last longer than other months.",
  "<br /><br />He got up from his chair and scanned the floor below, the robots still working away, a sea of metallic shoulders rising and falling in unison, strangely beautiful in a way. Over by the forklift sat 8831, his eyes as blank as the piece of bread he was eating.",
  "<br /><br />They strolled through the work unit to the large parking shed, where Heng and everyone else who lived and worked at Wei Teachers College stored their bicycles. And then they dragged their feet to the apartment block, where on the second floor they shared a small apartment with his parents.",
  "<br /><br />And she turned to him, his real-life face, its asymmetry hardly visible, and it was obvious that he thought she was being melodramatic – well, he hadn't been there had he, he was removed from the vivid, concrete experience – but she didn't mind, because all that concerned her was how lucky she was to have had that one inch, to be in life now when she could be in death, and to make the most of it, not to fret about her boyfriend, not to let those trivial, personal worries so distract her she could go spinning off into a fall."   
  ]
]


def add_children_again(number, tree, sample_text)
  tree_child_one = tree.child_trees.build(:content => " "+sample_text.sample.sample+" "+sample_text.sample.sample)
  tree_child_two = tree.child_trees.build(:content => " "+sample_text.sample.sample+" "+sample_text.sample.sample)
  tree_child_three = tree.child_trees.build(:content => " "+sample_text.sample.sample+" "+sample_text.sample.sample)
  tree.get_root.contributor_count += 3
  tree.get_root.save
  arr = [tree_child_one, tree_child_two, tree_child_three]
  tree_child_one.save
  tree_child_two.save
  tree_child_three.save
  if number != 0
    add_children_again(number-1, arr.sample, sample_text)
    add_children_again(number-1, arr.sample, sample_text)
    add_children_again(number-1, arr.sample, sample_text)
  end  
end

add_children_again(4, tree_one, pars)
tree_one.save