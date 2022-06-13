# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# this is a comment to be commited


puts "creating some seed"

User.create(
  email: "aadel.bouzambou@email.com",
  password: '123456',
  address: "16 rue de la loi, Bruxelles",
  first_name: "Aadel",
  profile_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654693561/85813017_gmglmh.jpg"
)

User.create(
  email: "stephan.dierckx@email.com",
  password: '123456',
  address: "16 rue Brederode, Bruxelles",
  first_name: "Stephan",
  profile_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654693779/90523184_vqjc1b.jpg"
)

User.create(
  email: "nicolas.charlier@email.com",
  password: '123456',
  address: "10 Cantersteen, Bruxelles",
  first_name: "Nicolas",
  profile_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654693874/91524255_banchj.jpg"
)

Character.create!(
  name: "Vegeta",
  power: (478945..9545213).to_a.sample,
  planet: "Saiyan",
  description: " Vegeta (ベジータ, Bejīta). The Saiyan Prince has come a long way since he first came to Earth looking to destroy the planet and take the Dragon Balls. Goku spared him after Vegeta failed in his mission and fair to say, Goku's desire to fight Vegeta again played a huge role in turning the Elite Saiyan around. Vegeta wants everyone in the world to know that he doesn't care about anyone but in reality, he does, and his family keeps him going.",
  sayan: true,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654696413/Super_Saiyan_Vegeta_Png_-_Vegeta_Super_Saiyan_2_Png_Transparent__._ry5kjg.jpg"
)

Character.create!(
  name: "Piccolo",
  power: (78945..1545213).to_a.sample,
  planet: "Namek",
  description: "Piccolo Jr. (ピッコロ・ジュニア), usually just called Piccolo or Kamiccolo and also known as Ma Junior (マジュニア Majunia), is a Namekian and also the final child and reincarnation of King Piccolo, later becoming the reunification of the Nameless Namekian after fusing with Kami. According to Grand Elder Guru, Piccolo, along with Kami and King Piccolo, are part of the Dragon Clan, who were the original creators of the Dragon Balls.",
  sayan: false,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654694978/Piccolo_-_DragonBall_jsadr7.png"
)

Character.create!(
  name: "Bulma",
  power: (945..9540).to_a.sample,
  planet: "Earth",
  description: "Bulma (Japanese: ブルマ, Hepburn: Buruma) is a character featured in the Dragon Ball franchise, first appearing in the manga series created by Akira Toriyama. She debuted in the first chapter Bulma and Son Goku (ブルマと孫悟空, Buruma to Son Gokū), published in Weekly Shōnen Jump magazine on June 19, 1984 issue 51,[2] meeting Goku and recruiting him as her bodyguard to travel and find the wish-granting Dragon Balls. Bulma is the daughter of Dr. Brief, the founder of the Capsule Corporation, a company that creates special small capsules that shrink and hold objects of various sizes for easy storage. Being the daughter of a brilliant scientist, Bulma is also a scientific genius, as well as an inventor and engineer. Along with creating the Dragon Radar, a device that detects the energy signal emitted by a Dragon Ball, Bulma's role as an inventor becomes important at several points in the series; including the time machine that brings her future son Trunks to the past.",
  sayan: false,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654697230/dragonball/Bulma_m4q09f.jpg"
)

Character.create!(
  name: "Chichi",
  power: (3945..9540).to_a.sample,
  planet: "Earth",
  description: "Chi-Chi (チチ Chichi) is the princess of Fire Mountain and the daughter of the Ox-King.[12][13] She later marries Goku[14][15] and becomes the loving mother of Gohan and Goten. She was first introduced as a shy and fearful girl, but later, as she gets older, develops a very tomboyish, tough and fierce personality, which sometimes causes her to have angry outbursts seen several times throughout the series. Despite this, she has shown her love for Goku and their sons many times throughout the series.",
  sayan: false,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654697234/dragonball/Young_Chichi_Blush_2_by_garu0212_on_DeviantArt_rgbst4.png"
)

Character.create(
  name: "Caulifla",
  power: (78945..2545213).to_a.sample,
  planet: "Universe 6",
  description: "Caulifla (カリフラ, Karifura) is another one of Universe 6's Saiyans and she is very entertaining to watch due to her cocky nature quite similar to that of Vegeta. She is Kale's best friend and with her, she performed the Potara Fusion technique to form Kefla (who took Goku to the limit). Caulifla herself is very disrespectful and dismissive in nature. And like all Saiyans, she likes to have a good fight. She seems to be a very quick learner too.",
  sayan: true,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654694916/dragonball/Caulifla_Universo_6_bpa6gu.jpg"
)

Character.create(
  name: "Gohan",
  power: (3078945..9545213).to_a.sample,
  planet: "Saiyan",
  description: "Son Gohan (孫悟飯, Son Gohan) has and always will be a fan favorite no matter what he does. His character took a turn for the worse after an incredible showing in the Cell arc, but the Tournament of Power in Dragon Ball Super managed to bring back the good old Ultimate Gohan fans used to love. He has the potential to be the strongest Saiyan ever but he focuses on his personal life and taking care of his family, unlike his father.",
  sayan: true,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654694986/dragonball/Ultimate_Gohan_by_hirus4drawing_on_DeviantArt_nqftuy.png"
)

Character.create(
  name: "Freezer",
  power: (1078945..3545213).to_a.sample,
  planet: "Freezer",
  description: "Freezer (フリーザ, Furîza). There's no doubt that Freezer is the mightiest member of his own army. Back in his Namek days, he was able to dominate The Z Warriors. Even Super Saiyan Goku took a long time to stop him - it was actually part of Dragon Ball's longest ever fight. Yet, he reached a whole new level in Dragon Ball Super after actually training for once. With his newfound ability to become Golden Freezer, he impressively could hold his own against Goku and Vegeta's Super Saiyan Blue forms.",
  sayan: false,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654694924/dragonball/Freezer_4th_Form_Universo_7_gkxthn.jpg"
)

Character.create(
  name: "San Goku",
  power: (5078945..9545213).to_a.sample,
  planet: "Saiyan",
  description: "Son Goku (孫悟空). The flag bearer of the Dragon Ball franchise, Goku is quite easy to read and understand as a character, whose unbridled positivity make him a likable lead. That said, he loves to put the planet in danger by provoking fights and he was literally the architect of the Tournament of Power, although Zeno was planning it for a bit. Goku is by far the strongest Saiyan in the series and his Ultra Instinct form is absolutely stunning to watch in action.",
  sayan: true,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654695788/dragonball/Explore_goku_images_discovered_by_Crypto_Love_zktb12.jpg"
)

Character.create(
  name: "Broly",
  power: (3078945..9545213).to_a.sample,
  planet: "Saiyan",
  description: "Broly (ブロリー, Burorī). While Dragon Ball Z's Broly was shown as a demonic/sadistic figure, Dragon Ball Super's latest movie converted him into a misunderstood anti-hero. Broly's raw strength is spell-bounding, especially his Wrath form that seems to sustain the power of the Great Ape in his usual Saiyan form. Not to mention the Legendary Super Saiyan transformation that makes him look like an absolute beast; an unstoppable beast.",
  sayan: true,
  user: User.order(Arel.sql('RANDOM()')).first,
  character_picture: "https://res.cloudinary.com/dphxqttyl/image/upload/v1654694919/dragonball/Dragon_Ball_Broly_Png_File_-_Broly_Ssj_Blue_Png_free_png_image_cxmkux.png"
)


puts "seed done!"
