# Front-End Nanodegree Project 4

This site can be successfully run on any modern HTTP server and does not need to be in the "root" directory of the site.

## `pizza.html` JavaScript Optimizations

* Fetch all the background pizzas before `updatePositions` runs.
* Only create as many pizzas as the screen can show at any given time.
* Change number of pizzas dynamically on `scroll` events so the number of pizzas is always "just enough" to fill the screen.
* Move functions from within `resizePizzas` to the global scope so they are only instantiated once.
* Completely re-write `resizePizzas` without the use of the twisted functions of the original. In this version, the universal new width is calculated directly as the percentage value returned by the `sizeSwitcher` function (I renamed it to `getPizzaSize` and placed it in the global scope) multiplied by the width of the container. This is only calculated once and is directly applied to the `randomPizzaContainer`s.

I also separated each moving background pizza into its own layer using CSS `will-change`, but I wrote it separately in this readme as it is not a JavaScript optimization.
