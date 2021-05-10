require 'sinatra'

  get '/' do
 
      @title = "Home" 
      erb :index
  end

  get '/about' do

       @title = "About Me" 
       erb :about
  end

  get '/home' do

       @title = "Home" 
       erb :home
  end

  get '/contact' do

       @title = "contact" 
       erb :contact
  end

  get '/github' do

       @title = "github" 
       erb :github
  end

    get '/projects' do

       @title = "Projects"            
       erb :projects

    end

    get '/myip' do

       @title = "MyIP" 
       erb :myip
    end

    get '/projects/euclid/:a/:b' do

       @title = "Euclid" 
       @a = params[:a].to_i
       @b = params[:b].to_i 
       def euclid(a,b)
           while b != 0               
               a, b = b, a % b               
           end
           a
       end 
       res = euclid(@a,@b)
       @c = res
       erb :euclid
    end    

    get '/projects/fibonacci/:n' do

       @title = "Euclid" 
       n = params[:n].to_i       
       def fib(n)
           a, b = 0, 1
           arr = Array.new
           arr.push(a)
           i = 1
           while i <= n
               arr.push(b)
               a, b = b, a + b
               i = i + 1
           end            
           arr
       end 
       res = fib(n)
       @c = res
       erb :fibonacci
    end    
