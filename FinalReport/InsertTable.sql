INSERT INTO Users VALUES
('user1', '1234567890123', 'John', 'Doe', 'john.doe@example.com', 'password_hash_1', 'salt_1', '1990-01-01', 32, '1234567890', 'M', NULL),
('user2', '9876543210987', 'Jane', 'Smith', 'jane.smith@example.com', 'password_hash_2', 'salt_2', '1985-05-15', 37, '9876543210', 'F', NULL);

INSERT INTO Problem VALUES
('problem1', 'user1', 'I have a problem', 'Technical', '2023-01-15 12:30:00', 'Pending'),
('problem2', 'user2', 'Need assistance', 'General', '2023-02-20 15:45:00', 'Solved');

INSERT INTO Admin VALUES
('admin1', 'Verified Admin'),
('admin2', 'Support Admin');

INSERT INTO Host VALUES
('user1', 'admin1', '0123456789'),
('user2', 'admin2', '9876543210');

INSERT INTO Traveler VALUES
('user1'),
('user2');

INSERT INTO PAYMENT VALUES
('payment1', '2023-03-10 08:00:00', 100.00, '0123456789', '9876543210', 'Success', 'qrcode1'),
('payment2', '2023-03-12 14:30:00', 75.50, '9876543210', '0123456789', 'Ongoing', 'qrcode2');

INSERT INTO Chatroom VALUES
('chatroom1'),
('chatroom2');

INSERT INTO Chat VALUES
('user1', 'user2', 'chatroom1'),
('user2', 'user1', 'chatroom1');

INSERT INTO Message VALUES
('message1', 'chatroom1', 'user1', '2023-03-22 08:30:00'),
('message2', 'chatroom1', 'user2', '2023-03-22 09:00:00');

INSERT INTO Text VALUES
('message1', 'chatroom1', 'Hello, how can I help you?'),
('message2', 'chatroom1', 'Hi! I have a question about the accommodation.');

INSERT INTO Attachment VALUES
('message1', 'chatroom1'),
('message2', 'chatroom1');

INSERT INTO Picture VALUES
('message1', 'chatroom1', 'attachment1.jpg'),
('message2', 'chatroom1', 'attachment2.jpg');

INSERT INTO Users VALUES
('user3', '3333333333333', 'Alice', 'Johnson', 'alice.johnson@example.com', 'password_hash_3', 'salt_3', '1988-06-20', 35, '1111111111', 'F', NULL),
('user4', '4444444444444', 'Bob', 'Miller', 'bob.miller@example.com', 'password_hash_4', 'salt_4', '1995-02-10', 28, '2222222222', 'M', NULL),
('user5', '5555555555555', 'Eva', 'Clark', 'eva.clark@example.com', 'password_hash_5', 'salt_5', '1992-09-15', 31, '3333333333', 'F', NULL),
('user6', '6666666666666', 'David', 'Smith', 'david.smith@example.com', 'password_hash_6', 'salt_6', '1980-12-05', 42, '4444444444', 'M', NULL),
('user7', '7777777777777', 'Grace', 'Wilson', 'grace.wilson@example.com', 'password_hash_7', 'salt_7', '1987-04-30', 36, '5555555555', 'F', NULL),
('user8', '8888888888888', 'Henry', 'Taylor', 'henry.taylor@example.com', 'password_hash_8', 'salt_8', '1998-07-25', 23, '6666666666', 'M', NULL),
('user9', '9999999999999', 'Sophie', 'Brown', 'sophie.brown@example.com', 'password_hash_9', 'salt_9', '1991-11-18', 32, '7777777777', 'F', NULL),
('user10', '1010101010101', 'Oliver', 'Davis', 'oliver.davis@example.com', 'password_hash_10', 'salt_10', '1985-03-08', 38, '8888888888', 'M', NULL);

INSERT INTO Problem VALUES
('problem3', 'user3', 'Issue with the app', 'Technical', '2023-03-01 10:15:00', 'Pending'),
('problem4', 'user4', 'Need help with reservation', 'General', '2023-03-05 14:30:00', 'Pending'),
('problem5', 'user5', 'Unable to login', 'Technical', '2023-03-10 08:45:00', 'Solved'),
('problem6', 'user6', 'Question about amenities', 'General', '2023-03-15 12:00:00', 'Pending'),
('problem7', 'user7', 'Payment issue', 'Financial', '2023-03-20 16:20:00', 'Solved'),
('problem8', 'user8', 'Accommodation inquiry', 'General', '2023-03-25 09:30:00', 'Pending'),
('problem9', 'user9', 'Feedback submission error', 'Technical', '2023-03-30 11:45:00', 'Pending'),
('problem10', 'user10', 'Assistance needed with checkout', 'General', '2023-04-01 13:10:00', 'Pending');

INSERT INTO Admin VALUES
('admin3', 'Verified Admin'),
('admin4', 'Support Admin'),
('admin5', 'Verified Admin'),
('admin6', 'Support Admin'),
('admin7', 'Verified Admin'),
('admin8', 'Support Admin'),
('admin9', 'Verified Admin'),
('admin10', 'Support Admin');

INSERT INTO Host VALUES
('user3', 'admin3', '1111111111'),
('user4', 'admin4', '2222222222'),
('user5', 'admin5', '3333333333'),
('user6', 'admin6', '4444444444'),
('user7', 'admin7', '5555555555'),
('user8', 'admin8', '6666666666'),
('user9', 'admin9', '7777777777'),
('user10', 'admin10', '8888888888');

INSERT INTO Traveler VALUES
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8'),
('user9'),
('user10');

INSERT INTO PAYMENT VALUES
('payment3', '2023-04-05 12:30:00', 120.75, '1111111111', '2222222222', 'Ongoing', 'qrcode3'),
('payment4', '2023-04-10 14:45:00', 90.50, '2222222222', '1111111111', 'Waiting', 'qrcode4'),
('payment5', '2023-04-15 09:00:00', 150.25, '3333333333', '4444444444', 'Fail', 'qrcode5'),
('payment6', '2023-04-20 11:15:00', 80.00, '4444444444', '3333333333', 'Success', 'qrcode6'),
('payment7', '2023-04-25 16:30:00', 200.50, '5555555555', '6666666666', 'Ongoing', 'qrcode7'),
('payment8', '2023-05-01 08:45:00', 95.75, '6666666666', '5555555555', 'Waiting', 'qrcode8'),
('payment9', '2023-05-05 12:00:00', 180.25, '7777777777', '8888888888', 'Success', 'qrcode9'),
('payment10', '2023-05-10 14:15:00', 110.00, '8888888888', '7777777777', 'Fail', 'qrcode10');

INSERT INTO Chatroom VALUES
('chatroom3'),
('chatroom4'),
('chatroom5'),
('chatroom6'),
('chatroom7'),
('chatroom8'),
('chatroom9'),
('chatroom10');

INSERT INTO Chat VALUES
('user4', 'user3', 'chatroom3'),
('user5', 'user6', 'chatroom4'),
('user6', 'user5', 'chatroom4'),
('user7', 'user8', 'chatroom5'),
('user8', 'user7', 'chatroom5'),
('user9', 'user10', 'chatroom6'),
('user10', 'user9', 'chatroom6');

INSERT INTO Message VALUES
('message3', 'chatroom3', 'user3', '2023-05-01 08:30:00'),
('message4', 'chatroom3', 'user4', '2023-05-01 09:00:00');

INSERT INTO Text VALUES
('message3', 'chatroom3', 'Hello, how can I assist you today?'),
('message4', 'chatroom3', 'Hi! I have a question about my reservation.');

INSERT INTO Attachment VALUES
('message3', 'chatroom3'),
('message4', 'chatroom3');

INSERT INTO Picture VALUES
('message3', 'chatroom3', 'attachment3.jpg'),
('message4', 'chatroom3', 'attachment4.jpg');

INSERT INTO Message VALUES
('message5', 'chatroom4', 'user5', '2023-05-10 10:30:00'),
('message6', 'chatroom4', 'user6', '2023-05-10 11:00:00');

INSERT INTO Text VALUES
('message5', 'chatroom4', 'Hey there! Hows your stay going?'),
('message6', 'chatroom4', 'Its great! The accommodations are fantastic.');

INSERT INTO Attachment VALUES
('message5', 'chatroom4'),
('message6', 'chatroom4');

INSERT INTO Picture VALUES
('message5', 'chatroom4', 'attachment5.jpg'),
('message6', 'chatroom4', 'attachment6.jpg');

INSERT INTO Message VALUES
('message7', 'chatroom5', 'user7', '2023-05-15 12:45:00'),
('message8', 'chatroom5', 'user8', '2023-05-15 13:15:00');

INSERT INTO Text VALUES
('message7', 'chatroom5', 'Hello! Anything I can help you with?'),
('message8', 'chatroom5', 'I have a question about the amenities.');

INSERT INTO Attachment VALUES
('message7', 'chatroom5'),
('message8', 'chatroom5');

INSERT INTO Picture VALUES
('message7', 'chatroom5', 'attachment7.jpg'),
('message8', 'chatroom5', 'attachment8.jpg');

INSERT INTO Message VALUES
('message9', 'chatroom6', 'user9', '2023-05-20 14:00:00'),
('message10', 'chatroom6', 'user10', '2023-05-20 14:30:00');

INSERT INTO Text VALUES
('message9', 'chatroom6', 'Hi! How can I assist you during your stay?'),
('message10', 'chatroom6', 'I have a question about the local attractions.');

INSERT INTO Attachment VALUES
('message9', 'chatroom6'),
('message10', 'chatroom6');

INSERT INTO Picture VALUES
('message9', 'chatroom6', 'attachment9.jpg'),
('message10', 'chatroom6', 'attachment10.jpg');

INSERT INTO Accommodation VALUES
('acc1', 'user1', 'qr_code_1', 'Cozy Cottage', TRUE, FALSE, FALSE, 2, 'A101', TRUE, TRUE, TRUE, TRUE, 'KING', TRUE, 'A charming cottage for your vacation', 150, NULL, '123 Main St', 'Cityville', 'Provinceville', 'Districtville', '12345', 'ggmap_link_1', 2, 4.5, 'OPEN', FALSE),
('acc2', 'user2', 'qr_code_2', 'Modern Apartment', FALSE, TRUE, FALSE, 5, 'B202', TRUE, TRUE, TRUE, TRUE, 'QUEEN', FALSE, 'A spacious apartment with a great view', 200, NULL, '456 Oak St', 'Townsville', 'Provinceville', 'Districtville', '67890', 'ggmap_link_2', 4, 4, 'OPEN', TRUE),
('acc3', 'user3', 'qr_code_3', 'Rustic Cabin', TRUE, TRUE, TRUE, 3, 'C303', FALSE, FALSE, TRUE, TRUE, 'KING', FALSE, 'A cozy cabin surrounded by nature', 180, NULL, '789 Forest Rd', 'Natureville', 'Provinceville', 'Districtville', '54321', 'ggmap_link_3', 3, 5, 'OPEN', FALSE),
('acc4', 'user4', 'qr_code_4', 'Charming Studio', FALSE, TRUE, FALSE, 3, 'D102', TRUE, TRUE, TRUE, TRUE, 'QUEEN', TRUE, 'A stylish studio for a comfortable stay', 130, NULL, '567 Oak St', 'Townsville', 'Provinceville', 'Districtville', '24680', 'ggmap_link_4', 2, 5, 'OPEN', TRUE),
('acc5', 'user5', 'qr_code_5', 'Seaside Villa', FALSE, FALSE, TRUE, 2, 'E201', TRUE, TRUE, TRUE, TRUE, 'KING', TRUE, 'A luxurious villa with a breathtaking view', 250, NULL, '101 Beach Blvd', 'Beachtown', 'Provinceville', 'Districtville', '98765', 'ggmap_link_5', 4, 2, 'OPEN', FALSE),
('acc6', 'user6', 'qr_code_6', 'Urban Loft', FALSE, TRUE, FALSE, 6, 'F602', TRUE, TRUE, TRUE, TRUE, 'QUEEN', TRUE, 'A modern loft in the heart of the city', 180, NULL, '456 Main St', 'Cityville', 'Provinceville', 'Districtville', '54321', 'ggmap_link_6', 3, 1, 'OPEN', FALSE),
('acc7', 'user7', 'qr_code_7', 'Coastal Retreat', TRUE, FALSE, TRUE, 4, 'G401', TRUE, TRUE, TRUE, TRUE, 'KING', FALSE, 'A peaceful retreat by the coast', 200, NULL, '789 Shoreline Ave', 'Coastalville', 'Provinceville', 'Districtville', '11223', 'ggmap_link_7', 3, 3, 'OPEN', TRUE),
('acc8', 'user8', 'qr_code_8', 'Mountain Chalet', TRUE, TRUE, FALSE, 5, 'H501', TRUE, TRUE, TRUE, TRUE, 'QUEEN', TRUE, 'A charming chalet with mountain views', 220, NULL, '876 Summit Rd', 'Mountainville', 'Provinceville', 'Districtville', '33445', 'ggmap_link_8', 4, 4, 'OPEN', FALSE),
('acc9', 'user9', 'qr_code_9', 'Garden Cottage', FALSE, FALSE, FALSE, 1, 'I101', TRUE, TRUE, TRUE, TRUE, 'KING', FALSE, 'A quaint cottage surrounded by gardens', 160, NULL, '321 Blossom Ln', 'Gardenville', 'Provinceville', 'Districtville', '55667', 'ggmap_link_9', 2, 5, 'OPEN', FALSE),
('acc10', 'user10', 'qr_code_10', 'Skyline Penthouse', FALSE, TRUE, TRUE, 8, 'J801', TRUE, TRUE, TRUE, TRUE, 'QUEEN', TRUE, 'A luxurious penthouse with skyline views', 300, NULL, '654 Skyline Blvd', 'Cityville', 'Provinceville', 'Districtville', '77889', 'ggmap_link_10', 5, 2, 'OPEN', FALSE);

INSERT INTO Feedback VALUES
('feedback1', 'user1', 'acc1', 'linkpicture1', '2023-03-15 09:45:00', 'Great experience!', 4.5),
('feedback2', 'user2', 'acc2', 'linkpicture2', '2023-03-18 14:20:00', 'Wonderful stay!', 5.0);

INSERT INTO Reserve VALUES
('reservation1', 'acc1', 'user1', 'payment1','2023-03-20 10:00:00', '2023-03-20 10:00:00', '2023-03-25 12:00:00', TRUE),
('reservation2', 'acc2', 'user2', 'payment2','2023-04-01 15:00:00', '2023-04-01 15:00:00', '2023-04-10 11:00:00', FALSE);

INSERT INTO Feedback VALUES
('feedback3', 'user3', 'acc3', 'linkpicture3', '2023-04-08 11:30:00', 'Beautiful cabin, loved the nature around!', 4.0),
('feedback4', 'user4', 'acc4', 'linkpicture4', '2023-04-12 14:15:00', 'The studio was well-designed and comfortable.', 4.5),
('feedback5', 'user5', 'acc5', 'linkpicture5', '2023-04-18 10:45:00', 'Breathtaking views from the villa!', 5.0),
('feedback6', 'user6', 'acc6', 'linkpicture6', '2023-04-22 12:30:00', 'Urban loft with a modern touch, loved it!', 4.5),
('feedback7', 'user7', 'acc7', 'linkpicture7', '2023-04-24 12:15:00','Peaceful retreat, great for relaxation.', 3),
('feedback8', 'user8', 'acc8', 'linkpicture8', '2023-04-25 14:30:00','Charming chalet with cozy vibes, loved the stay.', 2.5),
('feedback9', 'user9', 'acc9', 'linkpicture9', '2023-04-27 22:57:00','Quaint cottage surrounded by beautiful gardens.', 3.5),
('feedback10', 'user10', 'acc10', 'linkpicture10', '2023-04-28 10:03:00','The penthouse had stunning skyline views!', 4.5);

INSERT INTO Reserve VALUES
('reservation3', 'acc3', 'user3', 'payment3', '2023-04-15 12:00:00','2023-04-15 12:00:00', '2023-04-20 10:00:00', FALSE),
('reservation4', 'acc4', 'user4', 'payment4', '2023-04-22 15:30:00','2023-04-22 15:30:00', '2023-04-30 11:00:00', TRUE),
('reservation5', 'acc5', 'user5', 'payment5', '2023-05-05 09:45:00','2023-05-05 09:45:00', '2023-05-15 12:00:00', FALSE),
('reservation6', 'acc6', 'user6', 'payment6', '2023-05-10 12:30:00','2023-05-10 12:30:00', '2023-05-18 14:00:00', TRUE),
('reservation7', 'acc7', 'user7', 'payment7', '2023-05-20 09:00:00','2023-05-20 09:00:00', '2023-05-30 11:30:00', FALSE),
('reservation8', 'acc8', 'user8', 'payment8', '2023-06-01 14:45:00','2023-06-01 14:45:00', '2023-06-10 08:00:00', TRUE),
('reservation9', 'acc9', 'user9', 'payment9', '2023-06-15 10:30:00','2023-06-15 10:30:00', '2023-06-22 12:00:00', FALSE),
('reservation10', 'acc10', 'user10', 'payment10', '2023-06-20 11:00:00','2023-06-20 11:00:00', '2023-06-30 13:15:00', TRUE);
