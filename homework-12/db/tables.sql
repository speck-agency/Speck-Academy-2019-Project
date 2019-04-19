CREATE TABLE users(
    user_uid         uuid NOT NULL PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    surname         VARCHAR(255) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    user_password   VARCHAR(255) NOT NULL,
    date_created    TIMESTAMPTZ DEFAULT NOW(),
    date_updated    TIMESTAMPTZ DEFAULT NOW(),
    is_admin        BOOLEAN NOT NULL DEFAULT false
);

CREATE TABLE halls(
    hall_uid        uuid NOT NULL PRIMARY KEY,
    hall_name       VARCHAR(255) NOT NULL,
    hall_capacity   INT NOT NULL,
    hall_adress     VARCHAR(255) NOT NULL,
    img             BYTEA,
    date_created    TIMESTAMPTZ DEFAULT NOW(),
    date_updated    TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE reservations(
    reservation_uid     uuid NOT NULL PRIMARY KEY,
    reservation_status  SMALLINT NOT NULL,
    reserved_from       TIMESTAMPTZ,
    reserved_until      TIMESTAMPTZ,
    date_created        TIMESTAMPTZ DEFAULT NOW(),
    date_updated        TIMESTAMPTZ DEFAULT NOW(),
    hall_uid            uuid REFERENCES halls(hall_uid),
    reserved_by         uuid REFERENCES users(user_uid)
);

CREATE TABLE login_session(
    login_session_uid   uuid NOT NULL PRIMARY KEY,
    session_id          VARCHAR(255),
    date_created        TIMESTAMPTZ DEFAULT NOW(),
    date_updated        TIMESTAMPTZ DEFAULT NOW(),
    user_uid            uuid REFERENCES users(user_uid)
);