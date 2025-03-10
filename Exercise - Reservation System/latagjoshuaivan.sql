SELECT 
    us.fn, us.ln, us.course, us.year, us.gender, ul.email, ul.contact_num
FROM
    users us
        INNER JOIN
    userlogin ul ON us.un = ul.un;