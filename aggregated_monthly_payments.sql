SELECT 
sum(amount_eur), 
transaction_date
from
(

		SELECT
		
		pay.user_id_sender,
		pay.contract_id,
		pay.amount, 
		pay.currency, 
		pay.TRANSACTION_date,
		rat.exchange_rate_to_eur,
		CASE WHEN currency = 111 THEN amount ELSE TO_DOUBLE(amount) * TO_DOUBLE(exchange_rate_to_eur) END AS amount_eur,
		CASE WHEN TRANSACTION_DATE >= blk.BLACKLIST_START_DATE AND blk.BLACKLIST_END_DATE IS NULL THEN 1 ELSE 0 END AS blk_ind
		
		FROM tst_intern_payments pay
		LEFT JOIN tst_intern_currencies cur
		ON pay.CURRENCY = cur.CURRENCY_ID
		LEFT JOIN tst_intern_currency_rates rat
		ON pay.CURRENCY = rat.CURRENCY_ID 
		AND rat.EXCHANGE_DATE = pay.TRANSACTION_DATE 
		LEFT JOIN tst_intern_blacklist blk
		ON PAY.USER_ID_SENDER = blk.USER_ID 
		WHERE cur.END_DATE IS NULL
		AND blk_ind = 0 
		
)
DS 
GROUP BY 2
