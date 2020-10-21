# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create the array of info
User.destroy_all
Book.destroy_all
#create the books and then attach the images

# books object template: 
    # {
    #     id: 7,
    #     title: ,
    #     author: ,
    #     description: ,
    #     isbn: 9780062316097,
    #     date_published: ,
    #     image_url:
    # }
require "open-uri"

demo = User.new(username: "Guest", email: "guest@guest.com", password: "password")
demo.save!

testBook = Book.create(
    {
    id: 1,
    title: "Transcendence: How Humans Evolved through Fire, Language, Beauty, and Time",
    author: "Gaia Vince",
    description: "What enabled us to go from simple stone tools to smartphones? How did bands of hunter-gatherers evolve into multinational empires? Readers of Sapiens will say a cognitive revolution -- a dramatic evolutionary change that altered our brains, turning primitive humans into modern ones -- caused a cultural explosion. In Transcendence, Gaia Vince argues instead that modern humans are the product of a nuanced coevolution of our genes, environment, and culture that goes back into deep time. She explains how, through four key elements -- fire, language, beauty, and time -- our species diverged from the evolutionary path of all other animals, unleashing a compounding process that launched us into the Space Age and beyond. Provocative and poetic, Transcendence shows how a primate took dominion over nature and turned itself into something marvelous.",
    isbn: "9780465094905",
    date_published: "January 21st 2020",
    image_url: "",
    }
)

testBook.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/1.jpg"),filename: "1.jpg")

    # books = Book.create([
        #     {
#         id: 1,
#         title: "Transcendence: How Humans Evolved through Fire, Language, Beauty, and Time",
#         author: "Gaia Vince",
#         description: "What enabled us to go from simple stone tools to smartphones? How did bands of hunter-gatherers evolve into multinational empires? Readers of Sapiens will say a cognitive revolution -- a dramatic evolutionary change that altered our brains, turning primitive humans into modern ones -- caused a cultural explosion. In Transcendence, Gaia Vince argues instead that modern humans are the product of a nuanced coevolution of our genes, environment, and culture that goes back into deep time. She explains how, through four key elements -- fire, language, beauty, and time -- our species diverged from the evolutionary path of all other animals, unleashing a compounding process that launched us into the Space Age and beyond. Provocative and poetic, Transcendence shows how a primate took dominion over nature and turned itself into something marvelous.",
#         isbn: "9780465094905",
#         date_published: "January 21st 2020",
#         image_url: "",
#     },
#     {
#         id: 2,
#         title: "Sapiens: A Brief History of Humankind",
#         author: "Yuval Noah Harari",
#         description: "How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?

# In Sapiens, Dr Yuval Noah Harari spans the whole of human history, from the very first humans to walk the earth to the radical – and sometimes devastating – breakthroughs of the Cognitive, Agricultural and Scientific Revolutions. Drawing on insights from biology, anthropology, paleontology and economics, he explores how the currents of history have shaped our human societies, the animals and plants around us, and even our personalities. Have we become happier as history has unfolded? Can we ever free our behaviour from the heritage of our ancestors? And what, if anything, can we do to influence the course of the centuries to come?

# Bold, wide-ranging and provocative, Sapiens challenges everything we thought we knew about being human: our thoughts, our actions, our power ... and our future.",
#         isbn: "9780062316097",
#         date_published: "January 1st 2011",
#         image_url: "",
#     },
#     {
#         id: 3,
#         title: "The Third Chimpanzee: The Evolution and Future of the Human Animal",
#         author: "Jared Diamond",
#         description: "At some point during the last 100,000 years, humans began exhibiting traits and behavior that distinguished us from other animals, eventually creating language, art, religion, bicycles, spacecraft, and nuclear weapons—all within a heartbeat of evolutionary time. Now, faced with the threat of nuclear weapons and the effects of climate change, it seems our innate tendencies for violence and invention have led us to a crucial fork in our road. Where did these traits come from? Are they part of our species immutable destiny? Or is there hope for our species’ future if we change?

# With fascinating facts and his unparalleled readability, Diamond intended his book to improve the world that today’s young people will inherit. Triangle Square’s The Third Chimpanzee for Young People is a book for future generation and the future they’ll help build.",
#         isbn: "9780060845506",
#         date_published: "May 2nd 1991",
#         image_url:"",
#     },
#     {
#         id: 4,
#         title: "The Laws of Human Nature",
#         author: "Robert Greene",
#         description: "Robert Greene is a master guide for millions of readers, distilling ancient wisdom and philosophy into essential texts for seekers of power, understanding and mastery. Now he turns to the most important subject of all - understanding people's drives and motivations, even when they are unconscious of them themselves.

# We are social animals. Our very lives depend on our relationships with people. Knowing why people do what they do is the most important tool we can possess, without which our other talents can only take us so far. Drawing from the ideas and examples of Pericles, Queen Elizabeth I, Martin Luther King Jr, and many others, Greene teaches us how to detach ourselves from our own emotions and master self-control, how to develop the empathy that leads to insight, how to look behind people's masks, and how to resist conformity to develop your singular sense of purpose. Whether at work, in relationships, or in shaping the world around you, The Laws of Human Nature offers brilliant tactics for success, self-improvement, and self-defense.",
#         isbn: "9780525428145",
#         date_published: "October 23rd 2018",
#         image_url:"",
#     }
# ])

#rails db:reset