TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `parkir_masuk` AFTER INSERT ON `tb_masuk` FOR EACH ROW BEGIN\nUPDATE tb_lahan\nSET sisa_parkir = sisa_parkir - NEW.jumlah_kendaraan\nWHERE\nid_lahan = NEW.id_lahan;\nEND'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
