CREATE TABLE `user`(
    `id`                VARCHAR(40) NOT NULL,
    `name`              VARCHAR(20) NOT NULL,
    `email`             VARCHAR(50) NOT NULL,
    `mobile`            VARCHAR(20),
    `profile_img`       VARCHAR(100) NOT NULL UNIQUE,   -- CDN url
    `status`            VARCHAR(10) NOT NULL,           -- [ACTIVE, INACTIVE]
    `tags`              VARCHAR(100),                   -- Comma separated lables/categories e.g. 'member', 'blocked'
    `created_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

-- Article/Video
CREATE TABLE `post`(
    `id`                    VARCHAR(40) NOT NULL,
    `title`                 VARCHAR(100) NOT NULL,
    `type`                  VARCHAR(40) NOT NULL,       -- [VIDEO, ARTICLE]
    `content`               LONGTEXT NOT NULL,          -- Post content, Video url
    `status`                VARCHAR(10) NOT NULL,       -- [ACTIVE, INACTIVE]
    `tags`                  VARCHAR(100),               -- Comma separated lables/categories e.g. 'shorts', 'neemCandy', 'Advanced'
    `created_by_user_id`    VARCHAR(40) NOT NULL,       -- Created By User having edit roles (SuperAdmin/Admin/Editor etc.)
    `view_count`            INT NOT NULL DEFAULT 0,     -- incremented everytime a post is viewed
    `created_on`            TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`            TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY(`created_by_user_id`) REFERENCES user(`id`)
);

CREATE TABLE `comment`(
    `id`                VARCHAR(40) NOT NULL,
    `type`              VARCHAR(40) NOT NULL, -- [MAIN, REPLY]
    `content`           LONGTEXT NOT NULL,
    `post_id`           VARCHAR(40) NOT NULL,
    `user_id`           VARCHAR(40) NOT NULL,
    `parent_comment_id` VARCHAR(40),
    `status`            VARCHAR(10) NOT NULL, -- [CREATED, APPROVED, BLOCKED]
    `created_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY(`user_id`) REFERENCES user(`id`),
    FOREIGN KEY(`post_id`) REFERENCES post(`id`),
    FOREIGN KEY(`parent_comment_id`) REFERENCES comment(`id`)
);

-- To capture the likes for the post/comment
CREATE TABLE `user_reaction`(
    `id`                VARCHAR(40) NOT NULL,
    `type`              VARCHAR(20) NOT NULL, -- [LIKE, HEART]
    `comment_id`        VARCHAR(40),
    `post_id`           VARCHAR(40),
    `user_id`           VARCHAR(40),
    `created_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY(`user_id`) REFERENCES user(`id`),
    FOREIGN KEY(`comment_id`) REFERENCES comment(`id`),
    FOREIGN KEY(`post_id`) REFERENCES post(`id`)
);

CREATE TABLE `role`(
    `id`                VARCHAR(40) NOT NULL,
    `name`              VARCHAR(20) NOT NULL, -- [Super Admin, Admin, Editor, Author, Contributor, Subscriber] Mimicking wordpress roles (https://wordpress.org/support/article/roles-and-capabilities/#summary-of-roles)
    `status`            VARCHAR(10) NOT NULL, -- [ACTIVE, INACTIVE]
    `created_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user_role_map`(
    `user_id`           VARCHAR(40) NOT NULL,
    `role_id`           VARCHAR(40) NOT NULL,
    `status`            VARCHAR(10) NOT NULL, -- [ACTIVE, INACTIVE]
    `created_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_on`        TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`user_id`, `role_id`),
    FOREIGN KEY(`user_id`) REFERENCES user(`id`),
    FOREIGN KEY(`role_id`) REFERENCES role(`id`)
);
