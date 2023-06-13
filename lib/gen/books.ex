defmodule Gen.Books do
  def books() do
    [
      %{
  title: "The Alchemist",
  author: "Paulo Coelho",
  published: "1989-04-15",
  url: "/images/book-covers/the-alchemist.jpg",
  slug: "the-alchemist"
},

%{
  title: "On Writing -  A memoir of the Craft",
  author: "Stephen King",
  published: "2000-10-03",
  url: "/images/book-covers/on-writing.jpg",
  slug: "on-writing"
},

%{
  title: "Save The Cat! Writes a Novel",
  author: "Jessica Brody",
  published: "2018-10-09",
  url: "/images/book-covers/save-the-cat-writes-a-novel.jpg",
  slug: "save-the-cat-writes-a-novel"
},

%{
  title: "Build",
  author: "Tony Fadell",
  published: "2022-05-02",
  url: "/images/book-covers/build.jpg",
  slug: "build"
},

%{
  title: "Zen and the Art of Motorcycle Maintenance",
  author: "Robert M. Pirsig",
  published: "1974-01-01",
  url: "/images/book-covers/zen-and-the-art-of-motorcycle-maintenance.jpg",
  slug: "zen-and-the-art-of-motorcycle-maintenance"
},

%{
  title: "Radical Candor",
  author: "Kim Scott",
  published: "2017-03-01",
  url: "/images/book-covers/radical-candor.jpg",
  slug: "radical-candor"
},

%{
  title: "War of the Worlds",
  author: "H.G. Wells",
  published: "1898-01-01",
  url: "/images/book-covers/war-of-the-worlds.jpg",
  slug: "war-of-the-worlds"
},

%{
  title: "Make Time",
  author: "Kim Scott",
  published: "2018-09-01",
  url: "/images/book-covers/make-time.jpg",
  slug: "make-time"
},

%{
  title: "Hit Refresh",
  author: "Satya Nadella",
  published: "2017-09-26",
  url: "/images/book-covers/hit-refresh.jpg",
  slug: "hit-refresh"
},

%{
  title: "The Lean Startup",
  author: "Eric Ries",
  published: "2011-09-13",
  url: "/images/book-covers/the-lean-startup.jpg",
  slug: "the-lean-startup"
},

%{
  title: "How to Live",
  author: "Derek Sivers",
  published: "2021-05-28",
  url: "/images/book-covers/how-to-live.jpg",
  slug: "how-to-live"
},

%{
  title: "Anything You Want",
  author: "Derek Sivers",
  published: "2011-06-29",
  url: "/images/book-covers/anything-you-want.jpg",
  slug: "anything-you-want"
},

%{
  title: "Exercised",
  author: "Daniel Lieberman",
  published: "2021-01-05",
  url: "/images/book-covers/exercised.jpg",
  slug: "exercised"
},

%{
  title: "The Order of Time",
  author: "Carlo Rovelli",
  published: "2018-05-08",
  url: "/images/book-covers/the-order-of-time.jpg",
  slug: "the-order-of-time"
},

%{
  title: "How to Keep House While Drowning",
  author: "KC Davis",
  published: "2022-04-26",
  url: "/images/book-covers/how-to-keep-house-while-drowning.jpg",
  slug: "how-to-keep-house-while-drowning"
},

%{
  title: "Surrounded by Idiots",
  author: "Thomas Erikson",
  published: "2019-07-30",
  url: "/images/book-covers/surrounded-by-idiots.jpg",
  slug: "surrounded-by-idiots"
},

%{
  title: "Four Thousand Weeks",
  author: "Oliver Burkeman",
  published: "2021-08-10",
  url: "/images/book-covers/four-thousand-weeks.jpg",
  slug: "four-thousand-weeks"
},

%{
  title: "Making Numbers Count",
  author: "Henrik Kniberg",
  published: "2022-01-11",
  url: "/images/book-covers/making-numbers-count.jpg",
  slug: "making-numbers-count"
},

%{
  title: "Great at Work",
  author: "Thomas Erikson",
  published: "2018-01-30",
  url: "/images/book-covers/great-at-work.jpg",
  slug: "great-at-work"
},

%{
  title: "Do Nothing",
  author: "Celeste Headlee",
  published: "2020-03-10",
  url: "/images/book-covers/do-nothing.jpg",
  slug: "do-nothing"
},

%{
  title: "The Mom Test",
  author: "Rob Fitzpatrick",
  published: "2019-03-22",
  url: "/images/book-covers/the-mom-test.jpg",
  slug: "the-mom-test"
},

%{
  title: "Dune",
  author: "Frank Herbert",
  published: "1965-08-01",
  url: "/images/book-covers/dune.jpg",
  slug: "dune"
},

%{
  title: "Effortless",
  author: "Greg McKeown",
  published: "2021-04-26",
  url: "/images/book-covers/effortless.jpg",
  slug: "effortless"
},

%{
  title: "The Minimalist Entrepreneur",
  author: "Sahil Lavingia",
  published: "2021-10-26",
  url: "/images/book-covers/the-minimalist-entrepreneur.jpg",
  slug: "the-minimalist-entrepreneur"
},

%{
  title: "Radical Relevance",
  author: "Bill Cates",
  published: "2019-10-26",
  url: "/images/book-covers/radical-relevance.jpg",
  slug: "radical-relevance"
},

%{
  title: "The End of the World is Just the Beginning",
  author: "Peter Zeihan",
  published: "2022-06-14",
  url: "/images/book-covers/the-end-of-the-world-is-just-the-beginning.jpg",
  slug: "the-end-of-the-world-is-just-the-beginning"
},

%{
  title: "The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job",
  author: "Patrick J. McGinnis",
  published: "2016-04-12",
  url: "/images/book-covers/10-percent-entrepreneur.jpg",
  slug: "10-percent-entrepreneur"
},

%{
  title: "10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works - A True Story",
  author: "Dan Harris",
  published: "2019-04-16",
  url: "/images/book-covers/10-percent-happier.jpg",
  slug: "10-percent-happier"
},

%{
  title: "12 Rules for Life: An Antidote to Chaos",
  author: "Jordan B. Peterson",
  published: "2018-01-12",
  url: "/images/book-covers/12-rules-for-life.jpg",
  slug: "12-rules-for-life"
},

%{
  title: "1984",
  author: "George Orwell",
  published: "1949-06-08",
  url: "/images/book-covers/1984.jpg",
  slug: "1984"
},

%{
  title: "Lean From the Trenches: Managing Large Scale Projects with Kanban",
  author: "Henrik Kniberg",
  published: "2011-12-01",
  url: "/images/book-covers/lean-from-the-trenches.jpg",
  slug: "lean-from-the-trenches"
},

%{
  title: "Never Split the Difference: Negotiating As If Your Life Depended On It",
  author: "Chriss Voss",
  published: "2016-05-17",
  url: "/images/book-covers/never-split-the-difference.jpg",
  slug: "never-split-the-difference"
},

%{
  title: "Real-World Kanban: Do Less, Accomplish More with Lean Thinking",
  author: "Mattias Skarin",
  published: "2015-06-01",
  url: "/images/book-covers/real-world-kanban.jpg",
  slug: "real-world-kanban"
},

%{
  title: "Essentialism",
  author: "Greg McKeown",
  published: "2014-04-14",
  url: "/images/book-covers/essentialism.jpg",
  slug: "essentialism"
},

%{
  title: "World War Z: An Oral History of the Zombie War",
  author: "Max Brooks",
  published: "2007-10-16",
  url: "/images/book-covers/world-war-z.jpg",
  slug: "world-war-z"
},

    ]
  end
end
