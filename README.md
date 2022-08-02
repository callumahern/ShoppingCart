# Shopping Cart Exercise

You're tasked with building an engine for an online supermarket. Given a customer's shopping cart, the engine returns how much the customer has to pay.

Note that it is **not** a requirement that you complete the exercise in the time that you have. The process of coming up with the solution is more important than the complete solution itself.

Treat this exercise as you would a real-life business problem. You can ask for clarification of any domain name or rule. If the business requirement is not clear, assume you have access to a business owner to answer your questions.

## Business case

The Product Owner explains the case as follows:

> A customer can put products in a virtual shopping cart. They can see their bill in realtime, which means subtotals for every item and a grand total.
> For example: if a customer buys 1 apple and 2 bananas, since an apple costs 10 and a banana 20, the subtotals are 10 and 40 for apples and bananas respectively; the grand total is 50.
>
> The supermarket also offers discounts. New discounts are introduced all the time. At the moment, we support the following:
> * **3x2 on apples**: for every 3 apples, one is free
> * **50% on bananas**: all bananas cost 50% less

## What to build

Build a component that returns a bill, with subtotals and totals for any given customer cart, without any discount applied.

The component should also return a separate bill which considers all applicable discounts.

## Example

Let's assume this is the customer cart:

```json
{
  "cart": {
    "apple": 5,
    "banana": 3,
    "coconut": 2,
    "dragonfruit": 1
  }
}
```

And let's assume these are the prices:

```json
{
  "prices": {
    "apple": 40,
    "banana": 20,
    "coconut": 100,
    "avocado": 60
  }
}
```

The output of the module will be as follows:

```json
{
  "bill": {
    "subtotals": {
      "apple": 200,
      "banana": 60,
      "coconut": 200
    },
    "total": 460
  },
  "discounted_bill": {
    "subtotals": {
      "apple": 160,
      "banana": 30,
      "coconut": 200
    },
    "total": 390
  }
}
```
