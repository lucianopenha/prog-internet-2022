CREATE TABLE `users` (
	`email` VARCHAR(120) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nome` VARCHAR(45) NOT NULL COLLATE 'utf8mb3_general_ci',
	`senha` VARCHAR(80) NOT NULL COLLATE 'utf8mb3_general_ci',
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`email`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
