## Minimum - request and response
``` mermaid
  sequenceDiagram

    Service One->>Service Two: request

    Service Two-->>Service One: response
```

## Adding auto-numbering
``` mermaid
  sequenceDiagram
    autonumber

    Service One->>Service Two: request

    Service Two-->>Service One: response
```

## Adding activation
``` mermaid
  sequenceDiagram
    autonumber

    Service One->>Service Two: request

    activate Service Two
      Service Two-->>Service One: response
    deactivate Service Two
```

## Adding a note
``` mermaid
  sequenceDiagram
    autonumber

    Service One->>Service Two: request

    activate Service Two
      note right of Service Two: 'magic' happens
      Service Two-->>Service One: response
    deactivate Service Two
```

## Adding third service
``` mermaid
  sequenceDiagram
    autonumber

    Service One->>Service Two: request

    activate Service Two
      note right of Service Two: 'magic' happens
      Service Two-->>Service One: response
    deactivate Service Two

    Service One->>Service Three: request
    activate Service Three
      note right of Service Three: more 'magic' happens
      Service Three-->>Service Two: 'ping'
    deactivate Service Three
```

## Adding coloured rectangle
``` mermaid
  sequenceDiagram
    autonumber

    Service One->>Service Two: request

    activate Service Two
      note right of Service Two: 'magic' happens
      Service Two-->>Service One: response
    deactivate Service Two

    Service One->>Service Three: request
    activate Service Three
      note right of Service Three: more 'magic' happens
      Service Three-->>Service Two: 'ping'
    deactivate Service Three

    activate Service Two
      note left of Service One: wait for it ...
      rect rgb(173, 216, 230)
        Service Two->>Service One: request

        activate Service One
          note left of Service One: this is where the real<br/>'magic' happens
          Service One-->>Service Two: response
        deactivate Service One
      end

    deactivate Service Two
```
1. **Service One** sends a request to **Service Two** ... - see: <a href="#">more...</a>
2. **Service Two** sends a response to **Service One** ... - see: <a href="#">more...</a>
3. ...
