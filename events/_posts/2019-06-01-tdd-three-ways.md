---
layout: post
title: "TDD Three Ways"
description: For our June event, we’re trying three different Pair Programming and TDD styles. 6pm, Thursday 20th June 2019, at Incremental Group.
---
[Tickets Here!](https://www.eventbrite.com/e/tdd-in-three-different-ways-tickets-62520884649)

Date  | **Thursday 20th June 2019**
Time | **6:00 pm for 6:30pm start. 9pm finish**
Location &nbsp; | **<a href="https://goo.gl/maps/2We2Q7uUeAGWCxQW6" target="_blank">Incremental Group, 5th Floor, The Garment Factory, 10 Montrose St, Glasgow G1 1RE</a>**

<br/>

For our June event we’re trying three different styles of pair programming using TDD.

 * Ping Pong
 * Silent
 * Beginners Mind

We’ll try each style for 30/40 minutes then share what we learned at the end.

Don’t worry if you’ve never pair programmed or done TDD before. We’ll be pairing people up to make sure every pair has at least one person who’s done both.

Please bring your laptops!

[FREE TICKET REQUIRED!](https://www.eventbrite.com/e/tdd-in-three-different-ways-tickets-62520884649)

## Ping Pong

In pairs:
 * A writes a new test and sees that it fails.
 * B implements the code needed to pass the test.
 * B writes the next test and sees that it fails.
 * A implements the code needed to pass the test.

And so on. Refactoring is done whenever the need arises by whoever is driving.

More info: [Ping Pong Pattern](http://wiki.c2.com/?PairProgrammingPingPongPattern)

## Silent

In pairs:
 * You are not allowed to talk.
 * All the communication is made through code.
 * You are not allowed to use paper or write comments in the code or other files.
 * Set a three minute timer and switch every three minutes.

More info: [Silent](https://blog.adrianbolboaca.ro/2013/10/pair-programming-game-silent-programming/)

## Beginners Mind

In Pairs
-	One person is the driver and does all the coding
-	One person is the navigator and asks beginner, even basic and stupid questions like "what are you doing", "why are you doing this", "tell me what is happening in this code"
-	the driver is not allowed to be angry by the beginner questions of the technical coach; the driver needs to always explain what is their current idea, how they can implement it and why they chose this path.
-	Switch roles when were halfway through

More info: [Beginners Mind](https://blog.adrianbolboaca.ro/2013/10/beginners-mind/)

# The Exercise - Bank Account
You are working for a new challenger bank building their backend system.

Please implement the following features:

1. User can check balance

2. User can make a deposit to the account.
  A deposit has:
   - amount
   - description
   - transaction type of 'deposit'
   - transaction date <br/>
   We also need to store the transaction date.<br/><br/>


3. User can make a withdraw from the account.
  A withdrawl is the same as deposit except it has:
   - transaction type of 'deposit'<br/>

4. Account can have an overdraft. If user goes over the overdraft they are fined £10. The transaction type is 'fine'.

5. User can get a list of transactions.

6. Account pays 2% interest on savings, calculated monthly.

If you're not sure about a requirement just make something up, but try to keep things simple. Remember, it's just an exercise! You don't need to worry about capital gains tax or GDRP compliance!

For simplicity, don't worry about error cases (what if deposit amount is negative? etc).

Use your favourite lanaguge/tool/framework to build the app or build it online using [codesandbox.com](https://codesandbox.io/s/9349xjlnl4).

Have fun!

