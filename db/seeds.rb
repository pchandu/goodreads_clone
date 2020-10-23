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

demo2 = User.new(username: "Debby Shanks", email: "debby@guest.com", password: "password")
demo2.save!

demo3 = User.new(username: "Jose Brandon", email: "Jose Brandon@guest.com", password: "password")
demo3.save!

demo4 = User.new(username: "Josue Castaneda", email: "Josue Castaneda@guest.com", password: "password")
demo4.save!

demo5 = User.new(username: "Michelle Lui", email: "Michelle Lui@guest.com", password: "password")
demo5.save!

demo6 = User.new(username: "Henry Smith", email: "Henry Smith@guest.com", password: "password")
demo6.save!

demo7 = User.new(username: "Tom Hanks", email: "Tom Hanks@guest.com", password: "password")
demo7.save!

demo8 = User.new(username: "Barack Obama", email: "Barack Obama@guest.com", password: "password")
demo8.save!

demo9 = User.new(username: "John Appleseed", email: "John Appleseed@guest.com", password: "password")
demo9.save!

demo10 = User.new(username: "Tito Brandy", email: "tito@guest.com", password: "password")
demo10.save!


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
        author_id: 2, 
        rating: 5,
        body: "There's a lot in here that you've probably heard before if you read this stuff, but it is so comprehensive and so easy to read that I would highly recommend it."
    }
)

review2 = Review.create(
    {
        id: 2,
        book_id: 1,
        author_id: 3, 
        rating: 5,
        body: "I wish I'd had this as a resource when I was in college. This reads like a textbook, and I mean that in the best possible way. The author manages to draw from so many disciplines at the same time. The book is superbly researched and a tremendous boon to cultural anthropology, archaeology, sociology, and biology."
    }
)

review3 = Review.create(
    {
        id: 3,
        book_id: 1,
        author_id: 6, 
        rating: 2,
        body: "28th book for 2020.

A pop-science book covering somewhat similar ground to Sapiens, exploring grand themes of evolution and culture.

Although I liked Vince's earlier book on Adventures in the Anthropocene, I found her latest book poorly written, with an annoyingly discursive writing style, meandering from point to point, making grand statements along the way, many questionable, most unreferenced.

Disappointing.

2-stars."
    }
)

review4 = Review.create(
    {
        id: 4,
        book_id: 1,
        author_id: 9, 
        rating: 3,
        body: "The endless fascination with human history and evolution at the largest scale is due to the fact that the human story seems so improbable. Humans are simply one species of primate, sharing with chimpanzees both a recent common ancestor and 98.6 percent of their DNA. Yet culturally, humans and chimps could not be more different. Chimpanzees do not experience cultural evolution or cumulative gains in knowledge, and therefore chimps today live in much the same way as they did thousands of years ago. Humans, on the other hand, went from nomadic hunter-gatherers to exploring the outer reaches of space in the same span of time. How can we account for such a large discrepancy between two closely related species? How is it that only humans have managed to escape the prison of genetic determinism?

Gaia Vince, in her latest book, Transcendence, provides the answer; she identifies four themes or elements around which the human story revolves. Together, they explain how we humans, “born a species entirely determined by our planet,” were able to “modify our earthly nest and control our fertility, until we became the only species to determine its own destiny.”

The story begins with human control of fire, which stimulated brain growth by unlocking the nutrients of cooked foods. Fire would allow humanity to outsource its energy needs, enabling us to transcend the limits of our biology and environment. The control of fire would lead to the invention of pottery, metallurgy, cities, and eventually to all modern technology.

The next element is language. Just as biological evolution requires high-fidelity copying of genetic information, with the occasional random mutation, cultural evolution requires the high-fidelity copying and transmission of stories and ideas through language. Unlike the slow timescales of biological evolution, however, cultural evolution is not dependent on random mutation; instead, ideas are consciously shaped and quickly improved upon.

The third element is beauty, which provides subjective meaning to our lives through its expression in art, music, literature, architecture, philosophy, religion, and more. Additionally, our desire for beautiful objects, apart from their functionality, is one of the primary catalysts for economic exchange.

The fourth and final element is time, which allows us to contemplate the past and plan for the future. Unlike other animals, humans can think ahead, using reason, to make predictions about future events and to assess the accuracy of those predictions, leading to the development of science and experiment and greater control of our environment.

Other animals lack these essential elements of cultural evolution. Animals cannot control fire and outsource their biological energy needs; they cannot transcend the present moment to contemplate time and future events and plan alternative behaviors; they cannot, through language, express abstract ideas related to the contemplation of their own thinking; and they do not value objects simply for their beauty, independent of their functionality. And so animals cannot evolve culturally, whereas humans, through these four elements, can.

This is an interesting way to present the human story, and Vince should be commended on the effort. However, the book is not without its limitations. First, its originality could be questioned; in other accounts of human “big history,” all of the elements Vince addresses—fire, language, beauty, and time/reason—are usually addressed in a similar manner, albeit not organized thematically by chapter.

Yuval Harari’s Sapiens, for example, provides a similar account. Harari describes human cultural evolution in terms of a “cognitive revolution” that resulted in abstract thinking, language, reason, science, etc. The reader of Transcendence might wonder how Vince’s four elements are not simply part of this “cognitive revolution.” The control of fire, the contemplation of time, reason, and beauty, and the transmission of ideas through language are all cognitive tasks. And so you’re not getting any special insights from this book that you would not also get from a book like Sapiens. In fact, many of the ideas and studies in the book are familiar, and I constantly got the feeling that I had read all of this before.

Second, you lose something by deciding not to present the human story as a chronological account, as the narrative jumps back and forth and feels like a series of articles rather than a true narrative.

And finally, the book is short on a host of important historical, political, and economic details, and it does not cover much of anything regarding the history of ideas or philosophy. If you believe, as I do, that ideas are powerful drivers of change, you might be disappointed to find a lack of information on important historical revolutions in human thought.

Verdict: A well-written account of human history that correctly identifies the key elements driving cultural evolution, with fascinating details for any reader that is new to the subject. Otherwise, the book falls short in terms of originality and delivers few new insights for experienced readers."
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

review5 = Review.create(
    {
        id: 5,
        book_id: 2,
        author_id: 11, 
        rating: 4,
        body: "A confrontation with the often forgotten stations of incarnation.

The author tackles a variety of topics in his first work and shows similarities with human norms in the animal kingdom in state formation, social and sexual behavior, drug use and rudimentary agriculture by using evolutionary development. The origins and history of communication, xenophobia, art, and warfare are also illuminated in detail.

The influence of environmental conditions can be well explained by the differences between bonobos and chimpanzees. Separated by the insurmountable Congo, the peaceful, matriarchal life of the bonobos developed in an environment of sufficient and comfortable living conditions, while the habitat of the hierarchically structured and highly violent chimpanzees was rather barren and inhospitable. Thus, the thesis comes up: Adverse environmental conditions would require stricter rankings and an evolution promoting aggressive behavior. On the other hand, the wealth of resources enables the bonobos to cooperate socially and peacefully without the necessity of aggression.

In contradiction to this, however, there are both other animal species and specialized groups of people, who still treat each other friendly in the most adverse conditions. To start directly and just with the assumption of the necessity of a more brutal mentality would be too far-fetched and simplified. There are for instance the inexplicable, for the own group sometimes even harmful, behavioral patterns of chimpanzees such as senseless violence, incitement, and persecution of individual group members and genocides in conquest campaigns including cannibalism, which all together already gives a pretty good description of modern humans.

Moreover, bonobos are threatened of extinction because they are defenseless against organized animal attacks or rather raids organized by the chimpanzees, which can be described as an animal precursor to genocide. This shows impressively and sadly that the mentality of humankind awoke long before our rise to power.

It is close to impudence how often Diamond has used parts of this book for his other, later published books. Thus, portions of the chapter on the conquerors of the world were included in the book Guns Germs and Steel and sections on the meaning of the habitat are found in Collapse: Why Societies Survive or Perish.

In the case of personal interest, the reading of the detailed descriptions of both works is, in any case, an option if the relatively short explanations of this work have made one curious.
There are few arguments against the preference to blame humans as the most likely cause of past species extinction and as a secondary cause of climate change, given the apparent archaeological evidence. It may well be that the evolution of ice and warm periods in specific regions had stronger influences, but especially in the always relatively moderate climates, this argument does not withstand because of the adaptability of most animals.
It is argued by skeptics that the finding of fossils is a random gamble that does not allow serious estimates of numbers. Only if one finds excessively many bones of extinct animals in the sediment layers coinciding with human migrations, this should be a clear indication.

At the end of the book, Diamond asks people to avoid the always same mistakes and the cycles of expansion, species extinction, and environmental degradation and at least not do more damage. It is a noble concern because it must be incredibly frustrating, especially from the perspective of an evolutionary biologist, to observe over decades how habitats, that are still to be explored, are irreversibly destroyed right in front of one's nose."
    }
)

review6 = Review.create(
    {
        id: 6 ,
        book_id: 2,
        author_id: 9, 
        rating: 2,
        body: "Diamond packs a lot of interesting information into this book & it flows well, but it's old (1992) so a lot of his information is outdated. Worse, his conclusions shouldn't be trusted. In several cases, I knew enough about the subject to catch him completely misunderstanding it & making his points based on cherry-picked data. That's bad science which he hides fairly well behind parts of conflicting views. Read this only for the interesting trivia (much of which is repetitive) but don't be swayed by his conclusions except perhaps in his actual fields which are geography & anthropology, I think.

Well narrated & interesting, but since I can't trust him, I can't give this a high mark. That's a shame. I'll put more comments after the various sections."
    }
)

review7 = Review.create(
    {
        id: 7,
        book_id: 2,
        author_id: 10, 
        rating: 5,
        body: "This is a wonderful book by a great author. In fact, I prefer this book to the other books that I've read by Jared Diamond. It is entertaining, informative, and every page is interesting. The book covers a vast range of topics, such as how are humans qualitatively different from other animals, why do men do stupid things to impress women, why do people practice adultery, why do humans practice genocide, how did languages evolve, why do some people become addicted to drugs, why do humans produce art, and why do humans age. The book ends with the ecological harm humans have done to the planet (not just recently, but in ancient times as well), and the extinctions of species that we cause. Diamond shows how none of these activities are unique to humans; each activity has some analog in animal behavior, as well.

Like Diamond's other books, there is plenty of speculation here. He makes sweeping generalizations that are not always held up by documented facts. But Diamond's enthusiasm rings loud and clear, and his speculations always sound reasonable, at least to me."
    }
)


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

    review8 = Review.create(
    {
        id: 8,
        book_id: 3,
        author_id: 7, 
        rating: 3,
        body: "Pros: a great primer on the psychological tendencies that pull us all in certain directions, mostly to the detriment of our rational goals. Robert Greene identifies 18 such “laws,” providing historical and biographical sketches that demonstrate each law in practice. He then provides strategies for turning each law—with its inherent self-destructive tendencies—into an advantage. The author draws on a vast storehouse of examples, and his emphasis on rationality and examples from ancient Greece are well received.

Cons: Some of the chapters can drag as the author repeats the same point, and you get the feeling that the book could have been made shorter without loss of content. It’s also difficult to tell which ideas are supported by solid science/research and which are not, as this is not spelled out within the text. Some ideas are backed by solid historical and scientific evidence, such as his chapter on narcissism, but in other sections the ideas are more dubious, as, for example, when the author seems to believe that Milton Erickson recovered quicker from polio through his mental stimulation of his nerves. The author makes more of the mind-body connection, particularly in regard to the recovery from illness, than the literature supports.

In the introduction, the author notes that he will rely on the psychological research of leading academics like Daniel Kahneman, but then within the main body of the text uses the ideas of Milton Erickson and Carl Jung, both controversial psychologists of dubious authenticity. I get the feeling that Greene is using the examples that he either relates to better or fits his ideas better, rather than using more contemporary research, so you have to wonder if Greene himself is falling victim to the confirmation bias as he has to reach back to 1919 (in the case of Erickson) to find a psychologist that fits his narrative.

Overall, the book provides valuable insights and advice, but it can be difficult to separate the wheat from the chaff when every idea is presented forcefully as the truth in equally confident terms. You will gain some valuable insights from reading this book, to be sure, but it’s best to do so with a skeptical mind."
    }
    )
    review9 = Review.create(
    {
        id: 9,
        book_id: 3,
        author_id: 8, 
        rating: 1,
        body: "Robert Greene again looks at everything from distance. He mentions a lot of names, so his story can hold to something, but in fact, his research is awful.

When he mentions Disney park in Paris, he mentions that the park wasn't a success because people in France dont like to stay in lanes. They also expect beer and wine in theme parks, and there was a lack of such a beverage.

I recently read another book, also mentioning this park. The author saw that Paris Disneyland was set up the same way USA park was. Planned for a 3day stay, with hotels and everything visitors may need. They only forgot one thing - in Paris, there are 15 attractions. Disneylands in the USA have 3times more. They had the number of visitors right (22thousand/year if I remember right), but they have them for only one day - this was enough to ride every rollercoaster, and people had no reason to stay in hotels they build.

Of course its easier to say that people in France hate queues and love alcohol. Well written Robert.

This raises a question, what would happen if we would spend 10 minutes researching every single fact he serves?"
    }
)
    review30 = Review.create(
    {
        id: 30,
        book_id: 3,
        author_id: 1, 
        rating: 5,
        body: "Just hit repeat once you’re finished it.

And again.
And again.

This content is the stuff of life, business, love, etc.

Robert Greene will be looked back on hundreds of years from now as one of the great thinkers of our time."
    }
)
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

# review11 = Review.create(
#     {
#         id: 11,
#         book_id: 1,
#         author_id: 5, 
#         rating: 2,
#         body: ""
#     }

# review12 = Review.create(
#     {
#         id: 12,
#         book_id: 1,
#         author_id: 5, 
#         rating: 2,
#         body: ""
#     }
    
# review13 = Review.create(
#     {
#         id: 13,
#         book_id: 1,
#         author_id: 5, 
#         rating: 2,
#         body: ""
#     }
    
# review14 = Review.create(
#     {
#         id: 14,
#         book_id: 1,
#         author_id: 5, 
#         rating: 2,
#         body: ""
#     }

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
book5.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/5.jpg"), filename: "5.jpg")
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
book6.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/6.jpg"), filename: "6.jpg")
# # -----------------------------------------------------------------
book7 = Book.create(
{
    id: 7,
    title: "America and Iran: A History 1720 to the Present",
    author: "John Ghazvinian",
    description: "An important, urgently needed book--a hugely ambitious, illuminating portrait of the two-century long entwined history of Iran and America, the first book to examine in all its aspects, the rich and fraught relations between these two powers, once allies, now adversaries. By admired historian, author of Untapped: The Scramble for Africa's Oil (he would do Graham Greene proud --Kirkus Reviews).

In this rich, fascinating history, John Ghazvinian traces the complex story of the relations of these two powers back to the eighteenth-century's Persian Empire, the subject of great admiration of Thomas Jefferson and John Quincy Adams and for the Iranians, an America seen as an ideal to emulate for its own government.

Drawing on years of archival research both in the US and Iran--including access to Iranian government archives rarely available to western scholars--the Iranian-born, Oxford-educated historian leads us through the four seasons of US-Iran relations: the 'spring' of mutual fascination; the 'summer' of early interactions; the 'autumn' of close strategic ties; and the long, dark 'winter' of mutual hatred.

Ghazvinian, with grasp and a storyteller's ability, makes clear where, how, and when it all went wrong. And shows why two countries that once had such heartfelt admiration for each other became such committed enemies; showing us, as well, how it didn't have to turn out this way.",
    isbn: "9780307271815",
    date_published: "October 6th 2020",
    image_url: "",
}
)
book7.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/7.jpg"), filename: "7.jpg")
# # -----------------------------------------------------------------
book8 = Book.create(
{
    id: 8,
    title: "Proof of Corruption: Bribery, Impeachment, and Pandemic in the Age of Trump",
    author: "Seth Abramson",
    description: "In the third volume of his Proof series, New York Times bestselling author Seth Abramson takes readers on a deep dive into the Ukraine scandal, revealing it to be more sinister, complex, and transnational than previously thought. Abramson’s research on Trump administration corruption positions the Ukraine scandal as the foreseeable culmination of years of clandestine machinations involving scores of players, from Beijing to Budapest, Ankara to Caracas, Warsaw to Jerusalem, Kyiv to Riyadh, and Moscow to D.C.

While many know about the July 2019 telephone call that ignited the Ukraine scandal, most don’t know about the concurrent attempts by members of Trump’s inner circle to take over Ukraine’s national gas company and bolster dangerous pro-Kremlin Ukrainian oligarchs—moves that would have benefited Putin and destabilized Ukraine’s government and economy.

In Beijing, Trump’s dealings with the Chinese government not only enriched him and his family, but also culminated in him successfully seeking 2020 election interference from Xi Jinping in the form of closely held information about Joe Biden. In Venezuela, many of the actors involved in the Ukraine scandal engaged in similarly secretive, Kremlin-friendly negotiations that undermined U.S. policy. In Syria and Iraq, Trump’s personal indebtedness to autocrats in Turkey, Israel, Saudi Arabia, and the UAE cost untold lives. And Abramson brings the story back to an increasingly fractured and depleted United States, where the COVID-19 pandemic exposes the staggering domestic consequences of the Trump administration’s foreign machinations.

In Proof of Corruption, Seth Abramson lays bare Trump’s decades-long pattern of corruption. This globe-spanning narrative is an urgent warning about the unprecedented threat posed by a corrupt president and his administration.",
    isbn: "9781250272997",
    date_published: "September 8th 2020",
    image_url: "",
}
)
book8.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/8.jpg"), filename: "8.jpg")
# # -----------------------------------------------------------------
book9 = Book.create(
{
    id: 9,
    title: "Black Heroes of the Wild West",
    author: "James Otis Smith",
    description: "True stories from the Wild West, but not like you’ve seen in the movies.
    This graphic novel by JAMES OTIS SMITH celebrates the extraordinary true tales of three black heroes who took control of their destinies and stood up for their communities in the Old West. Born into slavery in Tennessee, Mary Fields became famous as “Stagecoach Mary,” a cigar-chomping, cardplaying coach driver who never missed a delivery. Bass Reeves, the first black Deputy US Marshal west of the Mississippi, was one of the wiliest lawmen in the territories, bringing thousands of outlaws to justice with his smarts. Bob Lemmons lived to be 99 years old and was so good with horses that the wild mustangs on the plains of Texas took him for one of their own.",
    isbn: "9781943145522",
    date_published: "September 15th 2020",
    image_url: "",
}
)
book9.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/9.jpg"), filename: "9.jpg")
# # -----------------------------------------------------------------
book10 = Book.create(
{
    id: 10,
    title: "Fault Lines in the Constitution: The Graphic Novel: The Framers, Their Fights, and the Flaws That Affect Us Today",
    author: "Cynthia Levinson, Sanford Levinson, Ally Shwed",
    description: "The latest volume in our World Citizen Comics graphic novel series, Fault Lines in the Constitution teaches readers how this founding document continues to shape modern American society.

In 1787, after 116 days of heated debates and bitter arguments, the United States Constitution was created. This imperfect document set forth America’s guiding principles, but it would also introduce some of today's most contentious political issues—from gerrymandering, to the Electoral College, to presidential impeachment.

With colorful art, compelling discourse, and true stories from America's past and present, Fault Lines in the Constitution: The Graphic Novel sheds light on how today's political struggles have their origins in the decisions of our Founding Fathers.

Children’s book author Cynthia Levinson, constitutional law scholar Sanford Levinson, and artist Ally Shwed deftly illustrate how contemporary problems arose from this founding document—and then they offer possible solutions. ",
    isbn: "9781250211613",
    date_published: "September 22th 2020",
    image_url: "",
}
)
book10.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/10.jpg"), filename: "10.jpg")
# # -----------------------------------------------------------------
book11 = Book.create(
{
    id: 11,
    title: "JFK: Coming of Age in the American Century, 1917-1956",
    author: "Fredrik Logevall",
    description: "By the time of his assassination in 1963, John F. Kennedy stood at the helm of the greatest power the world had ever seen, a booming American nation he had steered through some of the most perilous diplomatic standoffs of the Cold War era. Born in 1917 to a striving Irish American family that had ascended the ranks of Boston's labyrinthine political machine, Kennedy was bred for government, and his meteoric rise to become the youngest elected president ever cemented his status as one of the most mythologized political figures in American history. And yet, in the decades since his untimely death, hagiographic portrayals of his dazzling charisma, reports of his extramarital affairs, and disagreements over his political legacy have made our 35th president more mysterious than ever--a problem further exacerbated by the fact that no genuinely comprehensive account of his life has yet been attempted.

Beckoned by this gap in our historical knowledge, Fredrik Logevall has spent seven years searching for the real JFK. The result of this prodigious effort is a sweeping two-volume biography that, for the first time, properly contextualizes Kennedy amidst the roiling American Century. Beginning with the three generations of Kennedy men and women who transformed the clan from working-class Irish immigrants to members of Boston's political elite, Volume One spans the first thirty-nine years of JFK's life, from sickly second son to restless Harvard undergraduate and World War II hero, through his ascendance on Capitol Hill and, finally, his decision to run for president.

In chronicling Kennedy's extraordinary life and times, Logevall offers the clearest portrait we have of an iconic, yet still elusive, American president.",
    isbn: "9780812997132",
    date_published: "September 8th 2020",
    image_url: "",
}
)
book11.cover_photo.attach(io: open("https://historyreads-dev.s3.amazonaws.com/11.jpg"), filename: "11.jpg")
# # -----------------------------------------------------------------


#rails db:reset