# Collections

## users

users collection stores user profile details like user id, user credential, audi, traits etc.

### example

```json
 {
  "_id": "ZVX1Z12L",
  "audit": {
    "createdAt": "2023-11-09T06:47:57.634Z",
    "lastUpdatedAt": "2023-11-09T06:47:57.634Z"
  },
  "credentials": {
    "mpin": {
      "method": "bcrypt",
      "value": "$2a$10$sqJLF2wG48NuD228YDXKseLRvpziPFXNsQsoMkAFXKdaqm9HADCVG"
    },
    "password": {
      "method": "bcrypt",
      "value": "$2a$10$Kwgj.LKGzXl7hIa8nYK/2.6SOK3u3uAfAFYnNr1UET1XXOLjc/kA6"
    }
  },
  "lastEvent": {
    "createDate": "2023-12-05T09:58:12.645Z",
    "eventType": "USER_LOGIN_FAILURE",
    "payload": "{\"userId\":\"ZVX1Z12L\",\"emailId\":\"test1@gmail.com\",\"userAgent\":null,\"deviceId\":\"goldfish_x86_64\",\"ipAddress\":null,\"os\":null}",
    "routingKey": "user.login-failure"
  },
  "realm": "internal",
  "schemaVer": 0,
  "traits": {
    "general": {
      "email": "test1@gmail.com",
      "emailVerified": true,
      "firstName": "T",
      "lastName": "D",
      "phoneNumber": "7755221144",
      "phoneVerified": true
    }
  },
  "userType": "customer"
}
```

### visual

```puml
@startjson
{
  "_id": "ZVX1Z12L",
  "audit": {
    "createdAt": "2023-11-09T06:47:57.634Z",
    "lastUpdatedAt": "2023-11-09T06:47:57.634Z"
  },
  "credentials": {
    "mpin": {
      "method": "bcrypt",
      "value": "$2a$10$sqJLF2wG48NuD228YDXKseLRvpziPFXNsQsoMkAFXKdaqm9HADCVG"
    },
    "password": {
      "method": "bcrypt",
      "value": "$2a$10$Kwgj.LKGzXl7hIa8nYK/2.6SOK3u3uAfAFYnNr1UET1XXOLjc/kA6"
    }
  },
  "lastEvent": {
    "createDate": "2023-12-05T09:58:12.645Z",
    "eventType": "USER_LOGIN_FAILURE",
    "payload": "{\"userId\":\"ZVX1Z12L\",\"emailId\":\"test1@gmail.com\",\"userAgent\":null,\"deviceId\":\"goldfish_x86_64\",\"ipAddress\":null,\"os\":null}",
    "routingKey": "user.login-failure"
  },
  "realm": "internal",
  "schemaVer": 0,
  "traits": {
    "general": {
      "email": "test1@gmail.com",
      "emailVerified": true,
      "firstName": "T",
      "lastName": "D",
      "phoneNumber": "7755221144",
      "phoneVerified": true
    }
  },
  "userType": "customer"
}
@endjson
```

### dictionary

field | description | characteristics | example 
-----|------------|----------------|--------------------------
_id  | the identifier of the user | ObjectID | QC7G-Q47E-EFWU 
audit | Audit fields | Object  | holding object
audit.createdAt | when was this document created | Object  | Object
audit.lastUpdated | when was this document last updated | Object | Object
credentials | credentials of users | Object | Object
credentials.mpin | mpin of users | Object | Object
credentials.mpin.method | encryption method | String | bcrypt
credentials.mpin.value | encrypted mpin value | String | $2a$10$sqJLF2wG48NuD228YDXKseLRvpziPFXNsQsoMkAFXKdaqm9HADCVG
credentials.password | stored password | Object | Object
credentials.password.method | encryption method | bcrypt
credentials.password.value | encrypted password value | $2a$10$Kwgj.LKGzXl7hIa8nYK/2.6SOK3u3uAfAFYnNr1UET1XXOLjc/kA6
lastEvent | when last even occur | Object | Object
lastEvent.createDate | when user created | Date | 2023-12-05T09:58:12.645Z
lastEvent.eventType | what is last event | String | USER_LOGIN_FAILURE
lastEvent.payload | what was the payload | String | "{\"userId\":\"ZVX1Z12L\",\"emailId\":\"test1@gmail.com\",\"userAgent\":null,\"deviceId\":\"goldfish_x86_64\",\"ipAddress\":null,\"os\":null}"
lastEvent.routingKey | routing key for messaging | String | user.login-failure
realm | realm of user | String | "internal"
schemaVer | schema version of collection | Int32 | 0
traits | user traits | Object | Object
traits.general | general traits | Object | Object
traits.general.email | email of user | String | test1@gmail.com
traits.general.emailVerified | if email verified | boolean | true
traits.general.firstName | first name of user | String | Haris
traits.general.lastName | last name of user | String | Faiz
traits.general.phoneNumber | phone number | String | 7755221144
traits.general.phoneVerified | if phone verified | boolean | true
traits.general.address | user address | Object | Object
traits.general.address.addressLine1 | address line 1 | String | Gachibowli
traits.general.address.addressLine2 | address line 2 | String | String
traits.general.address.city | city | String | Hyderabad
traits.general.address.state | state | String | Telangana
traits.general.address.pinCode | pin code | String | 500001
traits.general.address.country | country | String | India
traits.general.dateOfBirth | date of birth | Date | 2002-12-05
traits.customer | customer traits | Object | Object
traits.customer.pan | pan | String | ACMP9837D
traits.customer.membershipPlan | membership plan | String | GOLD
traits.customer.kyc | kyc | Object | Object
traits.customer.kyc.status | kyc status | String | String
traits.customer.kyc.statusCode | status code | String | String 
traits.customer.kyc.lastVerified | last verified | long | 2023-12-05
traits.customer.kyc.claims | kyc claims | Object | Object
auth | auth info | Object | Object
auth.status | auth status | String | String  
auth.lastLoginAt | last login | long | long
auth.failedLogins | failed logins | int | 2

## verification

verification collection stores verification related all aspects while user creation and verification.

### example 

```json
{
  "_id": "656ef6f5e04a1c5726d26c63",
  "createdDate": "2023-12-05T10:09:57.382Z",
  "email": "test11@gmail.com",
  "emailOTP": "9767",
  "emailOTPExpriedDate": "2023-12-05T10:10:57.382Z",
  "emailVerified": true,
  "firstName": "Test",
  "lastName": "User",
  "phone": "9876547896",
  "phoneOTP": "2910",
  "phoneOTPExpriedDate": "2023-12-05T10:11:12.315Z",
  "phoneVerified": true,
  "lastEvent": {
    "createDate": "2023-11-15T13:48:06.649Z",
    "eventType": "USER_EMAIL_VERIFICATION_INITIATED",
    "payload": "{\"emailId\":\"testuser.12334@gmail.com\",\"otp\":\"2358\",\"createDate\":\"2023-11-15T13:48:06.645+00:00\",\"expiredDate\":\"2023-11-15T13:49:06.645+00:00\"}",
    "routingKey": "user.email-verification-initiated"
  }
}
```

### visual

```puml
@startjson
{
  "_id": "656ef6f5e04a1c5726d26c63",
  "createdDate": "2023-12-05T10:09:57.382Z",
  "email": "test11@gmail.com",
  "emailOTP": "9767",
  "emailOTPExpriedDate": "2023-12-05T10:10:57.382Z",
  "emailVerified": true,
  "firstName": "Test",
  "lastName": "User",
  "phone": "9876547896",
  "phoneOTP": "2910",
  "phoneOTPExpriedDate": "2023-12-05T10:11:12.315Z",
  "phoneVerified": true,
  "lastEvent": {
    "createDate": "2023-11-15T13:48:06.649Z",
    "eventType": "USER_EMAIL_VERIFICATION_INITIATED",
    "payload": "{\"emailId\":\"testuser.12334@gmail.com\",\"otp\":\"2358\",\"createDate\":\"2023-11-15T13:48:06.645+00:00\",\"expiredDate\":\"2023-11-15T13:49:06.645+00:00\"}",
    "routingKey": "user.email-verification-initiated"
  }
}
@endjson
```

### dictionary

field | description | characteristics | example
------|-------------|-----------------|--------
_id | object id | ObjectId | 6554cc16ce74ee253e46db44
firstName | First Name | String | Test
lastName | Last Name | String | User
email | email | String | test@gmail.com
emailOTP  | otp | String | 9767
isEmailVerified | if email verified | boolean | true
emailOTPExpriedDate | otp expire date | Date | "2023-12-05T10:10:57.382Z"
phone | phone number | String | 9876007896
phoneOTP | otp | String | 2910
isPhoneVerified | if phone number verified | boolean | true
phoneOTPExpriedDate | otp expire date | Date | 2023-12-05T10:11:12.315Z
createdDate | created date | Date | 2023-12-05T10:09:57.382Z
lastEvent | last event | Object | Object
lastEvent.createdDate | created date | Date | 2023-11-15T13:48:06.649Z
lastEvent.eventType | event type | String | USER_EMAIL_VERIFICATION_INITIATED
lastEvent.payLoad | payload | String | "{\"emailId\":\"testuser.12334@gmail.com\",\"otp\":\"2358\",\"createDate\":\"2023-11-15T13:48:06.645+00:00\",\"expiredDate\":\"2023-11-15T13:49:06.645+00:00\"}"
lastEvent.routingKey | routing key | String | user.email-verification-initiated

## scratchpad
scratchpad collection is used to store Items in cart, wishlist and compare.

### example

```json
{
  "_id": "52CF06LF",
  "cartItems": [
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF336L01PB2",
      "name": "HSBC Focused Fund - Direct Growth",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "02"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF680P01109",
      "name": "Shriram Flexi Cap Fund - Direct Growth",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "01"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF204K01G52",
      "name": "Nippon India Consumption Fund - Direct Plan Growth Plan - Growth Option",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "01"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF760K01DU1",
      "name": "CANARA ROBECO CONSUMER TRENDS FUND - DIRECT PLAN - GROWTH OPTION",
      "oneTimeOrSIP": {
        "amount": 2000,
        "investmentType": "SIP",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 1,
        "sipEndDate": "2024-05-01T00:00:00.000Z",
        "sipInterval": "MONTHLY",
        "sipIsPerpetual": true,
        "sipStartDate": "2023-12-01T00:00:00.000Z"
      },
      "portfolioId": "01"
    }
  ],
  "compareItems": [],
  "uccCode": "52CF06LF",
  "wishlistItems": [
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF760K01JC6",
      "name": "CANARA ROBECO SMALL CAP FUND - DIRECT PLAN - GROWTH OPTION"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF879O01100",
      "name": "Parag Parikh Tax Saver Fund- Direct Growth"
    },
    {
      "assetCategory": "Flexi Cap",
      "isin": "INF680P01109",
      "name": "Shriram Flexi Cap Fund - Direct Growth"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF336L01NV5",
      "name": "HSBC Large & Mid Cap Fund - Direct Growth"
    }
  ]
}
```

### visual

```puml
@startjson
{
  "_id": "52CF06LF",
  "cartItems": [
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF336L01PB2",
      "name": "HSBC Focused Fund - Direct Growth",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "02"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF680P01109",
      "name": "Shriram Flexi Cap Fund - Direct Growth",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "01"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF204K01G52",
      "name": "Nippon India Consumption Fund - Direct Plan Growth Plan - Growth Option",
      "oneTimeOrSIP": {
        "amount": 5000,
        "investmentType": "ONETIME",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 0,
        "sipInterval": "",
        "sipIsPerpetual": true
      },
      "portfolioId": "01"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF760K01DU1",
      "name": "CANARA ROBECO CONSUMER TRENDS FUND - DIRECT PLAN - GROWTH OPTION",
      "oneTimeOrSIP": {
        "amount": 2000,
        "investmentType": "SIP",
        "oneTimeTenureInMonths": 0,
        "sipDayOfMonth": 1,
        "sipEndDate": "2024-05-01T00:00:00.000Z",
        "sipInterval": "MONTHLY",
        "sipIsPerpetual": true,
        "sipStartDate": "2023-12-01T00:00:00.000Z"
      },
      "portfolioId": "01"
    }
  ],
  "compareItems": [],
  "uccCode": "52CF06LF",
  "wishlistItems": [
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF760K01JC6",
      "name": "CANARA ROBECO SMALL CAP FUND - DIRECT PLAN - GROWTH OPTION"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF879O01100",
      "name": "Parag Parikh Tax Saver Fund- Direct Growth"
    },
    {
      "assetCategory": "Flexi Cap",
      "isin": "INF680P01109",
      "name": "Shriram Flexi Cap Fund - Direct Growth"
    },
    {
      "assetCategory": "MIDCAP",
      "assetClass": "EQUITY",
      "isin": "INF336L01NV5",
      "name": "HSBC Large & Mid Cap Fund - Direct Growth"
    }
  ]
}
@endjson
```

### dictionary

field | description | characteristics | example
------|-------------|-----------------|---------
_id | identifier | String | 52CF06LF
uccCode | user identity | String | 52CF06LF
wishlistItems | wishlist items | Array | Array of Objects
wishlistItems.isin | fund isin | String | INF760K01DU1
wishlistItems.name | fund name | String | Parag Parikh Tax Saver Fund- Direct Growth
wishlistItems.assetClass | asset class | String | EQUITY
wishlistItems.assetCategory | asset category | String | MIDCAP
compareItems | compare items | Array | Array of Objects
compareItems.isin | fund isin | String | INF879O01100
compareItems.assetClass | asset class | String | EQUITY
cartItems | cart items | Array | Array of Objects
cartItems.isin | fund isin | String | INF336L01NV5
cartItems.name | fund name | String | HSBC Focused Fund - Direct Growth
cartItems.assetCategory | asset category | String | MIDCAP
cartItems.oneTimeOrSIP | purchase or sip or swp or stp or switch or redeem | Object | Object
cartItems.oneTimeOrSIP.oneTimeTenureInMonths | tenure in month | int32 | 12
cartItems.oneTimeOrSIP.sipDayOfMonth | day of the month | int32 | 1
cartItems.oneTimeOrSIP.amount | amount | Double | 5000
cartItems.oneTimeOrSIP.investmentType | investment type | String | BUY
cartItems.oneTimeOrSIP.sipStartDate | SIP start date | Date | 2023-12-01T00:00:00.000Z
cartItems.oneTimeOrSIP.sipEndDate | SIP end date | Date | 2024-05-01T00:00:00.000Z
cartItems.oneTimeOrSIP.sipInterval | SIP interval | String | MONTHLY
cartItems.oneTimeOrSIP.sipIsPerpetual | if SIP perpetual | boolean | true
cartItems.oneTimeOrSIP.transferTo | target fund | String | INF760K01DU1 
cartItems.oneTimeOrSIP.redeemOrSwitchOption | redeem option | String | E - All Units, A - Specific Amount, U - Specific Units
cartItems.oneTimeOrSIP.redeemOrSwitchUnits | number of units | String | 5
cartItems.oneTimeOrSIP.redeemOrSwitchAmount | amount | String | 500
cartItems.portfolioId | portfolio ID | String | 02
cartItems.folioId | folio ID | String | ABC
cartItems.bankAccountNo | back account number | String | 8762356784763
cartItems.isFormFilled | if form filled | boolean | true
cartItems.isPayoutChecked | if payout checked | boolean | false
meta | metadata | Object | Object
meta.created | created date| Date | 2023-12-05T10:11:12.315Z
meta.lastModified | last modified | Date | 2023-12-05T10:11:12.315Z
schemaVer | schema version | String | 1

## sfa_token

sfa_token collection stores sfa_token, User ID, device ID, fcm token etc.

### example

```json
{
  "_id": "65b8a2d4b99e8a50536a7121",
  "deviceId": "c2749b2874fcefd9",
  "expires": "2024-04-29T07:18:44.327Z",
  "fcmToken": "dwF-1wLtSQewAAHCBQksgc:APA91bEv_xmQwoycrG4V1k3rGm32JrEg0U2fbm2ig5JeRz8gwzErf8RTydC4uNKjgLwWUEs8p0SnDnTc-vid8MrPodfkuonycYKsjK7Rt0gtUTtBy7O7IBUgaPkfkPU178EzklQBfrrA",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwczovL2V4YW1wbGUuY29tL21mQXV0aCIsInN1YiI6IlRRQkpYWlU3VlBXSiIsImdyb3VwcyI6WyJTRkEtVVNFUiJdLCJkZXZpY2VJRCI6ImMyNzQ5YjI4NzRmY2VmZDkiLCJpYXQiOjE3MDY1OTkxMjQsImV4cCI6MTcxNDM3NTEyNCwianRpIjoiODg5Mzc1MmEtOTI3Zi00OTg2LThiNmUtZTdhYTNmYWE0ZmEyIn0.M1lfgoqT8T8jvrW3woC7mkZxovZmyBFl9uEQULmu0696p_i8CRoHuzGeFdZn5d3s0n4_BsbDqSIiwhUlR0c8ghW-NldLSLW_geUUc72tl9M1LnWuM81ghgd-786RwemuUuOt7IzZsioziiuvihM7wDnuVK5N_AD2BD0ZHqPD9TukyjLBotGZKS2qoHdkhiqUmZ183_HWwVimZ7aqNK36XSCON17Gbf5typ6QRwbwwcV4kNVPwOR2OX4bhZ2lmQufgE-QOi70FI1P7KA8iEwNtjz3J87sHBXR5XY0u5P9pik0JMEjQCkxpFwTZ_kpkjUpdpaSCmjlWfxeMJarL2FI8A",
  "userAgent": "OnePlus OnePlus EB2101",
  "userId": "TQBJXZU7VPWJ"
}
```

### visual

```puml
@startjson
{
  "_id": "65b8a2d4b99e8a50536a7121",
  "deviceId": "c2749b2874fcefd9",
  "expires": "2024-04-29T07:18:44.327Z",
  "fcmToken": "dwF-1wLtSQewAAHCBQksgc:APA91bEv_xmQwoycrG4V1k3rGm32JrEg0U2fbm2ig5JeRz8gwzErf8RTydC4uNKjgLwWUEs8p0SnDnTc-vid8MrPodfkuonycYKsjK7Rt0gtUTtBy7O7IBUgaPkfkPU178EzklQBfrrA",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwczovL2V4YW1wbGUuY29tL21mQXV0aCIsInN1YiI6IlRRQkpYWlU3VlBXSiIsImdyb3VwcyI6WyJTRkEtVVNFUiJdLCJkZXZpY2VJRCI6ImMyNzQ5YjI4NzRmY2VmZDkiLCJpYXQiOjE3MDY1OTkxMjQsImV4cCI6MTcxNDM3NTEyNCwianRpIjoiODg5Mzc1MmEtOTI3Zi00OTg2LThiNmUtZTdhYTNmYWE0ZmEyIn0.M1lfgoqT8T8jvrW3woC7mkZxovZmyBFl9uEQULmu0696p_i8CRoHuzGeFdZn5d3s0n4_BsbDqSIiwhUlR0c8ghW-NldLSLW_geUUc72tl9M1LnWuM81ghgd-786RwemuUuOt7IzZsioziiuvihM7wDnuVK5N_AD2BD0ZHqPD9TukyjLBotGZKS2qoHdkhiqUmZ183_HWwVimZ7aqNK36XSCON17Gbf5typ6QRwbwwcV4kNVPwOR2OX4bhZ2lmQufgE-QOi70FI1P7KA8iEwNtjz3J87sHBXR5XY0u5P9pik0JMEjQCkxpFwTZ_kpkjUpdpaSCmjlWfxeMJarL2FI8A",
  "userAgent": "OnePlus OnePlus EB2101",
  "userId": "TQBJXZU7VPWJ"
}
@endjson
```

### dictionary

field | description | characteristics | example
------|-------------|-----------------|----------
_id | identifier | ObjectId | 65b8a2d4b99e8a50536a7121
deviceId | device login id | String | c2749b2874fcefd9
expires | token expire time | Date | 2024-04-29T07:18:44.327Z
fcmToken | fire base cloud messaging token | String | dwF-1wLtSQewAAHCBQksgc:APA91bEv_xmQwoycrG4V1k3rGm32JrEg0U2fbm2ig5JeRz8gwzErf8RTydC4uNKjgLwWUEs8p0SnDnTc-vid8MrPodfkuonycYKsjK7Rt0gtUTtBy7O7IBUgaPkfkPU178EzklQBfrrA
token | sfa token | String | eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwczovL2V4YW1wbGUuY29tL21mQXV0aCIsInN1YiI6IlRRQkpYWlU3VlBXSiIsImdyb3VwcyI6WyJTRkEtVVNFUiJdLCJkZXZpY2VJRCI6ImMyNzQ5YjI4NzRmY2VmZDkiLCJpYXQiOjE3MDY1OTkxMjQsImV4cCI6MTcxNDM3NTEyNCwianRpIjoiODg5Mzc1MmEtOTI3Zi00OTg2LThiNmUtZTdhYTNmYWE0ZmEyIn0.M1lfgoqT8T8jvrW3woC7mkZxovZmyBFl9uEQULmu0696p_i8CRoHuzGeFdZn5d3s0n4_BsbDqSIiwhUlR0c8ghW-NldLSLW_geUUc72tl9M1LnWuM81ghgd-786RwemuUuOt7IzZsioziiuvihM7wDnuVK5N_AD2BD0ZHqPD9TukyjLBotGZKS2qoHdkhiqUmZ183_HWwVimZ7aqNK36XSCON17Gbf5typ6QRwbwwcV4kNVPwOR2OX4bhZ2lmQufgE-QOi70FI1P7KA8iEwNtjz3J87sHBXR5XY0u5P9pik0JMEjQCkxpFwTZ_kpkjUpdpaSCmjlWfxeMJarL2FI8A
userAgent | agent name | String | OnePlus OnePlus EB2101
userId | user Id | String | TQBJ-XZU7-VPWJ



