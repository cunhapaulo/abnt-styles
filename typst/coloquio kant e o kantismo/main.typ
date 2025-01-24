#import "/sty/coloquio.typ": jmlr
#import "/doc/blindtext.typ": blindtext, blindmathpaper

#set text(lang: "PT" )

#let affls = (
  one: (
    department: "Department of Statistics",
    institution: "University of Washington",
    location: "Seattle, WA 98195-4322",
    country: "USA"),
  two: (
    department: "Division of Computer Science",
    institution: "University of California",
    location: "Berkeley, CA 94720-1776",
    country: "USA"),
)

#let authors = (
  
  (name: "Author One",
   affl: "one",
   email: "one@stat.washington.edu"),
   
  (name: "Author Two",
   affl: "two",
   email: "two@cs.berkeley.edu"),
)

#show: jmlr.with(
  title: [Sample ABNT Paper Template],
  authors: (authors, affls),
  abstract: blindtext,
  keywords: ("keyword one", "keyword two", "keyword three"),
  bibliography: bibliography("/bib/main.bib"),
  appendix: include "/doc/appendix.typ",
  pubdata: (
    id: "21-0000",
    editor: "My editor",
    volume: 1,
    submitted-at: datetime(year: 2024, month: 11, day: 19),
    revised-at: datetime(year: 2024, month: 11, day: 19),
    published-at: datetime(year: 2024, month: 12, day: 20),
  ),
)

= Introduction

#set math.equation(numbering: "(1)")  // There are no numbers in sample paper.
#blindmathpaper

Here is a citation @chow68.

== Acknowledgments and Disclosure of Funding

All acknowledgements go at the end of the paper before appendices and
references. Moreover, you are required to declare funding (financial activities
supporting the submitted work) and competing interests (related financial
activities outside the submitted work). More information about this disclosure
can be found on the JMLR website.
