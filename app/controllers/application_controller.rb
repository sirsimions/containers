class ApplicationController < ActionController::API
    def issue_token(author)
      JWT.encode({ author_id: author.id }, 'your_secret_key', 'HS256')
    end
  
    def decoded_token
      if request.headers['Authorization']
        token = request.headers['Authorization'].split(' ')[1]
        begin
          JWT.decode(token, 'your_secret_key', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def logged_in?
      !!current_author
    end
  
    def current_author
      if decoded_token
        author_id = decoded_token[0]['author_id']
        @current_author ||= Author.find_by(id: author_id)
      end
    end
  end
  