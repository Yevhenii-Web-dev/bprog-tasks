SELECT p.name AS product_name,
       COALESCE(ceny_promo.value, ceny_regular.value) AS price
FROM zad_1_produkty AS p
         LEFT JOIN zad_1_ceny AS ceny_regular
                   ON p.id = ceny_regular.product_id
                       AND ceny_regular.type = 0
         LEFT JOIN zad_1_ceny AS ceny_promo
                   ON p.id = ceny_promo.product_id
                       AND ceny_promo.type = 1
ORDER BY price ASC;
