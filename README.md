# AnonTwitterBlaster
Quick and easy to use prefab tweets

This isn't the cleanest project. I had the idea for something similar
for a mobile hacktivist toolkit, but decided I could work the Tweet part
out fairly quickly.

For this project, I used CASE programming.
If you are not familiar, it stands for Copy And Steal Everything
I can be a lazy prick, so I didn't want to keep writing the same code
I took bits of what I had and threw them together in parts.
I didn't rename everything. I was sloppy at times.
It's not very pretty code, but it works.


I am limited by what my $2/per month hosting provider allows, so I used

MySQL for some of the data (http://links and @tags) (#hashtags and one liners are still hard coded)
PHP was used to return JSON styled data in the "APIs".
First, I hard coded a simple API for returning 3 random @tags that I enderingly termed twitterCeants
I was going to just call it twitterTags, but where's the craic in that?
I did the same for returning a random link, eventually, I want targeted messages and links to 
go @ different folks, so let's just call this one warLinks
Then I created one to take all of those bits and form a hyperlink to ready a tweet, tweetAPI


As I worked on having the data in a database I did a thing to pull random records. 
MySQL's rand function is bollix performance wise. There aren't going to be that many records, so I 
grab the available IDs, pop into an array, grab them at random and filter a hard coded SQL statement.


The SamplePage is based off what we came up for the Bad MOFOS site, but it's function is really
just to have the button click call a method that gets the constructed URL string from tweetAPI and opens a new window
