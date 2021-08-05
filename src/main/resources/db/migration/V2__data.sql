--------------------
---- Dummy Data ----
--------------------

-- Users
insert into user(name, status, tags, email, id, profile_img) values('Atman Dev', 'ACTIVE', 'volunteer', 'atman.dev@gmail.moc', 'u-atman-dev', 'https://imgur.io/sample-06.png');
insert into user(name, status, tags, email, id, profile_img) values('Dhyan Shankar', 'ACTIVE', '', 'dhyan.shankar@gmail.moc', 'u-dhyan-shankar', 'https://imgur.io/sample-05.png');

insert into user(name, status, tags, email, id, profile_img) values('Prem Sagar', 'ACTIVE', 'member, show_badge', 'prem.sagar@gmail.moc', 'u-prem-sagar', 'https://imgur.io/sample-01.png');
insert into user(name, status, tags, email, id, profile_img) values('Anand Prakash', 'INACTIVE', 'member', 'anand.prakash@gmail.moc', 'u-anand-prakash', 'https://imgur.io/sample-02.png');
insert into user(name, status, tags, email, id, profile_img) values('Jyoti Krishna', 'ACTIVE', 'show_badge', 'jyoti.krishna@gmail.moc', 'u-jyoti-krishna', 'https://imgur.io/sample-03.png');
insert into user(name, status, tags, email, id, profile_img) values('Amrit Vani', 'ACTIVE', '', 'amrit.vani@gmail.moc', 'u-amrit-vani', 'https://imgur.io/sample-04.png');

-- Posts
insert into post(title, type, status, tags, content, created_by_user_id, id) values('What Makes India a Nation?', 'ARTICLE', 'ACTIVE', 'Basic, English', 'See, a nation does not become admirable or respectable or lovable...', 'u-dhyan-shankar', 'art-what-makes-india-nation');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('What does it mean to be superconscious?', 'VIDEO', 'ACTIVE', 'NeemCandy, English', 'https://www.youtube.com/watch?v=h-GsTd0SjPg', 'u-dhyan-shankar', 'vid-what-does-it-mean-superconscious');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('Memory of Present is past', 'ARTICLE', 'ACTIVE', 'Advanced, English', 'What is meant by value? To value is to know the importance....', 'u-dhyan-shankar', 'art-present-is-present');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('दूसरों के सम्मान से पहले अपना सम्मान', 'ARTICLE', 'ACTIVE', 'Advanced, Hindi', 'अभिभावकों को छोड़ दो अभी। मामला उलझ जाता है क्योंकि वहाँ पर मोह है...', 'u-dhyan-shankar', 'art-others-respect');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('पढ़ने बैठो तो मन भागता है', 'ARTICLE', 'INACTIVE', 'Basic, Hindi', 'यहाँ बैठकर मुझे सुन रहे हो, तो क्या मन जा रहा है चिकित्सा विज्ञान के विषयों की ओर?...', 'u-dhyan-shankar', 'art-student-mind');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('ज़िन्दगी बेचे बिना कैरियर नहीं बनेगा?', 'VIDEO', 'ACTIVE', 'Hindi', 'https://www.youtube.com/watch?v=UrhKv2laju0', 'u-dhyan-shankar', 'vid-life-career');

-- Comments
insert into comment(type, like_count, status, user_id, post_id, id, content) values('MAIN', 60, 'APPROVED', 'u-prem-sagar', 'art-what-makes-india-nation', '0xc0e708-9957-11eb-a8b3-0242ac130003', 'Mine is most popular comment');
insert into comment(type, status, user_id, post_id, id, content) values('MAIN', 'PENDING_APPROVAL', 'u-prem-sagar', 'art-what-makes-india-nation', '1xc0e708-9957-11eb-a8b3-0242ac130003', 'Thank you Acharya Ji. Blessed!');
insert into comment(type, like_count, status, user_id, post_id, id, content) values('MAIN', 40, 'APPROVED', 'u-jyoti-krishna', 'art-what-makes-india-nation', '2xc0e708-9957-11eb-a8b3-0242ac130003', 'Everyone needs to read this.');
insert into comment(type, status, user_id, post_id, id, content) values('MAIN', 'PENDING_APPROVAL', 'u-jyoti-krishna', 'art-what-makes-india-nation', '7xc0e708-9957-11eb-a8b3-0242ac130003', 'Please approve me.');
insert into comment(type, like_count, status, user_id, post_id, id, content) values('MAIN', 10, 'BLOCKED', 'u-amrit-vani', 'art-what-makes-india-nation', '5xc0e708-9957-11eb-a8b3-0242ac130003', 'Please delete this comment!');

insert into comment(type, like_count, reply_count, status, user_id, post_id, id, content) values('MAIN', 20, 2, 'APPROVED', 'u-amrit-vani', 'art-what-makes-india-nation', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'How do I subscribe to Vedant course?');
insert into comment(type, like_count, status, parent_comment_id, user_id, post_id, id, content) values('REPLY', 10, 'APPROVED', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'u-amrit-vani', 'art-what-makes-india-nation', '4xc0e708-9957-11eb-a8b3-0242ac130003', 'Please visit www.acharyaprashant.org');
insert into comment(type, status, parent_comment_id, user_id, post_id, id, content) values('REPLY', 'PENDING_APPROVAL', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'u-amrit-vani', 'art-what-makes-india-nation', '6xc0e708-9957-11eb-a8b3-0242ac130003', 'Please approve this reply');
insert into comment(type, like_count, status, parent_comment_id, user_id, post_id, id, content) values('REPLY', 20, 'APPROVED', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'u-jyoti-krishna', 'art-what-makes-india-nation', '8xc0e708-9957-11eb-a8b3-0242ac130003', 'Yay! My reply is approved');
insert into comment(type, status, parent_comment_id, user_id, post_id, id, content) values('REPLY', 'PENDING_APPROVAL', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'u-jyoti-krishna', 'art-what-makes-india-nation', '9xc0e708-9957-11eb-a8b3-0242ac130003', 'Please approve this reply');

-- Roles and Role Mappings
insert into role(name, status, id) values ('SuperAdmin', 'ACTIVE', 'r-super-admin');
insert into role(name, status, id) values ('Admin', 'ACTIVE', 'r-admin');
insert into role(name, status, id) values ('Editor', 'ACTIVE', 'r-editor');
insert into role(name, status, id) values ('Author', 'ACTIVE', 'r-author');
insert into role(name, status, id) values ('Contributor', 'INACTIVE', 'r-contributor');
insert into role(name, status, id) values ('Subscriber', 'ACTIVE', 'r-subscriber');

insert into user_role_map(role_id, user_id) values ('r-subscriber', 'u-prem-sagar');
insert into user_role_map(role_id, user_id) values ('r-subscriber', 'u-anand-prakash');
insert into user_role_map(role_id, user_id) values ('r-subscriber', 'u-jyoti-krishna');
insert into user_role_map(role_id, user_id) values ('r-subscriber', 'u-amrit-vani');

insert into user_role_map(role_id, user_id) values ('r-super-admin', 'u-atman-dev');
insert into user_role_map(role_id, user_id) values ('r-editor', 'u-dhyan-shankar');
