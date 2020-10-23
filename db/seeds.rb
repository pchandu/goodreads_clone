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

# review1 = Review.create(
#     {
#         id: 1,
#         book_id: 1,
#         user_id: 2, 
#         rating: 4,
#         body: "lets hope this works!!!!!!!"
#     }
# )
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