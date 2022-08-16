text = <<DOC
Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, odit. Sint perferendis quo facere molestiae, quia
sapiente cupiditate pariatur soluta ratione test@gmail.com fuga dolore obcaecati similique nisi quaerat assumenda culpa! Beatae dolorem
soluta, nesciunt dolore numquam recusandae maiores placeat praesentium consectetur.
DOC

email = text.match(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/)[0].to_s
email_fist_letter = email[0]

censored_text = text.gsub(email, email_fist_letter + ("*" * (email.length - 1)))

puts censored_text
