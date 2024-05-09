"user"
--
"id" serial
"username" char(150)
"password" char(100)
"email" char(100)
"fill_nmae" char(100)
"date_join" DATE
"last_join" DATE
"first_login" DATE
"is_superuser" BOOLEAN
"is_staff" BOOLEAN
"phone" char(14)
"avatar" char(250)



"profile"
--
"bio" text()
"githud" char(250)
"sex" char(1)
"birthday" DATE
"first_name" char(100)
"last_name" char(100)
"middle_name" char(100)
"user" int FK - "user"."id"




"user_technology"
--
"id" serial
"user" FK >- "User"."id"
"technology" FK >- "technology"."id"




"technology"
--
"id" serial
"name" char(150)




"post"
--
"id" serial
"text" text()
"date" DATETIME
"pudlished" boolean
"moderation" boolean
"view_count" int
"user" int FK >- "user"."id"




"comment"
--
"id" serial
"text" int
"date" DATETIME
"self" int FK >- "comment"."id"
"user" int FK >- "user"."id"
"post" int FK >- "post"."id"




"follower"
--
"id" serial
"user" int FK >-< "user"."id"
"user_f" int FK >-< "user"."id"



"team"
--
"id" serial
"name" char
"taglain" char
"logo" char
"user" int FK >- "user"."id"



"team_member"
--
"id" serial
"user" int FK >-< "user"."id"
"team" int FK >-< "team"."id"




"team_post"
--
"id" serial
"text" text()
"date" DATETIME
"pudlished" boolean
"moderation" boolean
"view_count" int
"user" int FK >- "user"."id"
"team" int FK >- "team"."id"



"team_comment"
--
"id" serial
"text" int
"date" DATETIME
"self" int FK >- "team_comment"."id"
"user" int FK >- "user"."id"
"team_post" int FK >- "team_post"."id"