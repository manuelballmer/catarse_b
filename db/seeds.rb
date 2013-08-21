# coding: utf-8

[
  { pt: 'Arte', en: 'Art', de: 'Kunst' },
  { pt: 'Artes plásticas', en: 'Visual Arts', de: 'Visuelle Kunst' },
  { pt: 'Circo', en: 'Circus', de: 'Zirkus' },
  { pt: 'Comunidade', en: 'Community', de: 'Komunal / Gemeinde' },
  { pt: 'Humor', en: 'Humor', de: 'Humor' },
  { pt: 'Quadrinhos', en: 'Comicbooks', de: 'Comicbücher' },
  { pt: 'Dança', en: 'Dance', de: 'Tanz' },
  { pt: 'Design', en: 'Design', de: 'Design' },
  { pt: 'Eventos', en: 'Events', de: 'Events' },
  { pt: 'Moda', en: 'Fashion', de: 'Mode' },
  { pt: 'Gastronomia', en: 'Gastronomy', de: 'Gastronomie' },
  { pt: 'Cinema & Vídeo', en: 'Film & Video', de: 'Film & Video' },
  { pt: 'Jogos', en: 'Games', de: 'Spiele' },
  { pt: 'Jornalismo', en: 'Journalism', de: 'Journalismus' },
  { pt: 'Música', en: 'Music', de: 'Musik' },
  { pt: 'Fotografia', en: 'Photography', de: 'Fotografie' },
  { pt: 'Ciência e Tecnologia', en: 'Science & Technology', de: 'Wissenschaft & Technologie' },
  { pt: 'Teatro', en: 'Theatre', de: 'Theater' },
  { pt: 'Esporte', en: 'Sport', de: 'Sport' },
  { pt: 'Web', en: 'Web', de: 'Web' },
  { pt: 'Carnaval', en: 'Carnival', de: 'Fasnacht' },
  { pt: 'Arquitetura & Urbanismo', en: 'Architecture & Urbanism', de: 'Architektur & Raumplanung' },
  { pt: 'Literatura', en: 'Literature', de: 'Literatur' },
  { pt: 'Mobilidade e Transporte', en: 'Mobility & Transportation', de: 'Mobilität & Transport' },
  { pt: 'Meio Ambiente', en: 'Environment', de: 'Umwelt & Natur' },
  { pt: 'Negócios Sociais', en: 'Social Business', de: 'Sozialwesen' },
  { pt: 'Educação', en: 'Education', de: 'Ausbildung' },
  { pt: 'Filmes de Ficção', en: 'Fiction Films', de: 'Filme (Fiktion)' },
  { pt: 'Filmes Documentários', en: 'Documentary Films', de: 'Dokumentarfilme' },
  { pt: 'Filmes Universitários', en: 'Experimental Films', de: 'Experimental-Filme' }
].each do |name|
   category = Category.find_or_initialize_by_name_pt name[:pt]
   category.update_attributes({
     name_en: name[:en], name_de: name[:de]
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