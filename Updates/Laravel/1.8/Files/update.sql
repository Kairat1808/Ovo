INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES (96, 'view driver earning', 'admin', 'driver report', '2025-11-01 05:24:04', '2025-11-01 05:24:04');

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('96', '1');