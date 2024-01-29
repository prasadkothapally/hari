# Home
This is the root of the page-tree for all design documentation related to Fintrust

## Available components

```kroki-plantuml
@startmindmap
skinparam monochrome true
* Components
** AllFunds
*** Profile
*** Portfolio
*** Funds
*** Notifications
** Global
*** MFU Session Provider
** Accounting
*** API (api)
*** BackOffice (bo)
*** Analytics
** Technical
*** DLQ Processor
*** Event Publisher
** Utilities
*** PGBouncer
*** OpenObserve
*** Kestra
@endmindmap
```

### Purpose

The purpose of the components is as follows

Component            | Purpose
---------------------|-------
Profile              | Handles all aspects of a user in the AllFunds system
Portfolio            | Handles all aspects of a user's financial investments in the AllFunds system
Funds                | Handles all aspects of a Fund, it's proerties and performance
Notifications        | Handles all aspects of communication with the end users across various channels.
MFU Session Provider | A lightweight service for initialiazing and sharing a MFU session with various other components.
Accounting API       | Accounting system interface
Accounting BackOffice| Accounting system backoffice that heavy-lifts all the backoffie processing for data loads, fund analytics, reconciliations, investor analytics etc.
Accounting Analytics | Recolytics layer. Yet to be built.
DLQ Processor        | Handles message retries using backoffs across the system.
Event Publisher      | Traps the Mongo CDC streams and publishes the changes as Business events 
PGBouncer            | A postgres connection pooler
OpenObserve          | Log aggregations and visualizations
Kestra               | A task scheduler.

## API Reference

Please see this [The API documentation](https://fintrust-dev.techwave.net/swagger-ui) for all exposed REST APIs

