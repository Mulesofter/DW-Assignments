[
  {
    "Last Name": "Ane",
    "Empl Number": "8631"
  },
    {
    "Last Name": "xyz",
    "Empl Number": "15975"
  }

]

} %dw 2.0
output application/csv header= true
---
payload

/*
o/p

"Last Name","Empl Number"
"Ane","8631"
"xyz","15975"*/