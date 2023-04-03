from datetime import datetime, date, time

# ----------GET CURRENT TIME--------------------

def get_date():
    today = date.today()
    day_is = date.isoformat(today)

    return day_is