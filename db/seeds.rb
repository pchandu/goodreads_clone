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
Review.destroy_all
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

book1 = Book.create(
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

book1.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/1.jpg"),filename: "1.jpg")

review1 = Review.create(
    {
        id: 1,
        book_id: 1,
        user_id: 2, 
        rating: 4,
        body: "lets hope this works!!!!!!!"
    }
)
# -----------------------------------------------------------------
book2 = Book.create(
    {
        id: 2,
        title: "The Third Chimpanzee: The Evolution and Future of the Human Animal",
        author: "Jared Diamond",
        description: "At some point during the last 100,000 years, humans began exhibiting traits and behavior that distinguished us from other animals, eventually creating language, art, religion, bicycles, spacecraft, and nuclear weapons—all within a heartbeat of evolutionary time. Now, faced with the threat of nuclear weapons and the effects of climate change, it seems our innate tendencies for violence and invention have led us to a crucial fork in our road. Where did these traits come from? Are they part of our species immutable destiny? Or is there hope for our species’ future if we change?
        
        With fascinating facts and his unparalleled readability, Diamond intended his book to improve the world that today’s young people will inherit. Triangle Square’s The Third Chimpanzee for Young People is a book for future generation and the future they’ll help build.",
        isbn: "9780060845506",
        date_published: "May 2nd 1991",
        image_url:"",
    }
    )
    book2.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/2.jpg"), filename: "2.jpg")
# -----------------------------------------------------------------
book3 = Book.create(
    {
        id: 3,
        title: "The Laws of Human Nature",
        author: "Robert Greene",
        description: "Robert Greene is a master guide for millions of readers, distilling ancient wisdom and philosophy into essential texts for seekers of power, understanding and mastery. Now he turns to the most important subject of all - understanding people's drives and motivations, even when they are unconscious of them themselves.
        We are social animals. Our very lives depend on our relationships with people. Knowing why people do what they do is the most important tool we can possess, without which our other talents can only take us so far. Drawing from the ideas and examples of Pericles, Queen Elizabeth I, Martin Luther King Jr, and many others, Greene teaches us how to detach ourselves from our own emotions and master self-control, how to develop the empathy that leads to insight, how to look behind people's masks, and how to resist conformity to develop your singular sense of purpose. Whether at work, in relationships, or in shaping the world around you, The Laws of Human Nature offers brilliant tactics for success, self-improvement, and self-defense.",
            isbn: "9780525428145",
            date_published: "October 23rd 2018",
        image_url:"",
    }
    )
    book3.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/3.jpg"), filename: "3.jpg")
# -----------------------------------------------------------------
book4 = Book.create(
{
    id: 4,
    title: "Sapiens: A Brief History of Humankind",
    author: "Yuval Noah Harari",
    description: "How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?
    In Sapiens, Dr Yuval Noah Harari spans the whole of human history, from the very first humans to walk the earth to the radical – and sometimes devastating – breakthroughs of the Cognitive, Agricultural and Scientific Revolutions. Drawing on insights from biology, anthropology, paleontology and economics, he explores how the currents of history have shaped our human societies, the animals and plants around us, and even our personalities. Have we become happier as history has unfolded? Can we ever free our behaviour from the heritage of our ancestors? And what, if anything, can we do to influence the course of the centuries to come?
    Bold, wide-ranging and provocative, Sapiens challenges everything we thought we knew about being human: our thoughts, our actions, our power ... and our future.",
    isbn: "9780062316097",
    date_published: "January 1st 2011",
    image_url: "",
}
)
book4.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/4.jpg"), filename: "4.jpg")
# # -----------------------------------------------------------------
book5 = Book.create(
{
    id: 5,
    title: "She Votes: How U.S. Women Won Suffrage, and What Happened Next",
    author: "Bridget Quinn",
    description: "She Votes is an intersectional story of the women who won suffrage, and those who have continued to raise their voices for equality ever since.

From the first female Principal Chief of the Cherokee Nation to the first woman to wear pants on the Senate floor, author Bridget Quinn shines a spotlight on the women who broke down barriers.

This deluxe book also honors the 100th anniversary of the Nineteenth Amendment with illustrations by 100 women artists.

• A colorful, intersectional account of the struggle for women's rights in the United States
• Features heart-pounding scenes and keenly observed portraits
• Includes dynamic women from Elizabeth Cady Stanton to Audre Lorde

She Votes is a refreshing and illuminating book for feminists of all kinds.

Each artist brings a unique perspective; together, they embody the multiplicity of women in the United States.",
    isbn: "9781452173160",
    date_published: "August 11th 2020 2011",
    image_url: "",
}
)
book5.cover_photo.attach(io: open(""), filename: "")
# # -----------------------------------------------------------------
book6 = Book.create(
{
    id: 6,
    title: "Caste: The Origins of Our Discontents",
    author: "Isabel Wilkerson",
    description: "The Pulitzer Prize–winning, bestselling author of The Warmth of Other Suns examines the unspoken caste system that has shaped America and shows how our lives today are still defined by a hierarchy of human divisions.

“As we go about our daily lives, caste is the wordless usher in a darkened theater, flashlight cast down in the aisles, guiding us to our assigned seats for a performance. The hierarchy of caste is not about feelings or morality. It is about power—which groups have it and which do not.”

In this brilliant book, Isabel Wilkerson gives us a masterful portrait of an unseen phenomenon in America as she explores, through an immersive, deeply researched narrative and stories about real people, how America today and throughout its history has been shaped by a hidden caste system, a rigid hierarchy of human rankings.

Beyond race, class, or other factors, there is a powerful caste system that influences people’s lives and behavior and the nation’s fate. Linking the caste systems of America, India, and Nazi Germany, Wilkerson explores eight pillars that underlie caste systems across civilizations, including divine will, bloodlines, stigma, and more. Using riveting stories about people—including Martin Luther King, Jr., baseball’s Satchel Paige, a single father and his toddler son, Wilkerson herself, and many others—she shows the ways that the insidious undertow of caste is experienced every day. She documents how the Nazis studied the racial systems in America to plan their out-cast of the Jews; she discusses why the cruel logic of caste requires that there be a bottom rung for those in the middle to measure themselves against; she writes about the surprising health costs of caste, in depression and life expectancy, and the effects of this hierarchy on our culture and politics. Finally, she points forward to ways America can move beyond the artificial and destructive separations of human divisions, toward hope in our common humanity.

Beautifully written, original, and revealing, Caste: The Origins of Our Discontents is an eye-opening story of people and history, and a reexamination of what lies under the surface of ordinary lives and of America life today. ",
    isbn: "9780593230251",
    date_published: "August 4th 2020",
    image_url: "",
}
)
book6.cover_photo.attach(io: open(""), filename: "")
# # -----------------------------------------------------------------
book7 = Book.create(
{
    id: 7,
    title: "America and Iran: A History 1720 to the Present",
    author: "John Ghazvinian",
    description: "An important, urgently needed book--a hugely ambitious, illuminating portrait of the two-century long entwined history of Iran and America, the first book to examine in all its aspects, the rich and fraught relations between these two powers, once allies, now adversaries. By admired historian, author of Untapped: The Scramble for Africa's Oil ("he would do Graham Greene proud" --Kirkus Reviews).

In this rich, fascinating history, John Ghazvinian traces the complex story of the relations of these two powers back to the eighteenth-century's Persian Empire, the subject of great admiration of Thomas Jefferson and John Quincy Adams and for the Iranians, an America seen as an ideal to emulate for its own government.

Drawing on years of archival research both in the US and Iran--including access to Iranian government archives rarely available to western scholars--the Iranian-born, Oxford-educated historian leads us through the four seasons of US-Iran relations: the 'spring' of mutual fascination; the 'summer' of early interactions; the 'autumn' of close strategic ties; and the long, dark 'winter' of mutual hatred.

Ghazvinian, with grasp and a storyteller's ability, makes clear where, how, and when it all went wrong. And shows why two countries that once had such heartfelt admiration for each other became such committed enemies; showing us, as well, how it didn't have to turn out this way.",
    isbn: "9780307271815",
    date_published: "October 6th 2020",
    image_url: "",
}
)
book7.cover_photo.attach(io: open(""), filename: "")
# # -----------------------------------------------------------------


#rails db:reset