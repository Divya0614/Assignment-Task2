select email, trim(email) as trimmed_email
from employees
where trim(email) <> email;