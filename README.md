# Happy Friday

It is Friday and it is time to push to production!
The CTO said, once we push to production we can go grab some beers.
Our goal is to implement all the features ASAP and go party hard with our teammates.

## The task

- Build an optimal schedule for a distributed development team for this Friday (see sample output at [the very bottom](#sample-output)).
- Give a recommendation to improve their agile development process :)

Given 3 teams:

```
TEAMS
-----------------------------------
 CITY        |     Timezone
-----------------------------------
 Moscow      |    +3 MSK
 Zagreb      |    +2 CET
 London      |     0 UTC
-----------------------------------
```

Each team starts their boring working day at 9am.
Each team has one developer and one awful QA engineer.
Teams never cooperate with each other on a single task (they can speak only their local language, typical scrum).

They have already estimated the time they are going to spend on each task:

```
TASKS
-----------------------------------
№ | Development time | Time to test
-----------------------------------
1 | 2 hours          | 1 hour
2 | 2 hours          | 1 hour
3 | 1 hour           | 2 hours
4 | 2 hours          | 2 hours
```

But they haven't considered which team is gonna work on what.
And of course, underestimated tasks...

All they are absolutely sure about is their performance:

```
PERFORMANCE
-----------------------------------
Team    | Developers | QA
-----------------------------------
Moscow  | 1.0        | 0.5           - means that task№1 will actually take 2 hours of coding and 2 hours of testing
Zagreb  | 0.25       | 0.25          - means that guys from Zagreb are almost useless
London  | 0.5        | 1.0
-----------------------------------
```

Help them distribute tasks between teams. They can't wait.
The sooner features appear on production, the sooner everybody leaves the office!

Important note: we don't care about human hours spent on the entire set of tasks, we just need all the tasks to be completed ASAP.


## Sample input:

https://gist.github.com/einzige/69a5af5a9df1a483c2745f604e4fe1ba

## Sample output:

```
SCHEDULE
----------------------------------------
TEAM    | Local time | UTC time | TASK №
----------------------------------------
Moscow  | 9am-12am   | 6am-9am  | 1
Moscow  | 12am-5pm   | 9am-2pm  | 2
Zagreb  | 9am-12am   | 7am-10am | 3
London  | 9am-12am   | 8am-11am | 4
```

-------------------------------------------------------

## Acceptance criteria

- Code quality
- Reasonable test coverage
- Correct results with any valid input (different teams/timezones, different set of tasks)
- Optimal algorithms (no brute forces)

## FAQ

\- _Can QA member test before developer finished his job?_

\- NO.


\- _Can QA member test a task done by developer from different team?_

\- NO.


\- _Do developers produce bugs?_

\- NO. Never.


\- _What should I do?_

\- Just assign tasks to teams the way it takes least time to finish them all.

## Questions?

Ping your interviewer on Skype.

