[
  {
    "bookId": "101",
    "title": "world history",
    "price": "19.99"
  },
  {
    "bookId": "202",
    "title": "the great outdoors",
    "price": "15.99"
  },
   {
    "bookId": "203",
    "title": "the great outdoors",
    "price": "15.99"
  }

]
%dw 2.0
output application/json
---
payload map ((item, index) -> {(index): item} )

/*
 o/p[
  {
    "0": {
      "bookId": 101,
      "title": "world history",
      "price": 19.99
    }
  },
  {
    "1": {
      "bookId": 202,
      "title": "the great outdoors",
      "price": 15.99
    }
  },
  {
    "5": {
      "bookId": 203,
      "title": "the great outdoors",
      "price": 15.99
    }
  }
]
*/