--------------------------------------
-- User Facing Application Queries --
--------------------------------------

-- Show all approved comments for a post (sorted by likes). The logged in user sees his PENDING_APPROVAL and BLOCKED comments also. Get user's name & profile img
select * from (
select c.content, c.like_count, c.type, c.post_id, u.name, u.profile_img, c.status from comment c, user u
where c.type='MAIN' and c.post_id = 'art-what-makes-india-nation' and c.status = 'APPROVED' and c.user_id not in ('u-amrit-vani')
and c.user_id = u.id
UNION
select c.content, c.like_count, c.type, c.post_id, u.name, u.profile_img, c.status from comment c, user u
where c.type='MAIN' and c.post_id = 'art-what-makes-india-nation' and c.status = 'APPROVED' and c.user_id ='u-amrit-vani'
and c.user_id = u.id
) order by 2 desc;

--Get all approved replies for a comment (sorted by likes). The logged in user sees all his PENDING_APPROVAL and BLOCKED replies also for his comments.
select * from (
select type, like_count, content, post_id, user_id, status from comment where status = 'APPROVED' and user_id not in ('u-amrit-vani') and parent_comment_id = '3xc0e708-9957-11eb-a8b3-0242ac130003'
UNION
select type, like_count, content, post_id, user_id, status from comment where user_id = 'u-amrit-vani' and parent_comment_id = '3xc0e708-9957-11eb-a8b3-0242ac130003'
) order by like_count desc;

-- Show all approved comments for a post (sorted by comment_count). The logged in user sees his PENDING_APPROVAL and BLOCKED comments also. Get user's name & profile img
select * from (
select c.content, c.like_count, c.reply_count, c.type, c.post_id, u.name, u.profile_img, c.status from comment c, user u
where c.type='MAIN' and c.post_id = 'art-what-makes-india-nation' and c.status = 'APPROVED' and c.user_id not in ('u-amrit-vani')
and c.user_id = u.id
UNION
select c.content, c.like_count, c.reply_count, c.type, c.post_id, u.name, u.profile_img, c.status from comment c, user u
where c.type='MAIN' and c.post_id = 'art-what-makes-india-nation' and c.status = 'APPROVED' and c.user_id ='u-amrit-vani'
and c.user_id = u.id
) order by 3 desc;

--------------------------------------
-- Admin Portal Application Queries --
--------------------------------------
-- Get all comments posted by a user

--Get all comments which are pending approval for a post
select * from comment where post_id = 'art-what-makes-india-nation' and status='PENDING_APPROVAL';

--Get all comments which were blocked for a post
select * from comment where post_id = 'art-what-makes-india-nation' and status='BLOCKED';

--Get all comments by a user
select c.* from user u, comment c where u.id = c.user_id and u.id = 'u-amrit-vani'