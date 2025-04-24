
[

{

"HeaderContNum": [

"00501",

"00501",

"00501",

"00501",

"00501"

]

}

]
%dw 2.0
output application/json


---
payload[0].HeaderContNum map (item) -> {
  HeaderContNum: item
}
/*o
[
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  }
]*/