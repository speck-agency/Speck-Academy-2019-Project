INSERT INTO users (user_uid, name, surname, email, user_password, date_created, date_updated, is_admin)
	VALUES
		('9f0d528e-3403-43dd-ad2c-3b00ae3c7f6b', 'Ivan', 'Horvat', 'ihorvat@gmail.com','password1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, TRUE),
		('23ee3f24-c409-4b59-a173-c210c04ac4b9', 'Josipa', 'Kovačević', 'jkovacevic@gmail.com', 'password2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, FALSE),
		('cb78ad6b-e788-4a3c-aede-8474ef29dd41', 'Mario', 'Babić', 'mbabic@gmail.com', 'password3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, FALSE),
		('ee9fceda-e297-401d-902d-7f6b857cf6d0', 'Ana', 'Marić', 'amaric@gmail.com', 'password4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, FALSE),
		('ada85813-644c-4e9c-b833-9a2757bb6d4a', 'Petra', 'Jurić', 'pjuric@gmail.com', 'password5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, FALSE),
		('0d3d1da2-22b4-4c18-833f-142ac6aada06', 'Petar', 'Novak', 'pnovak@gmail.com', 'password6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, FALSE);


INSERT INTO halls (hall_uid, hall_name, hall_capacity, hall_adress, img, date_created, date_updated)
	VALUES
		('a01552ea-3847-44d6-a6bd-b47e319381c6', 'Velika sportska dvorana', 500, 'Ulica, kbr', bytea('https://images.unsplash.com/photo-1542764140-f38e04d3e0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),CURRENT_DATE, CURRENT_DATE),
		('a45b1b9f-9629-407f-a8fc-61bf255aa2b4', 'Dvorana Hrvatskog doma', 450, 'Ulica, kbr', bytea('https://images.unsplash.com/photo-1542764140-f38e04d3e0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),CURRENT_DATE, CURRENT_DATE),
		('2c1226ee-91c8-40ac-84ac-ed1ec94673e3', 'Dvorana Gradske knjižnice', 300, 'Ulica, kbr', bytea('https://images.unsplash.com/photo-1542764140-f38e04d3e0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),CURRENT_DATE, CURRENT_DATE),
		('d0d55b8b-2bb6-4bc9-ae28-7b091c82709b', 'Dvorana TIC (Turistički dom)', 220, 'Ulica, kbr', bytea('https://images.unsplash.com/photo-1542764140-f38e04d3e0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),CURRENT_DATE, CURRENT_DATE),
		('2c0a2451-197d-48f4-ada4-9ba52ce82464', 'Konferencijske dvorane RCTP', 170, 'Ulica, kbr', bytea('https://images.unsplash.com/photo-1542764140-f38e04d3e0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),CURRENT_DATE, CURRENT_DATE);


INSERT INTO reservations (reservation_uid, reservation_status, reserved_from, reserved_until, date_created, date_updated, hall_uid, reserved_by)
	VALUES
		('0614cfb8-e590-488a-a0fe-e4c63c2f0c59', 1, '2019/04/20', '2019/04/21', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'a01552ea-3847-44d6-a6bd-b47e319381c6', '9f0d528e-3403-43dd-ad2c-3b00ae3c7f6b'),
		('af9d192e-b9f8-4556-b598-525f73b94117', 0, NULL, NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'a45b1b9f-9629-407f-a8fc-61bf255aa2b4', NULL),
		('ca30c6f5-cc7e-48b2-bafc-ec42d6e02e6e', 0, NULL, NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2c1226ee-91c8-40ac-84ac-ed1ec94673e3', NULL);



INSERT INTO login_session (login_session_uid, session_id, date_created, date_updated, user_uid)
	VALUES
		('f9d3ae7b-5d3d-46fb-9649-c91162b05b57', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '9f0d528e-3403-43dd-ad2c-3b00ae3c7f6b')