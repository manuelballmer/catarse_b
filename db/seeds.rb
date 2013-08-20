# coding: utf-8

[
  { pt: 'Arte', en: 'Art' },
  { pt: 'Artes plásticas', en: 'Visual Arts' },
  { pt: 'Circo', en: 'Circus' },
  { pt: 'Comunidade', en: 'Community' },
  { pt: 'Humor', en: 'Humor' },
  { pt: 'Quadrinhos', en: 'Comicbooks' },
  { pt: 'Dança', en: 'Dance' },
  { pt: 'Design', en: 'Design' },
  { pt: 'Eventos', en: 'Events' },
  { pt: 'Moda', en: 'Fashion' },
  { pt: 'Gastronomia', en: 'Gastronomy' },
  { pt: 'Cinema & Vídeo', en: 'Film & Video' },
  { pt: 'Jogos', en: 'Games' },
  { pt: 'Jornalismo', en: 'Journalism' },
  { pt: 'Música', en: 'Music' },
  { pt: 'Fotografia', en: 'Photography' },
  { pt: 'Ciência e Tecnologia', en: 'Science & Technology' },
  { pt: 'Teatro', en: 'Theatre' },
  { pt: 'Esporte', en: 'Sport' },
  { pt: 'Web', en: 'Web' },
  { pt: 'Carnaval', en: 'Carnival' },
  { pt: 'Arquitetura & Urbanismo', en: 'Architecture & Urbanism' },
  { pt: 'Literatura', en: 'Literature' },
  { pt: 'Mobilidade e Transporte', en: 'Mobility & Transportation' },
  { pt: 'Meio Ambiente', en: 'Environment' },
  { pt: 'Negócios Sociais', en: 'Social Business' },
  { pt: 'Educação', en: 'Education' },
  { pt: 'Filmes de Ficção', en: 'Fiction Films' },
  { pt: 'Filmes Documentários', en: 'Documentary Films' },
  { pt: 'Filmes Universitários', en: 'Experimental Films' }
].each do |name|
   category = Category.find_or_initialize_by_name_pt name[:pt]
   category.update_attributes({
     name_en: name[:en]
   })
 end

[
  'confirm_backer','payment_slip','project_success','backer_project_successful',
  'backer_project_unsuccessful','project_received', 'project_received_channel', 'updates','project_unsuccessful',
  'project_visible','processing_payment','new_draft_project', 'new_draft_channel', 'project_rejected',
  'pending_backer_project_unsuccessful', 'project_owner_backer_confirmed', 'adm_project_deadline',
  'project_in_wainting_funds', 'credits_warning', 'backer_confirmed_after_project_was_closed',
  'backer_canceled_after_confirmed', 'temporary_password'
].each do |name|
  NotificationType.find_or_create_by_name name
end

{
  company_name: 'Prototyp BLKB Crowdfunding',
  host: '141.101.32.173:3000',
  base_url: "http://141.101.32.173:3000/",
  blog_url: "http://blog.blkb.ch",
  email_contact: 'manuel.ballmer@blkb.ch',
  email_payments: 'manuel.ballmer@blkb.ch',
  email_projects: 'manuel.ballmer@blkb.ch',
  email_system: 'manuel.ballmer@blkb.ch',
  email_no_reply: 'manuel.ballmer@blkb.ch',
  facebook_url: "http://facebook.com/ManuelBallmer",
  facebook_app_id: '486521634775707',
  twitter_username: "ManuelBallmer",
  mailchimp_url: "http://catarse.us5.list-manage.com/subscribe/post?u=ebfcd0d16dbb0001a0bea3639&amp;id=149c39709e",
  catarse_fee: '0.03',
  support_forum: 'http://www.blkb.ch/index/ueber-uns/uu-kontakt.htm',
  base_domain: 'localhost',
  uservoice_secret_gadget: 'change_this',
  uservoice_key: 'uservoice_key',
  project_finish_time: '00:01:59'
}.each do |name, value|
   conf = Configuration.find_or_initialize_by_name name
   conf.update_attributes({
     value: value
   })
end


Channel.find_or_create_by_name!(
  name: "www.blkb.ch",
  permalink: "http://141.101.32.173:3000/blkb",
  description: "Die BLKB Website..."
)


OauthProvider.find_or_create_by_name!(
  name: 'facebook',
  key: '486521634775707',
  secret: 'e94e0b494e33baf0f763af0cc4571157',
  path: 'test_catarse'
)