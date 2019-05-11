---
layout: post
title: CSS TDD - Review
---

On the 19th February 2015 we tried using the Quixote library to test drive the creation of a website, as part of our [CSS TDD event]({% post_url events/2015-02-01-css-tdd %}). 

We had around 14 attendees on the night who didn't have much experience with CSS as they were mainly backend developers. Half of the attendees had used npm before, which we used as a way to pair people together. The feeling in the room at the start was energetic but sceptical.

We gave everyone a [starting repo](https://github.com/codecraftuk/tddcss) and asked them to take some Lorem Ipsum and make it into a two column website. This was explained to be a potential starting off point, and not prescriptive; attendees should explore the tooling and technique as they saw fit.

<img src="/images/layout.png" class="centered-image" />

## The results

Some of the attendees showed frustration with their knowledge of CSS, which prevented them from going as fast as they'd like. Yet no one seemed concerned about having to use Javascript or the Quixote library. Javascript has been somewhat of a lingua franca at our events.

It was interesting seeing some attendees learn that web browsers have default styles. The usual approach to fixing this is to use a reset tool which sets margins to zero, in order to allow the designer to set their own styles.

A problem we saw when running two test runners in Chrome and PhantomJS is that a test can fail in one but not the other. This is probably due to the default styles in each browser. This led participants to move from having hard coded numbers in their tests to using tests that were better abstractions over the ideas being tested, in the same way you would if doing TDD in a more conventional language. For example, to test our two column layout was as expected, we moved from examining absolute width of elements/margins in the tests ("content is 22px away from navigation"), to concepts like "navigation is left of content", "navigation and content are the same height", and "navigation and content are aligned vertically".

[Joe](https://twitter.com/joe_jag) found that after about an hour he didn't have to open the web browser anymore to see if his changes have worked. This experience eerily mimics the experience you have while test driving a programming language.

Two of the pairs left with the intention of introducing TDD CSS to their teams the next day. One said the TDD CSS is something that gave them more confidence that they haven't introduced regressions. The other said that they work with a client who needs to have everything correct to the pixel. Having tests would allow them to stop worrying and avoid rework. It was also suggested you might use a handful of rules to form a house styleguide for new projects in order to have consistent branding.

It's fair to say our time, and thus our experience, was limited, so we really only saw the tip of the iceberg. However, we started with the belief that test driving CSS is an absurd idea. This gave way to people either embracing the approach or swearing never to do CSS again and return to the backend code.