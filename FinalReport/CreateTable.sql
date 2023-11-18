CREATE TYPE genders AS ENUM('M','F');
CREATE TABLE Users(
     user_id VARCHAR(36) NOT NULL UNIQUE PRIMARY KEY,
     citizen_id CHAR(13) UNIQUE,
     first_name VARCHAR(64) NOT NULL,
     last_name VARCHAR(64) NOT NULL,
     email TEXT NOT NULL UNIQUE,
     password_hash VARCHAR(255) NOT NULL,
     salt CHAR(32) NOT NULL UNIQUE,
     birth_date DATE NOT NULL,
     age INT NOT NULL,
     phone_no CHAR(10) NOT NULL,
     gender genders NOT NULL,
     banner TEXT
);

CREATE TYPE problemStatus AS ENUM('Pending', 'Solved');
CREATE TABLE Problem (
     problem_id VARCHAR(36) NOT NULL UNIQUE PRIMARY KEY,
     user_id VARCHAR(36) NOT NULL,
     text TEXT NOT NULL,
     topic TEXT NOT NULL,
     timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
     problem_status problemStatus NOT NULL,
     FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TYPE adminTypes AS ENUM('Verified Admin', 'Support Admin');
CREATE TABLE Admin (
     admin_id VARCHAR(36) NOT NULL UNIQUE PRIMARY KEY,
     admin_type adminTypes NOT NULL
);

CREATE TABLE Host (
    user_id VARCHAR(36) PRIMARY KEY,
    admin_id VARCHAR(36) NOT NULL,
    bank_account CHAR(10) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Traveler (
    user_id VARCHAR(36) PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TYPE pm_status AS ENUM('Waiting','Ongoing','Success','Fail');
CREATE TABLE PAYMENT (
    payment_id VARCHAR(36) PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    amount DOUBLE PRECISION CHECK (amount >= 0),
    host_bank_account VARCHAR(36) NOT NULL,
    traveler_bank_account VARCHAR(36) NOT NULL,
    payment_status pm_status NOT NULL,
    qrcode_payment TEXT NOT NULL
);

CREATE TYPE b_type AS ENUM('KING','QUEEN');
CREATE TYPE a_status AS ENUM('OPEN','CLOSE');
CREATE TABLE Accommodation (
    accommodation_id VARCHAR(10) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    qr_code TEXT NOT NULL,
    name_a VARCHAR(64) NOT NULL,
    pet BOOLEAN NOT NULL,
    noise BOOLEAN NOT NULL,
    smoking BOOLEAN NOT NULL,
    floor INT NOT NULL CHECK(floor >= 1),
    room_no TEXT NOT NULL,
    wifi_available BOOLEAN NOT NULL,
    toiletries BOOLEAN NOT NULL,
    pajamas BOOLEAN NOT NULL,
    towels BOOLEAN NOT NULL,
    bed_type b_type NOT NULL,
    washing_machine BOOLEAN NOT NULL,
    description_a TEXT NOT NULL,
    price INT NOT NULL,
    banner TEXT,
    address_a TEXT NOT NULL,
    city VARCHAR(64) NOT NULL,
    province VARCHAR(64) NOT NULL,
    distinct_a VARCHAR(64) NOT NULL,
    postal_code CHAR(5) NOT NULL,
    ggmap_link TEXT NOT NULL,
    max_resident_no INT NOT NULL CHECK(max_resident_no >= 1),
    rating DOUBLE PRECISION NOT NULL CHECK (rating IN (0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)),
    accommodation_status a_status NOT NULL,
    is_reserved BOOLEAN NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Feedback (
    feedback_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    accommodation_id VARCHAR(10) NOT NULL,
    picture TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    text TEXT NOT NULL,
    score DOUBLE PRECISION NOT NULL CHECK (score IN (0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (accommodation_id) REFERENCES Accommodation(accommodation_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Reserve (
    reservation_id VARCHAR(36),
    accommodation_id VARCHAR(10),
    user_id VARCHAR(36),
    PRIMARY KEY (reservation_id, accommodation_id,user_id),
    payment_id VARCHAR(36) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    check_in_status BOOLEAN NOT NULL,
    FOREIGN KEY (accommodation_id) REFERENCES Accommodation(accommodation_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Chat (
     host_id VARCHAR(36) NOT NULL,
     traveler_id VARCHAR(36) NOT NULL,
     chatroom_id VARCHAR(36) NOT NULL,
     PRIMARY KEY (host_id, traveler_id, chatroom_id),
     FOREIGN KEY (host_id) REFERENCES Host(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
     FOREIGN KEY (traveler_id) REFERENCES Traveler(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
     FOREIGN KEY (chatroom_id) REFERENCES Chatroom(chatroom_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Chatroom (
     chatroom_id VARCHAR(36) NOT NULL UNIQUE PRIMARY KEY
);

CREATE TABLE Message (
     message_id VARCHAR(36) NOT NULL UNIQUE,
     chatroom_id VARCHAR(36) NOT NULL,
     sender_id VARCHAR(36) NOT NULL,
     timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
     PRIMARY KEY (message_id, chatroom_id),
     FOREIGN KEY (chatroom_id) REFERENCES Chatroom(chatroom_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Text (
     message_id VARCHAR(36) NOT NULL,
     chatroom_id VARCHAR(36) NOT NULL,
     text TEXT NOT NULL,
     PRIMARY KEY (message_id, chatroom_id),
     FOREIGN KEY (message_id, chatroom_id) 
		REFERENCES Message(message_id, chatroom_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Attachment (
     message_id VARCHAR(36) NOT NULL,
     chatroom_id VARCHAR(36) NOT NULL,
     PRIMARY KEY (message_id, chatroom_id),
     FOREIGN KEY (message_id, chatroom_id) 
		REFERENCES Message(message_id, chatroom_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Picture (
     message_id VARCHAR(36) NOT NULL,
     chatroom_id VARCHAR(36) NOT NULL,
     picture TEXT NOT NULL,
     PRIMARY KEY (message_id, chatroom_id, picture),
     FOREIGN KEY (message_id, chatroom_id) 
		REFERENCES Attachment(message_id, chatroom_id) ON UPDATE CASCADE ON DELETE CASCADE
);
