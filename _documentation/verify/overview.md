---
title: Overview
description: the Verify API overview.
---

# Verify API Overview

The Verify API allows you to send a PIN by SMS and phone to prove a user can be contacted at a specific phone number.

This is useful for:

* Spam protection - prevent spammers from mass-creating new accounts (etc.)
* Hack protection - if you detect suspicious or significant activities, validate that the person using a phone number owns it
* Two-factor authentication
* Reaching users - ensuring you have the correct phone number makes it easy to contact users when you need to

By default, the PIN is first sent via text message (SMS). If there is no reply the Verify API will then try a voice call using text-to-speech (TTS).

TTS messages are read in the locale that matches the phone number. (For example, the TTS for a 61* phone number is sent using an Australian accent for the English language (`en-au`). You can explicitly control the language, accent and gender in TTS from the Verify Request.)

Using the Verify API, the workflow to confirm that your user can be contacted at a specific phone number is:

![Verify API Overview image](/assets/images/workflow_verify_api.svg)

## Concepts

* **Authentication** - Nexmo Verify API is authenticated with your account API Key and Secret. For more information on see the [Authenticating](/api/verify) in the API documentation.

## Guides

* [Verify a user](/verify/guides/verify-a-user)

## References

* [API Reference](/api/verify)
