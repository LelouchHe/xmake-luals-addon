---@meta

---Very basic example of HTTP library
local http = {}

---Make a GET request to the provided URL
---@param url string The URL to request
function http.get(url) end

---Make a POST request to the provided URL
---@param url string The URL to request
---@param body string The body of the POST request
function http.post(url, body) end

return http
