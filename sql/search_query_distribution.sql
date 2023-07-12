SELECT search_query, account, COUNT(search_query) AS queer_count
				FROM twitter_stats t
				JOIN user_followers u
				ON t.user_id = u.user_id 
				GROUP BY search_query
				ORDER BY queer_count DESC;