insert into user(name, profile_img, status, tags, email, id) values('Atman Dev', 'https://imgur.io/sample-06.png', 'ACTIVE', '', 'atman.dev@gmail.moc', 'u-atman-dev');
insert into user(name, profile_img, status, tags, email, id) values('Dhyan Shankar', 'https://imgur.io/sample-05.png', 'ACTIVE', '', 'dhyan.shankar@gmail.moc', 'u-dhyan-shankar');

insert into user(name, profile_img, status, tags, email, id) values('Prem Sagar', 'https://imgur.io/sample-01.png', 'ACTIVE', 'member', 'prem.sagar@gmail.moc', 'u-prem-sagar');
insert into user(name, profile_img, status, tags, email, id) values('Anand Prakash', 'https://imgur.io/sample-02.png', 'INACTIVE', 'member', 'anand.prakash@gmail.moc', 'u-anand-prakash');
insert into user(name, profile_img, status, tags, email, id) values('Jyoti Krishna', 'https://imgur.io/sample-03.png', 'ACTIVE', 'blocked', 'jyoti.krishna@gmail.moc', 'u-jyoti-krishna');
insert into user(name, profile_img, status, tags, email, id) values('Amrit Vani', 'https://imgur.io/sample-04.png', 'ACTIVE', '', 'amrit.vani@gmail.moc', 'u-amrit-vani');

insert into post(title, type, status, tags, content, created_by_user_id, id) values('What Makes India a Nation?', 'ARTICLE', 'ACTIVE', 'Basic, English', 'See, a nation does not become admirable or respectable or lovable...', 'u-dhyan-shankar', 'art-what-makes-india-nation');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('What does it mean to be superconscious? || Acharya Prashant, with XLRI (2021)', 'VIDEO', 'ACTIVE', 'NeemCandy, English', 'https://www.youtube.com/watch?v=h-GsTd0SjPg', 'u-dhyan-shankar', 'vid-what-does-it-mean-superconscious');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('Present is Present, memory of Present is past', 'ARTICLE', 'ACTIVE', 'Advanced, English', 'What is meant by value? To value is to know the importance....', 'u-dhyan-shankar', 'art-present-is-present');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('दूसरों के सम्मान से पहले अपना सम्मान', 'ARTICLE', 'ACTIVE', 'Advanced, Hindi', 'अभिभावकों को छोड़ दो अभी। मामला उलझ जाता है क्योंकि वहाँ पर मोह है...', 'u-dhyan-shankar', 'art-others-respect');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('पढ़ने बैठो तो मन भागता है || आचार्य प्रशांत (2020)', 'ARTICLE', 'INACTIVE', 'Basic, Hindi', 'यहाँ बैठकर मुझे सुन रहे हो, तो क्या मन जा रहा है चिकित्सा विज्ञान के विषयों की ओर?...', 'u-dhyan-shankar', 'art-student-mind');
insert into post(title, type, status, tags, content, created_by_user_id, id) values('ज़िन्दगी बेचे बिना कैरियर नहीं बनेगा? || आचार्य प्रशांत, आइ.आइ.टी पटना सत्र (2021)', 'VIDEO', 'ACTIVE', 'Hindi', 'https://www.youtube.com/watch?v=UrhKv2laju0', 'u-dhyan-shankar', 'vid-life-career');

insert into comment(type, status, user_id, post_id, id, content) values('MAIN', 'ACTIVE', 'u-prem-sagar', 'art-what-makes-india-nation', '1xc0e708-9957-11eb-a8b3-0242ac130003', 'Thank you Acharya Ji. Blessed!');
insert into comment(type, status, user_id, post_id, id, content) values('MAIN', 'ACTIVE', 'u-jyoti-krishna', 'art-what-makes-india-nation', '2xc0e708-9957-11eb-a8b3-0242ac130003', 'Everyone needs to read this.');
insert into comment(type, status, user_id, post_id, id, content) values('MAIN', 'ACTIVE', 'u-amrit-vani', 'art-what-makes-india-nation', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'How do I subscribe to Vedant course?');
insert into comment(type, status, parent_comment_id, user_id, post_id, id, content) values('REPLY', 'ACTIVE', '3xc0e708-9957-11eb-a8b3-0242ac130003', 'u-amrit-vani', 'art-what-makes-india-nation', '4xc0e708-9957-11eb-a8b3-0242ac130003', 'Please visit www.acharyaprashant.org');

insert into role(name, status, id) values ('SuperAdmin', 'ACTIVE', 'r-super-admin');
insert into role(name, status, id) values ('Admin', 'ACTIVE', 'r-admin');
insert into role(name, status, id) values ('Editor', 'ACTIVE', 'r-editor');
insert into role(name, status, id) values ('Author', 'ACTIVE', 'r-author');
insert into role(name, status, id) values ('Contributor', 'INACTIVE', 'r-contributor');
insert into role(name, status, id) values ('Subscriber', 'ACTIVE', 'r-subscriber');

insert into user_role_map(role_id, user_id, status) values ('r-subscriber', 'u-prem-sagar', 'ACTIVE');
insert into user_role_map(role_id, user_id, status) values ('r-subscriber', 'u-anand-prakash', 'ACTIVE');
insert into user_role_map(role_id, user_id, status) values ('r-subscriber', 'u-jyoti-krishna', 'ACTIVE');
insert into user_role_map(role_id, user_id, status) values ('r-subscriber', 'u-amrit-vani', 'ACTIVE');

insert into user_role_map(role_id, user_id, status) values ('r-super-admin', 'u-atman-dev', 'ACTIVE');
insert into user_role_map(role_id, user_id, status) values ('r-editor', 'u-dhyan-shankar', 'ACTIVE');
