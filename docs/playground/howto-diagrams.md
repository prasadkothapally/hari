# Playground to try out various diagrams

## State Machine

```kroki-plantuml
@startuml
[*] --> Creating
Creating -> Created
Created -> Started
Started -> Stopped
Created --> [*]
Started --> [*]
Stopped --> [*]
@enduml
```
```xkroki-plantuml
@startuml
[*] --> Creating
Creating -> Created
Created -> Started
Started -> Stopped
Created --> [*]
Started --> [*]
Stopped --> [*]
@enduml
```



## Pie Chart
```
pie title Pets adopted by volunteers
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 15
```
```kroki-mermaid
pie title Pets adopted by volunteers
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 15
```

## Mindmap
```
mindmap
  root((mindmap))
    Origins
      Long history
      ::icon(fa fa-book)
      Popularisation
        British popular psychology author Tony Buzan
    Research
      On effectiveness<br/>and features
      On Automatic creation
        Uses
            Creative techniques
            Strategic planning
            Argument mapping
    Tools
      Pen and paper
      Mermaid
```
```kroki-mermaid
mindmap
  root((mindmap))
    Origins
      Long history
      ::icon(fa fa-book)
      Popularisation
        British popular psychology author Tony Buzan
    Research
      On effectiveness<br/>and features
      On Automatic creation
        Uses
            Creative techniques
            Strategic planning
            Argument mapping
    Tools
      Pen and paper
      Mermaid
```