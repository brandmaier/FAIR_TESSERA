
library(theorytools)
library(dagitty)
library(tidySEM)
library(ggplot2)
shortterm_sequence <-dagitty(
  'dag {

  Triggering_Situation[pos="0,0",label="Triggering Situation"];
  Expectancy[pos="1,1"];
  State_State_Expression[pos="2,0", label="State/State Expression"];
  Reaction[pos="3,0"];

  Triggering_Situation -> Expectancy;
  Expectancy ->  State_State_Expression;
  State_State_Expression -> Reaction;

  Triggering_Situation -> State_State_Expression;
}')

graph_sem(shortterm_sequence)

