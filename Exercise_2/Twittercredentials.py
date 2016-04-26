import tweepy

consumer_key = "4zZAQnA4Shx8fRpb7HfBzUrtT";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "9mpce2f6X7LqIJBs9ef0WiRpdsq8hx0Y9RFPg6xic2jfgczYrg";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "714258830490664960-cu4R5gUGHBBmfeshuXA5uJpWn4EQOsb";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "qT0YLj0hyq6IzJgMFBVJ057WjTxLhaGlw4HGGLlBwcOcW";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



