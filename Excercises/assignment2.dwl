input 
{
  "payload": [
    {
      "Account": {
        "AccountId": "145661114",
        "Name": "Max Mule",
        "Phone": "998-889-8787",
        "SSN": "123-85-6789"
      },
      "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,000,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,000,000.00"
        }
      }
    },
    {
      "Account": {
        "AccountId": "145661113",
        "Name": "Mini Mule",
        "Phone": "123-456-7890",
        "SSN": "254-77-8787"
      },
       "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,123,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,456,000.00"
        }
      }
    }
  ]
} 

script 
%dw 2.0
output application/json
---
{
  payload: payload.payload map (item) -> 
    item ++ {
      Account: item.Account ++ {
        SSN: "***-**-" ++ (item.Account.SSN splitBy "-")[2]
      }
    }
}



/*    {
  "payload": [
    {
      "Account": {
        "AccountId": "145661114",
        "Name": "Max Mule",
        "Phone": "998-889-8787",
        "SSN": "***-**-6789"
      },
      "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,000,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,000,000.00"
        }
      }
    },
    {
      "Account": {
        "AccountId": "145661113",
        "Name": "Mini Mule",
        "Phone": "123-456-7890",
        "SSN": "***-**-8787"
      },,
      "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,123,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,456,000.00"
        }
      }
    }
  ]
} */

output

{
  "payload": [
    {
      "Account": {
        "AccountId": "145661114",
        "Name": "Max Mule",
        "Phone": "998-889-8787",
        "SSN": "123-85-6789"
      },
      "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,000,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,000,000.00"
        }
      },
      "Account": {
        "AccountId": "145661114",
        "Name": "Max Mule",
        "Phone": "998-889-8787",
        "SSN": "123-85-6789",
        "SSN": "***-**-6789"
      }
    },
    {
      "Account": {
        "AccountId": "145661113",
        "Name": "Mini Mule",
        "Phone": "123-456-7890",
        "SSN": "254-77-8787"
      },
      "CreditDebitIndicator": "Credit",
      "Type": "ClosingAvailable",
      "DateTime": "12/12/2022",
      "Amount": {
        "Amount": "10,123,000.00",
        "Currency": "GBP"
      },
      "CreditLine": {
        "Included": false,
        "Type": "Available",
        "Amount": {
          "Currency": "USD",
          "Amount": "1,456,000.00"
        }
      },
      "Account": {
        "AccountId": "145661113",
        "Name": "Mini Mule",
        "Phone": "123-456-7890",
        "SSN": "254-77-8787",
        "SSN": "***-**-8787"
      }
    }
  ]
}
