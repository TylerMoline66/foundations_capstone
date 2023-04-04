import bcrypt


def hash_pass(password):
      new_password = password.encode('utf-8')
      
      salt = bcrypt.gensalt()
      hashed = bcrypt.hashpw(new_password, salt)

      return hashed