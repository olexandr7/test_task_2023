create TABLE tst_intern_payments
(
user_id_sender NUMBER(38,0),
contract_id NUMBER(38,0),
amount NUMBER(38,0),
currency NUMBER(38,0),
transaction_date DATE
);

create TABLE tst_intern_currencies
(
currency_id NUMBER(38,0),
currency_code VARCHAR(50),
start_date DATE, 
end_date DATE
);

create TABLE tst_intern_blacklist
(
user_id NUMBER(38,0),
blacklist_code NUMBER(38,0),
blacklist_start_date DATE, 
blacklist_end_date DATE
);


create OR REPLACE TABLE tst_intern_currency_rates
(
currency_id NUMBER(38,0),
exchange_rate_to_eur NUMBER(38,2),
exchange_date DATE
);
