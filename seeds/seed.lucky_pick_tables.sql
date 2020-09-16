BEGIN;

TRUNCATE
lucky_pick_users,
cash4life_numbers,
 megamillions_numbers,
 powerball_numbers,
 quickdraw_numbers,
pick6_numbers,
 jerseycash5_numbers,
 pick4_numbers,
 pick3_numbers

RESTART IDENTITY CASCADE;

INSERT INTO lucky_pick_users (user_name, email, password )
VALUES
('dunder', 'dunder@mifflin.com', '$2y$04$bme5r.P/TsLCUzU5dQSxYuxPK2FU06D8pZGIa.P6bIGeF1KgyJCNC',8,7,14,1),
('admin', 'admin@admin.admin', '$2y$12$MIVZHt0G9wkA4Rqf8NSFpuLtX/x.Xryn5qC.Ss5M2BlnpOa.2bo.O',4,2,5,10,7);

INSERT INTO cashforlife_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour, numberfive)
VALUES
(1,false, 18,8,7,14,21),
(1, true, 2,17,10,12,1),
(2,false, 14,7,21,3,4),
(2, true, 7,17,14,21,27);

INSERT INTO megamillions_numbers(user_id, numberone, numbertwo, numberthree, numberfour, numberfive, megaball)
VALUES
(1,false, 18,8,7,14,21,4),
(1, true, 2,17,10,12,1,4),
(2,false, 14,7,21,3,4,8),
(2, true, 7,17,14,21,27,8);

INSERT INTO powerball_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour, numberfive, powerball)
VALUES
(1,false, 18,8,7,14,21,4),
(1, true, 2,17,10,12,1,4),
(2,false, 14,7,21,3,4,8),
(2, true, 7,17,14,21,27,8);

INSERT INTO quickdraw_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour, numberfive, numbersix, numberseven, numbereight, numbernine, numberten)
VALUES
(1,false, 18,8,7,14,21,34,46,19,52,1),
(1, true, 2,17,10,12,1,22,24,32,34,33),
(2,false, 14,7,21,3,4,27,28,35,42,44),
(2, true, 7,17,14,21,27,28,34,30,8,10);

INSERT INTO picksix_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour, numberfive, numbersix)
VALUES
(1,false, 18,8,7,14,19,1),
(1, true, 2,17,10,12,1,24),
(2,false, 14,7,21,3,4,27),
(2, true, 7,17,14,21,8,10);


INSERT INTO jerseycashfive_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour, numberfive)
VALUES
(1,false, 18,8,7,14,1),
(1, true, 2,17,10,12,1),
(2,false, 14,7,21,3,4),
(2, true, 7,17,14,8,10);

INSERT INTO pickfour_numbers(user_id, played, numberone, numbertwo, numberthree, numberfour)
VALUES
(1,false, 8,7,14,1),
(1, true, 2,10,12,1),
(2,false, 14,7,3,4),
(2, true, 7,14,8,10);

INSERT INTO pickthree_numbers(user_id, played, numberone, numbertwo, numberthree)
VALUES
(1,false, 8,7,1),
(1, true, 2,10,1),
(2,false, 7,3,4),
(2, true, 7,8,10);

COMMIT;
