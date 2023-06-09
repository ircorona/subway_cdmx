-- pivot table

USE metro_cdmx;

CREATE TABLE `lines_stations` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `station_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`),
    FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;
