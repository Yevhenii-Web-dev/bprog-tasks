SELECT COUNT(*)
FROM zad_2_wynajem AS w
WHERE w.id_pokoju = 'room_id_value' AND w.data_start < 'new_date_end_value' AND w.data_stop > 'new_date_start_value';
