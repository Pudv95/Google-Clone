
class SearchModel{
  String? title;
  String? displayLink;
  String? snippet;
  String? formattedURL;

  SearchModel({required this.title,required this.link,required this.snippet,required this.formattedURL,required this.image});

  factory SearchModel.fromMap(Map<String,dynamic> temp){
    return SearchModel(title: temp['title'], link: temp['link'], snippet: temp['snippet'], formattedURL: temp['formattedUrl'], image: temp['pagemap']['metatags'][0]['og:image']);
  }
}

/*
    Search query Object
{
    "kind": "customsearch#result",
    "title": "Avatar: The Last Airbender (franchise) - Wikipedia",
    "htmlTitle": "Avatar: <b>The Last Airbender</b> (franchise) - Wikipedia",
    "link": "https://en.wikipedia.org/wiki/Avatar:_The_Last_Airbender_(franchise)",
    "displayLink": "en.wikipedia.org",
    "snippet": "The franchise began with the animated television series Avatar: The Last Airbender, which aired on Nickelodeon from 2005 to 2008. The series is set in an Asian- ...",
    "htmlSnippet": "The franchise began with the animated television series Avatar: <b>The Last Airbender</b>, which aired on Nickelodeon from 2005 to 2008. The series is set in an Asian-&nbsp;...",
    "cacheId": "zgMsLrZBY70J",
    "formattedUrl": "https://en.wikipedia.org/wiki/Avatar:_The_Last_Airbender_(franchise)",
    "htmlFormattedUrl": "https://en.wikipedia.org/wiki/Avatar:_<b>The_Last</b>_<b>Airbender</b>_(franchise)",
    "pagemap": {
        "metatags": [
            {
                "referrer": "origin",
                "og:image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Avatar_The_Last_Airbender_logo_2012.svg/1200px-Avatar_The_Last_Airbender_logo_2012.svg.png",
                "theme-color": "#eaecf0",
                "og:image:width": "1200",
                "og:type": "website",
                "viewport": "width=device-width, initial-scale=1.0, user-scalable=yes, minimum-scale=0.25, maximum-scale=5.0",
                "og:title": "Avatar: The Last Airbender (franchise) - Wikipedia",
                "og:image:height": "528",
                "format-detection": "telephone=no"
            }
        ],
        "hproduct": [
            {
                "fn": "Avatar: The Last Airbender"
            },
            {
                "fn": "Avatar: The Last Airbender – The Burning Earth"
            },
            {
                "fn": "Avatar: The Last Airbender – Into the Inferno"
            },
            {
                "fn": "Avatar: Legends of the Arena"
            },
            {
                "fn": "The Last Airbender"
            },
            {
                "fn": "The Legend of Korra"
            },
            {
                "fn": "The Legend of Korra: A New Era Begins"
            },
            {
                "fn": "Avatar: The Last Airbender - Quest for Balance"
            },
            {
                "fn": "Avatar Generations"
            },
            {
                "fn": "The Last Airbender"
            }
        ]
    }
},
 */