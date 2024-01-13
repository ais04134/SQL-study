SELECT ap.apnt_no, p.pt_name, ap.pt_no, ap.mcdp_cd, d.dr_name, ap.apnt_ymd
FROM appointment AS ap 
JOIN doctor AS d ON d.dr_id = ap.mddr_id
JOIN patient AS p ON p.pt_no = ap.pt_no
WHERE ap.apnt_cncl_ymd IS NULL AND ap.mcdp_cd = 'CS' AND ap.apnt_ymd LIKE '2022-04-13%'
ORDER BY ap.apnt_ymd;