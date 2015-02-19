---
layout: post
title: CSS TDD - Review
---

On the 19th February 2015 we tried using the Quixote library to test drive the creation of a website. 

We had around 14 attendees on the nigh who didn't have much experience with CSS as they were mainly backend developers. Half of the attendees had using npm before, which we used as a way to pair people together. The feeling in the room at the start was optimistic but sceptical.

We gave everyone a [starting repo](https://github.com/codecraftuk/tddcss) and asked them to take some Lorem Ipsum and make it into a two column website.

<img src="/images/layout.png" class="centered-image" />

## The results

Some of the attendees showed frustration with their knowledge of CSS. Which prevented them from going as fast as they'd like. But yet, no one seemed concerned about having to use Javascript or the Quixote library.

It was interesting seeing attendees learn that web browsers have default styles. The usual approach to fixing this is to use a reset tool which sets margins to zero to allow the designer to set their own styles.

A problem we saw when running two test runners in Chrome and PhantomJS is that a test can fail in one but not the other. This is probably due to the default styles in each browser. This led participants to move from having hard coded numbers in their tests to using tests that were more relative based. Like the Nav is left of the Content, but has the same top coordinate. Rather than the Content is 22px away from the Nav.

[Joe](https://twitter.com/joe_jag) found that after about an hour he didn't have to open the web browser anymore to see if his changes have worked. This experience eerily mimics the experience you have while test driving a programming language.

Two of the pairs left with the intention of introducing TDD CSS to their teams the next day. One said the TDD CSS is something that gave them more confidence that they haven't introduced regressions. The other said that they work with a client who needs to have everything correct to the pixel. Having tests would allow them to stop worrying and avoid rework.

We started with the belief that test driving CSS is an absurd idea. This gave way to people either embracing the approach or swearing never to do CSS again and return to the backend code.