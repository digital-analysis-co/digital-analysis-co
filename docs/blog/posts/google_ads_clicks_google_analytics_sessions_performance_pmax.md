---
date: 2025-01-23
categories:
  - Marketing Tech
  - Google Analytics
  - Google Ads
  - Performance Max (PMAX)
---

# Google Ads and Analytics Attribution

## Discrepancy Between Google Ads and Analytics

When recently asked to place a Google Ads conversion tag for purchases on a site, I suggested just [importing the purchase event from Google Analytics](docs/blog/posts/share_events_google_analytics_google_ads). I got this [Gish Gallop](https://www.urbandictionary.com/define.php?term=Gish%20Gallop) response from marketing instead: <!-- more -->

> ... Instead of using GA4 data (70% is attributed to Direct, it is not reliable) can we use the Google Ads tag? That would be first party data, it's usually more accurate than importing the GA4 key event into the google ads account ...

I responded that both Google Analytics and Ads are first party context.

> ... but this has to do with cookieless policies and attribution accuracy, is not normal to have that high share of direct in the attribution mix

There's often a tension between marketing and analytics. Though on the same team, one reports on the success of the other. 

In [The Wisdom Of Psychopaths](https://www.goodreads.com/book/show/13539039-the-wisdom-of-psychopaths) Kevin Dutton provides a list where  media and sales people are the 3rd and 4th most psycopathic professions.

After attempting to pull some simple ads data myself, I believe it's not that marketing attracts psychopaths but that working in the Google Ads browser UI breaks ones mind and turns you into one.

Google Analytics is perenially attacked for reporting metrics below that of various digital ads platforms such as Google or Meta. Analytics will report between 10-30% less sessions than clicks for a given campaign and time period. Many users use ad blockers, and many bounce before the GA tag has had a chance to load.

There are many reasons why Google Ads and Analytics will report different data. Ads conversions are attributed to the date of click while analytics to the date of conversion. Sessions are downstream of clicks as outlined above. Some campaigns may not be tagged properly.

I wanted to rule out an attribution issue further up from conversions so I compared Google Ads clicks with Google Analytics sessions at the campaign level.

In this case I did find something more tangible to report and explain the discrepancy between Ads and Analytics. After pulling an Ads campaign report with campaign_type and clicks and aligning with Analytics sessions for the same date range, I noticed all campaigns showing sessions between 10 and 30% less than clicks, as expected.

Except on one campaign type, Performance Max, where I saw ~2,000 Ad clicks compared to ~100 GA Sessions for a given timeframe.

I did some research into [Performance Max (PMAX)](https://support.google.com/google-ads/answer/10724817?hl=en) campaigns.

> Performance Max is a goal-based campaign type that allows performance advertisers to access all of their Google Ads inventory from a single campaign. It's designed to complement your keyword-based Search campaigns to help you find more converting customers across all of Google's channels like YouTube, Display, Search, Discover, Gmail, and Maps.

On performance max campaigns clicks can mean different interaction types. They are not necessarily clicks to the website, they could be Display, Youtube or Gmail Ad Expansion clicks. 

I'm not sure how to verify this is the issue, but the discrepancy is unique to the PMAX ads campaign and the description fits what we are seeing.

I still added the Google Ads Conversion tag via Google Tag Manager.

