<h3>Aggregated Monthly Payments (SQL)</h3> <br>
Using the following four tables (payments, currencies, exchange rates, blacklist), please write a query to return the amounts in euros aggregated by transaction_date. <br>
DDL scripts for 4 tables could be found at: https://github.com/olexandr7/test_task_2023/blob/main/aggregated_payments_input.sql <br>
Please be informed that: <br>
<ul>
<li>Resulting table should provide sum in EUR, use exchange rate table if payments are in other currencies</li>
<li>Due to a data quality error payments table got some payments in discontinued currencies (where currencies.end_date is not  NULL), they should be excluded from the final result</li>
<li>Do pay attention to the blacklist table - as payments from blacklisted users should also be excluded</li>
</ul>
