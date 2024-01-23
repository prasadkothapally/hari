# Notifications Microservice

<span dir="">An af-notification is designed to send notifications to end users in the form of emails, and text messages.To send email notifications to customer af-notification integrated with Sendinblue API and using pub/sub model. </span>


# Interface

## Messaging

### Commands

#### SendEmailCommand

<span dir="">The SendEmailCommand payload consumed from different module via RabbitMQ message broker to notify user with email format.</span>

| Queue | Routing Key | Headers | Retriable |  |
|-------|-------------|---------|-----------|--|
| email-queue |  | content_type=application/json | Yes |  |

```kroki-plantuml
@startjson
{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "type": "object",
  "properties": {
    "from": {
      "type": "string"
    },
    "to": {
      "type": "string"
    },
    "templateKey": {
      "type": "string"
    },
    "parameters": {
      "type": "object",
      "properties": {
        "orderNo": {
          "type": "string"
        },
        "address": {
          "type": "string"
        },
        "bodyParam": {
          "type": "string"
        }
      },
      "required": [
        "orderNo",
        "address",
        "bodyParam"
      ]
    }
  },
  "required": [
    "from",
    "to",
    "templateKey",
    "parameters"
  ]
}
@endjson
```

### Events

#### ExampleEvent

| Exchange | Routing Key | Headers |  |
|----------|-------------|---------|--|
| email-exchange |  |content_type=application/json  |  |

```json
json schema of the payload
```

### Bindings

| Exchange | Type | Queue | Routing Key |
|----------|------|-------|-------------|
| email-exchange |topic  | email-queue |  |



# Diagrams

Data flow diagram

## Example diagram


```kroki-mermaid
flowchart TD
    G[publisher1]
    H[publisher2]
    I[publisher3]
    G -->|publish| J[email-message queue]
    H -->|publish| J[email-message queue]
    I -->|publish| J[email-message queue]
    J -->|subscribe| K[af-notification]
    K -->|success| L[send-notification]
    K -->|failure| M[retry-queue]
```

# Persistence

## Postgres

| Aspect | Value |
|--------|-------|
| Database Engine | postgresql |
| Schema |  |
| Migrations | Yes / No |
| Charset | UTF-8 |

### Dictionary

#### Tables

| Table | Purpose |
|-------|---------|
| templates | Maintain all templates |
| notifications_audit| Maintain notification data |

#### Fields

| Table | Field | Purpose | Type | Size | Nullable | Keys |
|-------|-------|---------|------|------|----------|------|
| notifications_audit| id | Identifier | int |  | No | PK |
| notifications_audit| sender| notification sender | text| 255 | Yes |  |
| notifications_audit| receiver| notification receiver| text| 255 | Yes |  |
| notifications_audit| message| message | text| 255 | Yes | |
| notifications_audit| createdDate| notification created date | date| 20 | Yes |  |

| Table | Field | Purpose | Type | Size | Nullable | Keys |
|-------|-------|---------|------|------|----------|------|
| templates| key| Identifier | text|  | No | PK |
| templates| description| template description | text| 255 | Yes |  |
| templates| type| notification type | text| 255 | Yes |  |
| templates| subject| email subject | text| 255 | Yes |  |
| templates| body| email body | text| 255 | Yes |  |
| templates| status| template status | text| 1| Yes |  |

## Mongo

### Collections

#### Example

```json

```

# Build

| Aspect | Value |
|--------|-------|
| Artifacts |  |
| Location |  |

# Deployment

To be filled

# Security

To be filled

# Scalability

To be filled

# Resilience

To be filled

# Payment integration flow

```kroki-plantuml

@startuml
autonumber
skin rose
skinparam svgDimensionStyle false

title "Portfolio - Payment Flow"

/'
This highlights the flow of a payment flow.
'/

actor User as user
boundary App as app
boundary WebView as webview
control "Portfolio Service" as pfo
boundary "MFU Service" as mfu
control "PaymentStatusCallback" as psb
control "Android DeepLinker" as deeplink

== purchase initialization ==

user -> app : Click on purchase
app -> pfo : Purchase request sent
pfo -> mfu : Purchase request forwarded
mfu -> pfo : purchase response with payment link returned
pfo -> app : return payment link

== User proceeds with payment ==

app -> webview : Launch and navigate to Payment Link
webview -> webview : user finishes payment steps using rendered payment pages
webview -> mfu : submits payment
mfu -> webview : responds with 302 Redirect to preconfigured Payment Callback URL ( https://fintrust-dev.techwave.net/api/execution/mfu/payment-callback )

== App handled payment status ==

webview -> psb : redirect
psb -> webview : responds with 302 Redirect to preconfigured App Supported Callback URL (app://allfunds?...)
webview -> deeplink : Handle redirect
deeplink -> app : Transfers control to app with context
app -> user : displays payment status and next steps.
 
@enduml

```


```kroki-blockdiag no-transparency=false
blockdiag {
  blockdiag -> generates -> "block-diagrams";
  blockdiag -> is -> "very easy!";
  blockdiag -> is -> "also fun too!";

  blockdiag [color = "greenyellow"];
  "block-diagrams" [color = "pink"];
  "very easy!" [color = "orange"];
}
```