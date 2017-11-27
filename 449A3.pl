/*
** Starter code for CPSC 449 Assignment #3
**
** Search for "Part <n>" to find the insertion points for the different
** parts of the assignment.
*/

/*
** Prerequisite information for non-computer science courses.
*/
prereqFor(amat217, []).
prereqFor(amat219, X) :-
  member(X, [[amat217], [math249], [math251], [math281, math211]]).
prereqFor(amat311, [X]) :-
  member(X, [math253, math267, math277, math283, amat219]).
prereqFor(math211, []).
prereqFor(math213, []).
prereqFor(math249, []).
prereqFor(math251, []).
prereqFor(math253, [X]) :-
  member(X, [math249, math251, math281, amat217]).
prereqFor(math265, []).
prereqFor(math267, [X]) :-
  member(X, [math249, math265, math275, math281, amat217]).
prereqFor(math275, []).
prereqFor(math277, [X]) :-
  member(X, [math275, amat217]).
prereqFor(math281, []).
prereqFor(math283, [math281]).
prereqFor(math271, [math211]).
prereqFor(math273, []).
prereqFor(math311, [X]) :-
  member(X, [math211, math213]).
prereqFor(math313, [X]) :-
  member(X, [math211, math213]).
prereqFor(math321, [X]) :-
  member(X, [math253, math263, math283, amat219]).
prereqFor(math331, [X, Y]) :-
  member(X, [math253, math267, math277, math283, amat219]),
  member(Y, [math211, math213]).
prereqFor(stat205, []).
prereqFor(stat211, []).
prereqFor(stat213, []).
prereqFor(stat321, [X]) :-
  member(X, [math267, math277, math253, math283, amat219]).
prereqFor(phil279, []).
prereqFor(phil377, []).
prereqFor(pmat315, [X]) :-
  member(X, [math211, math213]).
prereqFor(pmat331, []).
prereqFor(ensf409, [encm339]).
prereqFor(ensf480, [ensf409, encm369]).
prereqFor(encm339, [engg233]).
prereqFor(encm369, [encm339, enel353]).
prereqFor(enel353, X) :-
  member(X, [[admission_to_enel_or_ensf], [cpsc233, math271]]).
prereqFor(seng300, [X]) :-
  member(X, [cpsc319, cpsc331]).
prereqFor(seng301, [X]) :-
  member(X, [cpsc319, cpsc331]).
prereqFor(engg233, []).
prereqFor(admission_to_enel_or_ensf, []).

/*
** Courses that require consent of the department should include consent
** followed by the course number in their prerequisite lists.
*/
prereqFor(consent235, []).
prereqFor(consent399, []).
prereqFor(consent499, []).
prereqFor(consent502, []).
prereqFor(consent503, []).
prereqFor(consent527, []).
prereqFor(consent528, []).
prereqFor(consent550, []).
prereqFor(consent568, []).
prereqFor(consent581, []).
prereqFor(consent584, []).
prereqFor(consent585, []).
prereqFor(consent594, []).
prereqFor(consent598, []).
prereqFor(consent599, []).

/*
** Prerequisites for computer science courses that can only have their
** prerequisites satisfied in one way.
*/
prereqFor(cpsc105, []).
prereqFor(cpsc203, []).
prereqFor(cpsc217, []).
prereqFor(cpsc219, [cpsc217]).
prereqFor(cpsc231, []).
prereqFor(cpsc233, [cpsc231]).
prereqFor(cpsc235, [consent235]).
prereqFor(cpsc399, [consent399]).
prereqFor(cpsc499, [consent499]).
prereqFor(cpsc502, [consent502]).
prereqFor(cpsc503, [consent503]).
prereqFor(cpsc511, [cpsc413]).
prereqFor(cpsc513, [cpsc313]).
prereqFor(cpsc517, [cpsc413]).
prereqFor(cpsc522, [cpsc522]).
prereqFor(cpsc526, [cpsc441]).
prereqFor(cpsc527, [cpsc313, cpsc457, consent527]).
prereqFor(cpsc528, [cpsc313, cpsc457, consent528]).
prereqFor(cpsc550, [cpsc457, consent550]).
prereqFor(cpsc559, [cpsc457]).
prereqFor(cpsc561, [cpsc413]).
prereqFor(cpsc565, [cpsc433]).
prereqFor(cpsc567, [cpsc457, cpsc433]).
prereqFor(cpsc568, [cpsc433, consent568]).
prereqFor(cpsc571, [cpsc461, cpsc471]).
prereqFor(cpsc572, [cpsc571]).
prereqFor(cpsc581, [cpsc481, consent581]).
prereqFor(cpsc584, [cpsc481, consent584]).
prereqFor(cpsc585, [cpsc453, consent585]).
prereqFor(cpsc587, [cpsc453]).
prereqFor(cpsc589, [cpsc453]).
prereqFor(cpsc591, [cpsc453]).
prereqFor(cpsc594, [consent594]).
prereqFor(cpsc598, [consent598]).
prereqFor(cpsc599, [consent599]).

/*
** Part 1: Add rules for the other computer science courses here.  (I have
**         given you cpsc331 to help you get started).
*/
prereqFor(cpsc331, [M, C]) :- 
  member(M, [math271, math273]), 
  member(C, [cpsc219, cpsc233, cpsc235, encm339]).
  
prereqFor(cpsc313, [M, C, P]) :- 
  member(M, [math271, math273]), 
  member(C, [cpsc219, cpsc233, cpsc235]),
  member(P, [phil279, phil377]).
  
prereqFor(cpsc319, [C]) :- 
  member(C, [cpsc219, cpsc233, cpsc235, encm339]).

prereqFor(cpsc329, [C, E]) :- 
  member(C, [cpsc217, cpsc231, cpsc235]),
  member(E, [engg233]).
  
prereqFor(cpsc335, [C]) :- 
  member(C, [cpsc319, cpsc331]).
  
prereqFor(cpsc355, [C]) :- 
  member(C, [cpsc219, cpsc233, cpsc235]).
  
prereqFor(cpsc359, [C, P]) :- 
  member(C, [cpsc355]),
  member(P, [phil279, phil377]).
  
prereqFor(cpsc411, [C]) :- 
  member(C, [cpsc319, cpsc331]).
  
prereqFor(cpsc413, [C, C1, M, M1]) :- 
  member(C, [cpsc313]),
  member(C1, [cpsc331, (cpsc319; cpsc105)]),
  member(M, [math211, math213]),
  member(M1, [math249, math251, math265, math275, math281, amat217]).
  
prereqFor(cpsc418, [C, M]) :- 
  member(C, [cpsc331, (cpsc319; cpsc105)]),
  member(M, [math271, math273, pmat315]).
  
prereqFor(cpsc433, [C, P]) :- 
  member(C, [cpsc313]),
  member(P, [phil279, phil377]).
  
prereqFor(cpsc441, [C, C1]) :- 
  member(C, [cpsc319, cpsc331]),
  member(C1, [cpsc325, cpsc359, encm369]).
  
prereqFor(cpsc449, [C, P]) :- 
  member(C, [cpsc319, cpsc331]),
  member(P, [phil279, phil377]).
  
prereqFor(cpsc453, [C, M, M1]) :- 
  member(C, [cpsc319, cpsc331]),
  member(M, [math211, math213]),
  member(M1, [math253, math267, math277, math283, amat219]).
  
prereqFor(cpsc457, [C, C1]) :- 
  member(C, [cpsc319, cpsc331]),
  member(C1, [cpsc325, cpsc359, encm369]).
  
prereqFor(cpsc461, [C, C1]) :- 
  member(C, [cpsc355]),
  member(C1, [cpsc319, cpsc331]).
  
prereqFor(cpsc471, [C]) :- 
  member(C, [cpsc319, cpsc331]).
  
prereqFor(cpsc481, [S]) :-
  member(S, [seng300, seng301, senge480]).
  
prereqFor(cpsc491, [C, M, M1]) :- 
  member(C, [cpsc319, cpsc331]),
  member(M, [math211, math213]),
  member(M1, [math249, math251, math265, math275, math281, amat217]).
  
prereqFor(cpsc501, [C]) :- 
  member(C, [cpsc349, cpsc449]).
  
prereqFor(cpsc518, [M, C]) :- 
  member(M, [math211, math213]), 
  member(C, [cpsc413]).
  
prereqFor(cpsc519, [M, C]) :- 
  member(M, [math311, math313]), 
  member(C, [cpsc413]).
  
prereqFor(cpsc521, [C, C1]) :- 
  member(C, [cpsc313]),
  member(C1, [cpsc349, cpsc449]).
  
prereqFor(cpsc525, [M, C]) :- 
  member(M, [math271, math273]), 
  member(C, [cpsc457]).
  
prereqFor(cpsc530, [C, M, ST]) :- 
  member(C, [cpsc219, cpsc233, cpsc235]),
  member(M, [math271, math273, pmat315]),
  member(ST, [stat205, stat211, stat213, stat321, math321]).
  
prereqFor(cpsc531, [C, ST]) :-
  member(C, [cpsc457]),
  member(ST, [stat205, stat211, stat213, stat321, math321]).
  
prereqFor(cpsc535, [M]) :- 
  member(M, [math311, math313, math331, math353, amat307, amat311, pmat331]).
  
prereqFor(cpsc583, [C]) :- 
  member(C, [cpsc319, cpsc331]).
  


/*
** Courses that are antirequisite to each other.
*/
antireqs([cpsc215, cpsc217, cpsc231, cpsc235, engg233]).
antireqs([cpsc215, cpsc217, cpsc231, cpsc235, encm339]).
antireqs([cpsc219, cpsc233, cpsc235, enel497, encm493]).
antireqs([cpsc319, cpsc331]).
antireqs([cpsc355, cpsc265, encm369]).
antireqs([cpsc359, cpsc325, cpsc455, encm415]).
antireqs([cpsc418, cpsc429, cpsc557, pmat329, pmat418]).
antireqs([cpsc441, enel573]).
antireqs([cpsc471, btma331]).
antireqs([cpsc491, amat491, amat493, engg407]).
antireqs([cpsc502, cpsc503, ensf599, ensf591]).
antireqs([cpsc525, cpsc529]).
antireqs([cpsc526, cpsc529]).
antireqs([math271, math273]).
antireqs([math253, math263, math283, amat219]).
antireqs([math253, math267, math277, math283, amat219]).
antireqs([math249, math251, math265, math275, math281, amat217]).
antireqs([math211, math213, math221]).
antireqs([math267, math277, math349, amat219]).
antireqs([stat205, stat211, stat213]).
antireqs([phil279, phil377]).
antireqs([math315, math317]).
antireqs([ensf480, seng300, seng301, seng311, seng411, cpsc301, cpsc333, cpsc451]).
antireqs([ensf409, enel409, encm493]).
antireqs([enel353, cpsc321]).
antireqs([amat311, math375, amat307]).
antireqs([math311, math313]).
antireqs([math331, math353, math367, math377, math381, amat309]).

/*
** Part 2: Insert your implementation for allPrereqFor here
*/

allPrereqFor()

/*
** Part 3: Insert your implementation for allPrereqFor_NoAnti here 
*/

/*
** Part 4: Insert your implementation for neededCourses here
*/