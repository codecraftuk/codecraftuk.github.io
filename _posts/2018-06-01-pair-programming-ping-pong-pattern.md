---
layout: post
title: "Pair Programming Ping Pong Pattern"
description: For our June event, we’re doing a Pair Programming and TDD exercise called the Ping Pong Pattern. 7pm, Thursday 21st June 2018, at SAS.
---


For our June event, we’re doing a Pair Programming and TDD exercise called the [Ping Pong Pattern](http://wiki.c2.com/?PairProgrammingPingPongPattern).

We’ll work through a programming exercise in pairs using the pattern and then discuss how we found the process.

Don’t worry if you’ve never pair programmed or done TDD before. We’ll be pairing people up to make sure every pair has at least one person who’s done both.

Please bring along your laptops!

# The Exercise

## Pair Programming Ping Pong Pattern

In pairs:

 * A writes a new test and sees that it fails.
 * B implements the code needed to pass the test.
 * B writes the next test and sees that it fails.
 * A implements the code needed to pass the test.

And so on. Refactoring is done whenever the need arises by whoever is driving.



## The Problem - Bank Account
You are working for a new challenger bank building their backend system.

Please implement the following features:

1. User can check balance

2. User can make a deposit to the account.
  A deposit has:
   - amount,
   - type of 'deposit'
   - 'from' account number. <br/>
   We also need to store the transaction date.<br/><br/>


3. User can make a withdraw from the account.
  A withdrawl has:
   - amount
   - type of 'withdrawl'
   - 'to' account number. <br/>
   Again, please store the date.

4. Account can have an overdraft. If user goes over the overdraft they are fined £10. The transaction type is 'fine'.

5. User can get a list of transactions.

6. Account pays 2% interest on savings, calculated monthly.

If you're not sure about a requirement just make something up, but try to keep things simple. Remember, it's just an excercise! We don't need to worry about GDRP compliance when doing a deposit!.

For simplicity, dont worry about error cases (what if deposit amount is negative? etc).

Either use your favourite lanaguge/tool/framework to build the app or build it online using [codesandbox.com](https://codesandbox.io/s/9349xjlnl4).

Have fun!

# Location
[SAS](https://goo.gl/maps/87Y37xfHY592), Cuprum, 480 Argyle St, Glasgow G2 8NH

We’ll be letting people in from around 6:30pm, but no entry will be possible after 7pm, so please be sharp!

# Details
* CodeCraft Pair Programming Ping Pong Pattern
* Date - Thursday 21st June 2018
* Time - 6:30pm, for 7pm event start
* Location: [SAS](https://goo.gl/maps/87Y37xfHY592)
