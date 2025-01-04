# global_vars.py

DIAGNOSIS_DATE = None


def set_diagnosis_date(date):
    global DIAGNOSIS_DATE
    DIAGNOSIS_DATE = date

def get_diagnosis_date():
    return DIAGNOSIS_DATE
