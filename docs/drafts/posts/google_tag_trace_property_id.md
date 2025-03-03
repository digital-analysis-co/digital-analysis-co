---
date: 2024-11-01
categories:
  - Marketing Tech
  - Digital Analytics
---

# Finding the Source of a GA4 page_view Event

Tag Inspector & GA Debug showed an additional pageviw coming from an unknown GA4 property. No tags in GTM had this property ID, but incrementally pausing the tags with preview mode showed the mystery page_view did stop on a particular gtag.

[Network IMG Showing the Rouge GTAG]

Looking into the gtag settings it was configured to send data to an additional destination.

Google Tag had additional destination property id while gtag and GA4 tags in Google-Tag-Manager all had a single property ID.

[Screen IMG of gtag settings sending to multiple destinations]