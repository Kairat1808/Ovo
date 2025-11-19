


ALTER TABLE `general_settings` ADD `distance_unit` TINYINT(1) NOT NULL DEFAULT '1' AFTER `thousand_separator`;
ALTER TABLE `general_settings` ADD `user_cancellation_penalty` DECIMAL(28,8) NOT NULL DEFAULT '0' AFTER `user_cancellation_limit`, ADD `driver_cancellation_limit` INT NOT NULL AFTER `user_cancellation_penalty`, ADD `driver_cancellation_penalty` DECIMAL(28,8) NOT NULL DEFAULT '0' AFTER `driver_cancellation_limit`;
ALTER TABLE `general_settings` ADD `min_fare` DECIMAL(28,8) NOT NULL DEFAULT '0' AFTER `ride_cancel_time`; 


INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(90, 'pusher configuration', 'admin', 'setting', '2025-10-11 04:07:13', '2025-10-11 04:07:13'),
(89, 'ride settings', 'admin', 'setting', '2025-10-11 04:07:13', '2025-10-11 04:07:13'),
(91, 'google maps setting', 'admin', 'setting', '2025-10-11 04:07:13', '2025-10-11 04:07:13');


INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(90, 1),
(89, 1),
(91, 1);

ALTER TABLE `drivers` ADD `current_lat` TEXT NULL DEFAULT NULL AFTER `remember_token`, ADD `current_lot` TEXT NULL DEFAULT NULL AFTER `current_lat`, ADD `last_location_fetch_at` TIMESTAMP NULL DEFAULT NULL AFTER `current_lot`; 

CREATE TABLE `ride_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `ride_id` int UNSIGNED NOT NULL DEFAULT '0',
  `location` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `ride_locations` ADD PRIMARY KEY (`id`);

ALTER TABLE `ride_locations` MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
ALTER TABLE `services` ADD `subtitle` TEXT NULL DEFAULT NULL AFTER `name`;

