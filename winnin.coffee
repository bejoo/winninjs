$(document).ready ->

obj =
	1: 0
	2: 0
	3: 0

names =
	1: "Andrin"
	2: "Nico"
	3: "Joris"

used = []

list = $(".rankings")

randomFromTo = (from, to) ->
	Math.floor Math.random() * (to - from + 1) + from

alreadyWinning = (person, peeps) ->
	while person in used
		person = names[randomFromTo(1, peeps)]
	used.push(person)
	list.append "<li>" + person + "</li>"

people = (peeps) ->
	i = 0
	while i < peeps
		person = names[randomFromTo(1, peeps)]
		alreadyWinning(person, peeps)
		i++

people(3)
