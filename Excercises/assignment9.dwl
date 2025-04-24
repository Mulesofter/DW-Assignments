[
  {
    "oderId": "123456",
    "componentId": "11114326",
    "operation": "remove"
  },
  {
    "oderId": "123456",
    "componentId": "11114326",
    "operation": "remove"
  },
  {
    "oderId": "9987456",
    "componentId": "44567889",
    "operation": "add"
  },
  {
    "oderId": "123456",
    "componentId": "11114326",
    "operation": "remove"
  }
]
%dw 2.0
output application/json
---
payload map ((item) -> {
oderId: item.oderId,
componentId: item.componentId,
operation: item.operation
}) distinctBy ((value) -> { "unique": value.oderId} )


/* 
//remove duplicates
[
  {
    "oderId": "9987456",
    "componentId": "44567889",
    "operation": "add"
  }
] */