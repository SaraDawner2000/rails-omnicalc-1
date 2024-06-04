Rails.application.routes.draw do
 get('/', {controller:'omnicalc', action:'square'})
 get('/square/new', {controller:'omnicalc', action:'square'})
 get('/square_root/new', {controller:'omnicalc', action:'square_root'})
 get('/payment/new', {controller:'omnicalc', action:'payment'})
 get('/random/new', {controller:'omnicalc', action:'random'})
end
