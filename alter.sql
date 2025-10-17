ALTER TABLE "RoomType" ADD FOREIGN KEY ("type_name") REFERENCES "Reservation" ("reservation_id");

ALTER TABLE "Room" ADD FOREIGN KEY ("room_number") REFERENCES "Reservation" ("reservation_id");

ALTER TABLE "Review" ADD FOREIGN KEY ("guest_id") REFERENCES "Guest" ("guest_id");

ALTER TABLE "Review" ADD FOREIGN KEY ("hotel_id") REFERENCES "Hotel" ("hotel_id");
