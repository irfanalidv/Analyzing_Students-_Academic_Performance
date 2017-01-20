railroad(
  Stack(
    Sequence(
      'NationalITy',
      Optional('PlaceofBirth ', 'skip'),
      Choice(0, 
             'School_life', 
             OneOrMore(
               Sequence(NonTerminal('Academic'), Optional(Sequence('Semester', NonTerminal('Class')))), 
               'Discussion'
             )
      ),
      'Activities',
      OneOrMore(NonTerminal('raisedhands '), 'Discussion'),
      Optional(Sequence('VisITedResources', NonTerminal('VisITedResources')))
    ),
    Sequence(
      Optional(Sequence('First_Sem', NonTerminal('second_Sem'))),
      Optional(Sequence('Scoring', NonTerminal('A | B | C'))),
      Optional(Sequence(
        Choice(0, 'StageID', 'GradeID', 'SectionID'),
        Optional('Gender'),
        NonTerminal('Relation')
      ))
    ),
    Sequence(
      Optional(Sequence(
        'Education',
        OneOrMore(Sequence(NonTerminal('Parents_involvement'), Choice(0, Skip(), 'ParentAnsweringSurvey', 'ParentschoolSatisfaction')), 'Motivation'))
      ),
      Optional(Sequence(
        'HighSchool',
        Choice(0, NonTerminal('MiddleSchool'), 'lowerlevel')
      )),
      Optional(Sequence('Relation', NonTerminal('Father'), Optional('Mum')))
    )
  )
)