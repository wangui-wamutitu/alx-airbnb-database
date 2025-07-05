## Normalization Summary

| Table     | 1NF | 2NF | 3NF | Notes                                |
|-----------|-----|-----|-----|--------------------------------------|
| User      | Yes | Yes | Yes | Fully normalized                     |
| Property  | Yes | Yes | Yes | No derived or partial dependencies   |
| Booking   | Yes | Yes | Yes | Clean separation of concerns         |
| Payment   | Yes | Yes | Yes | Payment is separated from booking    |
| Review    | Yes | Yes | Yes | All fields are atomic and dependent  |
| Message   | Yes | Yes | Yes | Uses two foreign keys to User table  |