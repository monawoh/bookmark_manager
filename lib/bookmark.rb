class Bookmark 
    def self.all
        [
            "https://makers.tech/",
            "https://github.com/makersacademy/skills-workshops/tree/main/object_oriented_programming/domain_model_diagramming",
            "https://github.com/makersacademy/course/blob/main/bookmark_manager/03_viewing_bookmarks.md"
        ]
    end

end

#!/usr/bin/env ruby

require 'pg'

# Output a table of current connections to the DB
conn = PG.connect( dbname: 'bookmark_manager' )


# conn.exec( "SELECT * FROM bookmarks" ) do |result|
#   puts "     PID | User             | Query"
#   result.each do |row|
#     puts " %7d | %-16s | %s " %
#       row.values_at('pid', 'usename', 'query')
#   end
# end