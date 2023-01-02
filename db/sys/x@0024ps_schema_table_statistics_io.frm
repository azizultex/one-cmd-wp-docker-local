TYPE=VIEW
query=select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name`
md5=6e22f7c5621b846eef3dbcf31d8df821
updatable=0
algorithm=1
definer_user=mysql.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=2023-01-02 16:50:50
create-version=1
source=SELECT extract_schema_from_file_name(file_name) AS table_schema, extract_table_from_file_name(file_name) AS table_name, SUM(count_read) AS count_read, SUM(sum_number_of_bytes_read) AS sum_number_of_bytes_read, SUM(sum_timer_read) AS sum_timer_read, SUM(count_write) AS count_write, SUM(sum_number_of_bytes_write) AS sum_number_of_bytes_write, SUM(sum_timer_write) AS sum_timer_write, SUM(count_misc) AS count_misc, SUM(sum_timer_misc) AS sum_timer_misc FROM performance_schema.file_summary_by_instance GROUP BY table_schema, table_name
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name`