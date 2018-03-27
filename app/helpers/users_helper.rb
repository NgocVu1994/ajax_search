module UsersHelper
  def users_by_city
    bar_chart @users.group(:city).count, height: '500px', library: {
      title: {text: 'Users by city', x: -20},
      yAxis: {
         allowDecimals: false,
         title: {
             text: 'Cities count'
         }
      },
      xAxis: {
         title: {
             text: 'City'
         }
      }
    }
  end
end
