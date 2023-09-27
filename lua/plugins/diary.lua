local config = require("deardiary.config")

config.journals = {
    {
        path = "~/journals/personal",
        frequencies = {"daily", "weekly"},
    },
    {
        path = "~/journals/work",
        frequencies = {"daily", "weekly", "monthly", "yearly"},
    },
}
