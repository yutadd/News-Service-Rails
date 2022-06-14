class ConsController < ApplicationController
  def top
    render template:"top"
  end
  def live
   render template:"live"
  end
  def travel
   render template:"travel"
  end
  def otoi
   render template:"otoi"
  end
  def result_get
    render template:"result"
  end
  def result_post
  mysql=Mysql2::Client.new(host: 'localhost', username: 'mysql','password':'password', database: 'otoiawase', encoding: 'utf8')
    statement=mysql.prepare("insert into otoiawase.table(otoi,name,kaisya,phone,mail,ip) values(?,?,?,?,?,?)")
    statement.execute(params[:otoi],params[:name],params[:kaisya],params[:phone],params[:mail],request.remote_ip)
    redirect_to "/result"
  end
end
