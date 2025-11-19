-- =============== version  1.7 ===================
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) 
VALUES 
(92, 'view rider analysis', 'admin', 'rider report', '2025-06-16 13:43:44', '2025-06-16 13:43:44'),
(93, 'view driver analysis', 'admin', 'driver report', '2025-10-23 07:19:26', '2025-10-23 07:19:26'),
(94, 'rider analysis', 'admin', 'other', '2025-10-25 04:41:07', '2025-10-25 04:41:07'),
(95, 'driver analysis', 'admin', 'other', '2025-10-25 04:41:07', '2025-10-25 04:41:07');

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('92', '1'), ('93', '1'),('94', '1'),('95', '1');