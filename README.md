My website! http://patrickhay.es

## URL Shortener


Includes the phay.es URL shortener. Requests must be authenticated via HTTP basic auth with a valid username/password. To shorten URLs, send a POST to https://patrickhay.es/shorten with the following POST params:

* url (required): The full-length url to be shortened.
   
* code(optional): The desired short code. There will be a HTTP 422 error if the code is already in use.

Example:

    curl -u username:password -F url=http://google.com -F code=goog https://patrickhay.es/shorten

The response will be a HTTP 201 response with the response header "Location".

    Location: http://phay.es/goog
