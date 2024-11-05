---
layout: post
title: The Map is not the Territory - A guide to building the engineer's intuition
date: 2024-11-05
---

> *"The map is not the territory, the word is not the thing it describes. Whenever the map is confused with the territory, a 'semantic disturbance' is set up in the organism. The disturbance continues until the limitation of the map is recognized." - Alfred Korzybski*

## The illusion of understanding

One of the biggest pitfalls that inexperienced practitioners fall into is the illusion of understanding. You read a paper, maybe you can't fully grasp it at first, but eventually you find a way to fit it into your knowledge tree, you find the branches that connect to the nodes that are already in your head, and it finally clicks.

But here's the catch—fitting a new idea into your mental framework doesn't mean you understand it, but it sure as hell gives you a lot of confidence that you do. Your knowledge tree might look complete, but some of those branches might be too weak to support any real weight.

Take a concept like model initialization in large language models. Sure, you can explain why we need careful initialization to maintain gradient flow. You've connected it nicely to your existing knowledge about backpropagation and neural networks. But do you really understand why those specific scaling constants work? Could you derive them from first principles if you had to?

A lot of physicists have been attributed some version of the following quote:

> *"If you can't explain it to a 5 year old, you don't really understand it"*

But to our advantage, we have something much more powerful than a 5-year-old at our disposal—a tool that is much dumber, but much more objective: the computer.

## The time-travel test

> *"What I cannot create, I do not understand" - Richard Feynman*

Imagine you've time-travelled back to 2009. 

Your objective - **accelerate the progress of achieving modern AI.**

Surely it can't be that hard? I just need an autograd engine, write some gpu kernels, and we're done, a language model should be around the corner...right? Not so fast. This is the illusion of understanding on steroids right now.

When your 100-layer transformer starts giving NaNs, when your loss refuses to budge, when your gradients explode despite all the tricks you know should work—that's when you realize how many of those branches in your knowledge tree were just for show.

A real time-travel test would be a way to separate the wheat from the chaff. If you can't build a modern LLM in 2009, you don't understand the fundamentals of deep learning.

We can't travel back in time, but we can simulate it on a computer. The best way to maximize the chance that you understand the fundamentals of a thing is to build it. 

I must also mention that not everyone wants to understand things at a level where they could have invented them. And that's totally fine. If you are happy with understanding a system just enough to use it, that's great! I'm personally satisfied with a shallow level of understanding for some things that don't interest me as much or don't have a direct impact on the things i care about.

## The engineer's intuition
If you do this for a while, you'll start noticing patterns in the way you naively fit things into your knowledge tree. You'll be more hesitant to accept new nodes because you've seen it go wrong so many times before. You'll start questioning those seemingly arbitrary constants and magic numbers that make everything work.

You'll start to develop an intuition for what is important and what is not. You'll be better at looking at a map and knowing how much of the territory you're actually seeing. Most importantly, you'll know which branches of your knowledge tree are strong enough to build on, and which ones need more work before they can support any real weight.