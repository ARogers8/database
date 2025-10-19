--Andrew Rogers & Mo Hicks

CREATE TABLE "Hotel" (
  "hotel_id" SERIAL,
  "name" VARCHAR(100),
  "address_line_1" VARCHAR(100),
  "address_line_2" VARCHAR(100),
  "city" VARCHAR(50),
  "state" VARCHAR(50),
  "country" VARCHAR(50)
);

CREATE TABLE "HotelPhone" (
  "hotel_phone_id" SERIAL,
  "hotel_id" INTEGER,
  "phone_number" VARCHAR(20)
);

CREATE TABLE "HotelFeature" (
  "hotel_feature_id" SERIAL,
  "hotel_id" INTEGER,
  "feature_name" VARCHAR(50)
);

CREATE TABLE "RoomType" (
  "room_type_id" SERIAL,
  "hotel_id" INTEGER,
  "type_name" VARCHAR(50),
  "size" INTEGER,
  "capacity" INTEGER
);

CREATE TABLE "RoomTypeFeature" (
  "room_type_feature_id" SERIAL,
  "room_type_id" INTEGER,
  "feature_name" VARCHAR(50)
);

CREATE TABLE "Room" (
  "room_id" SERIAL,
  "hotel_id" INTEGER,
  "room_type_id" INTEGER,
  "room_number" VARCHAR(20),
  "floor" INTEGER,
  "status" VARCHAR(20)
);

CREATE TABLE "Guest" (
  "guest_id" SERIAL,
  "name" VARCHAR(100),
  "address" TEXT,
  "home_phone" VARCHAR(20),
  "mobile_phone" VARCHAR(20),
  "category" VARCHAR(50),
  "id_type" VARCHAR(50),
  "id_number" VARCHAR(50)
);

CREATE TABLE "Reservation" (
  "reservation_id" SERIAL,
  "guest_id" INTEGER,
  "hotel_id" INTEGER,
  "room_type_id" INTEGER,
  "status" VARCHAR(20),
  "check_in_date" DATE,
  "check_out_date" DATE,
  "date_created" DATE
);

CREATE TABLE "ReservationOccupant" (
  "reservation_occupant_id" SERIAL,
  "reservation_id" INTEGER,
  "name" VARCHAR(100)
);

CREATE TABLE "Review" (
  "review_id" SERIAL,
  "guest_id" INTEGER,
  "hotel_id" INTEGER,
  "display_name" VARCHAR(50),
  "date" DATE,
  "text" TEXT,
  "score" INTEGER
);

CREATE TABLE "Season" (
  "season_id" SERIAL,
  "season_name" VARCHAR(50),
  "start_date" DATE,
  "end_date" DATE
);

CREATE TABLE "HotelSeason" (
  "hotel_season_id" SERIAL,
  "hotel_id" INTEGER,
  "season_id" INTEGER
);

CREATE TABLE "Service" (
  "service_id" SERIAL,
  "hotel_id" INTEGER,
  "service_name" VARCHAR(50),
  "service_cost" INTEGER
);

CREATE TABLE "Employee" (
  "employee_id" SERIAL,
  "hotel_id" INTEGER,
  "name" VARCHAR(100),
  "position" VARCHAR(50),
  "salary" INTEGER
);
