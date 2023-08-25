# Example 1 (Advanced) - Get actual EURUSD price (using JSON library) from MT5
#
# PREREQUISITE: Install MTsocketAPI in your Metatrader 5 using the following link https://www.mtsocketapi.com/doc5/installation.html
#
# WARNING: All these source codes are only examples for testing purposes. 
# WARNING: We don’t provide any guarantee or responsibility about it. 
# WARNING: Use these examples at your own risk.

library("rjson")

con <- socketConnection(host="localhost", port = 77, blocking = TRUE)
df <- data.frame(MSG = c("QUOTE"), SYMBOL = c("EURUSD"))
writeLines(paste0(toJSON(df),"\r\n"), con)
server_resp <- readLines(con, 1)
close(con)
print(server_resp)
