
select
{{ dbt_utils.star(from = ref('stg_transactions_enriched'), except=['new_field','transaction_category'], quote_identifiers = false, prefix='STG_') }}

from {{ref('stg_transactions_enriched') }}