input 
{
  "id": 1,
  "name": "Electronics",
  "children": [
    {
      "id": 2,
      "name": "Computers",
      "children": [
        {
          "id": 3,
          "name": "Laptops",
          "children": []
        },
        {
          "id": 4,
          "name": "Desktops",
          "children": []
        }
      ]
    },
    {
      "id": 5,
      "name": "Phones",
      "children": [
          
      ]
    }
  ]
}
script
  %dw 2.0
output application/json

fun device(node) =[{ id: node.id, name: node.name }] ++ if (node.children != null and node.children is Array) node.children flatMap (child) -> device(child)
  else []

---
device(payload)


 /*Output:

[
  { "id": 1, "name": "Electronics" },
  { "id": 2, "name": "Computers" },
  { "id": 3, "name": "Laptops" },
  { "id": 4, "name": "Desktops" },
  { "id": 5, "name": "Phones" }
]
Input in hierical structure where each item has a list of children ( those childern may  have their own children, and so on). My task is to iterate over this structure and collect all the items with their id  into a flat list.

output expected:
iterate over the root node (Electronics)Then go to its children (Computers, then Phones)
For each of those, I need to check if they have children (like Computers has Laptops and Desktops)Continue going deeper until you've gathered all the items
And then return a single, flat list containing only the id and name of each item.
*/

  output

  [
  {
    "id": 1,
    "name": "Electronics"
  },
  {
    "id": 2,
    "name": "Computers"
  },
  {
    "id": 3,
    "name": "Laptops"
  },
  {
    "id": 4,
    "name": "Desktops"
  },
  {
    "id": 5,
    "name": "Phones"
  }
]
