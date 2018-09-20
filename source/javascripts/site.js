var isDevelopement = function() {
  return window.location.hostname === "localhost";
}

var isStaging = function() {
  return (window.location.hostname.search("netlify.com") >= 0);
}

var isProduction = function() {
  return (!isStaging() && !isDevelopement());
}
