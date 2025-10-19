--Andrew Rogers & Mo Hicks

--Primary Keys
ALTER TABLE "Hotel" ADD PRIMARY KEY ("hotel_id");
ALTER TABLE "HotelPhone" ADD PRIMARY KEY ("hotel_phone_id");
ALTER TABLE "HotelFeature" ADD PRIMARY KEY ("hotel_feature_id");
ALTER TABLE "RoomType" ADD PRIMARY KEY ("room_type_id");
ALTER TABLE "RoomTypeFeature" ADD PRIMARY KEY ("room_type_feature_id");
ALTER TABLE "Room" ADD PRIMARY KEY ("room_id");
ALTER TABLE "Guest" ADD PRIMARY KEY ("guest_id");
ALTER TABLE "Reservation" ADD PRIMARY KEY ("reservation_id");
ALTER TABLE "ReservationOccupant" ADD PRIMARY KEY ("reservation_occupant_id");
ALTER TABLE "Review" ADD PRIMARY KEY ("review_id");
ALTER TABLE "Season" ADD PRIMARY KEY ("season_id");
ALTER TABLE "HotelSeason" ADD PRIMARY KEY ("hotel_season_id");
ALTER TABLE "Service" ADD PRIMARY KEY ("service_id");
ALTER TABLE "Employee" ADD PRIMARY KEY ("employee_id");

--Foreign Keys
ALTER TABLE "HotelPhone" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "HotelFeature" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "RoomType" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "RoomTypeFeature" ADD FOREIGN KEY ("room_type_id") REFERENCES "RoomType" ("room_type_id");
ALTER TABLE "Room" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "Room" ADD FOREIGN KEY ("room_type_id") REFERENCES "RoomType" ("room_type_id");
ALTER TABLE "Reservation" ADD FOREIGN KEY ("guest_id") REFERENCES "Guest" ("guest_id");
ALTER TABLE "Reservation" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "Reservation" ADD FOREIGN KEY ("room_type_id") REFERENCES "RoomType" ("room_type_id");
ALTER TABLE "ReservationOccupant" ADD FOREIGN KEY ("reservation_id") REFERENCES "Reservation" ("reservation_id");
ALTER TABLE "Review" ADD FOREIGN KEY ("guest_id") REFERENCES "Guest" ("guest_id");
ALTER TABLE "Review" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "HotelSeason" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "HotelSeason" ADD FOREIGN KEY ("season_id") REFERENCES "Season" ("season_id");
ALTER TABLE "Service" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
ALTER TABLE "Employee" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
