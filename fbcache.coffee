# Description:
#   Clear Facebook cache for a given URL
#
# Commands:
#   fbcache <url> - Clear Facebook cache for the given URL
#
# Author:
#   iamso
#   
module.exports = (robot) ->

  robot.hear /fbcache (.*)/i, (res) ->
    robot.http(URL)
      .post("id=#{res.match[1]}&scrape=true") (err, resp, body) ->
        if err
          res.send "ERROR! Check the URL or try again later."
        else
          res.send "OK"
