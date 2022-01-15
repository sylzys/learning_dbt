{% macro insert_audits(action) -%}
    insert into learn.public.dbt_audits (audit_type) values ('{{ action }}'); commit;
{% endmacro %}