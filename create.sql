CREATE TABLE "Season" (
  "season_id" integer PRIMARY KEY,
  "start_date" date,
  "end_date" date,
  "season_name" string
);

CREATE TABLE "Employee" (
  "employee_id" integer PRIMARY KEY,
  "position" string,
  "name" string,
  "salary" integer
);

CREATE TABLE "Services" (
  "service_id" integer PRIMARY KEY,
  "service_name" string,
  "service_cost" integer,
  "phone_number" integer
);

CREATE TABLE "Guest" (
  "guest_id" integer PRIMARY KEY,
  "address" stirng,
  "name" string,
  "mobile_phone" integer,
  "home_phone" integer,
  "category" string,
  "id_number" integer,
  "id_type" string
);

CREATE TABLE "Hotel" (
  "hotel_id" integer PRIMARY KEY,
  "feature" multivalue_string,
  "phone_numnber" multivalue_integer,
  "name" string,
  "address" composite_string,
  "address_line_1" string,
  "address_line_2" string
);

CREATE TABLE "Reservation" (
  "reservation_id" integer PRIMARY KEY,
  "status" string,
  "check_in_date" date,
  "check_out_date" date,
  "date_created" date,
  "occupants" integer
);

CREATE TABLE "RoomType" (
  "type_name" string,
  "size" string,
  "capacity" integer,
  "feature" multivalue_string
);

CREATE TABLE "Room" (
  "room_number" integer,
  "status" string,
  "floor" integer
);

CREATE TABLE "Review" (
  "guest_id" integer,
  "hotel_id" integer,
  "display_name" string,
  "date" date,
  "text" string,
  "score" integer
);
