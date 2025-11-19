ALTER TABLE `users` ADD `penalty_amount` DECIMAL(28,8) NOT NULL DEFAULT '0' AFTER `total_reviews`;

CREATE TABLE `ride_queues` (
  `id` bigint UNSIGNED NOT NULL,
  `ride_id` int UNSIGNED NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `ride_queues`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ride_queues`  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;


INSERT INTO `cron_schedules` (`id`, `name`, `interval`, `status`, `created_at`, `updated_at`) VALUES (2, '5 Minute', '300', '1', NULL, NULL); 

UPDATE `cron_jobs` SET `cron_schedule_id` = '2' WHERE `cron_jobs`.`id` = 1; 

INSERT INTO `cron_jobs` (`id`, `name`, `alias`, `action`, `url`, `cron_schedule_id`, `next_run`, `last_run`, `is_running`, `is_default`, `created_at`, `updated_at`) VALUES
(6, 'Ride Queue', 'ride_queue', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"rideQueue\"]', NULL, 1, '2025-11-15 03:09:06', '2025-11-15 03:08:06', 1, 1, NULL, '2025-11-14 21:08:06');
  
ALTER TABLE `ride_queues` ADD `dispatch_count` INT NOT NULL DEFAULT '0' AFTER `ordering`;
