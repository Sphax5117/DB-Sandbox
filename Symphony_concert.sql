SELECT event_name, person_id, count(person_id) from facebook_event_checkin
	WHERE event_name ="SQL Symphony Concert" 
	GROUP BY person_id HAVING count(person_id) = 3
	

