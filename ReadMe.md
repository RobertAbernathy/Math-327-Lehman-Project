---
output:
  pdf_document: default
  html_document: default
---
I am choosing a pokemon dataset I found on Kaggle ( https://www.kaggle.com/datasets/shreyashautomation/pokemon-stats-dataset ). Originally from PokeAPI created by Paul Hallett (https://pokeapi.co/), the data was taken back in August. The data contains information regarding the pokemon's attributes like weight, height, and game statistics. It doesn't contain gender information nor how different pokemon relate to each other. I am an expert because I have been playing pokemon since I was a kid and know a lot about the inner workings of the games. If I need more data I can get more from PokeAPI.


Questions:
	Whether pokemon differ by what generation they were made in, for example their height, weight, speed?
	How things differ by what type the pokemon is, for example what battle stat does it have as its highest?
	Does shape indicate how difficult it is to capture, for example are fish and bugs easier to capture?


Example Columns:
	"weight_hg" is the pokemon's weight measured in dg (yes the column name is incorrect I checked).
	"capture_rate" measures how hard a pokemon is to capture. The measure goes from 0 to 255. The lower the number the harder to capture.
	"speed" measures how fast a pokemon is to act in battle. Higher numbers means they act faster.
	"shape" is a category that labels the body plan of that pokemon, for example quadraped, fish, snake.
	"type_1" and "type_2" are categories of 16 elements the pokemon can fall into. Each pokemon has either two non-overlapping types or only one type, if there is only one then "type_2" is null.

