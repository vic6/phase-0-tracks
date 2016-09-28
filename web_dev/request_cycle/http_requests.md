## Common HTTP Status codes
* 200 - OK: Request has succeeded
* 302 - Found: Requested resources temporarily reside under a different URI
* 400 - Bad Request: Request not understood due to malformed syntax
* 403 - Forbidden: Request understood, but server refuses to fulfill request
* 550 - Permission Denied - Account currently logged in lacks permissions to perform the requested actions.

## GET Request vs Post Request
A GET requests data from a specified resource while a POST submits data to be process to a specified source. GETs can be cached and remain in browser history and for this reason should not be used when dealing with sensitive data. POSTs are not cached and can not be bookmarked, they can be used to submit data and have no restrictions on data type unlike a GET.

## Cookies
A cookie contains information about the user like visited sites, login information, shopping cart items and in stored on the users computer. The server sends the value of the cookie if there is one to the browser.