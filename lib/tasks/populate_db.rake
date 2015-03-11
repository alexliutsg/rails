namespace :populate_db do
  desc 'Populate database'

  task reset: %w(db:drop db:create db:migrate populate_db:all)

  task all: %w(populate_db:populate_admins populate_db:populate_regions populate_db:populate_organizations populate_db:populate_admins populate_db:populate_program_cycles)

  task populate_admins: :environment do
    Admin.create!(email: 'alexis.lius@gmail.com',
                  first_name: 'Alex',
                  last_name: 'Liu',
                  password: 'admin123',
                  password_confirmation: 'admin123')

  end


  task populate_regions: :environment do
    Region.create!(name: '大埔區')
    Region.create!(name: '荃灣區')
    Region.create!(name: '葵青區')
    Region.create!(name: 'Kowloon City')
    Region.create!(name: 'Central and Western')
    Region.create!(name: 'Island East')
  end


  task populate_organizations: :environment do
    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '香港教師會李興貴中學',
                         alternative_names: "Hong Kong Teachers' Association Lee Heng Kwei Secondary School",
                         address: '',
                         contact_numbers: '26317556',
                         email: 'info@hktalhk.edu.hk',
                         fax_numbers: '',
                         website: '',
                         contact_persons: '何sir',
                         remarks: '會參加')

    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '迦密柏雨中學',
                         alternative_names: 'Carmel Pak U Secondary School',
                         address: '',
                         contact_numbers: '26650078',
                         email: 'cpu@cpu.edu.hk',
                         fax_numbers: '',
                         website: '',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '聖公會莫壽增會督中學',
                         alternative_names: 'SKH Bishop Mok Sau Tseng Secondary School',
                         address: '',
                         contact_numbers: '26567804',
                         email: 'info@mst.edu.hk',
                         fax_numbers: '26507265',
                         website: '',
                         contact_persons: '鄺sir',
                         remarks: '')

    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '恩主教書院',
                         alternative_names: 'Valtorta College',
                         address: '',
                         contact_numbers: '26560017',
                         email: 'valtorta@valtorta.edu.hk',
                         fax_numbers: '26546224',
                         website: '',
                         contact_persons: '黃sir',
                         remarks: '')

    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '救恩書院',
                         alternative_names: 'Kau Yan College',
                         address: '',
                         contact_numbers: '26608308',
                         email: 'kyc@school.hk',
                         fax_numbers: '26620377',
                         website: '',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 1,
                         organization_type: 'school',
                         primary_name: '南亞路德會沐恩中學',
                         alternative_names: 'Salem-Immanuel Lutheran College',
                         address: '',
                         contact_numbers: '26673129',
                         email: 'info',
                         fax_numbers: '26650600',
                         website: '',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'organization',
                         primary_name: '可風中學（嗇色園主辦）',
                         alternative_names: 'Ho Fung College (Sponsored by Sik Sik Yuen)',
                         address: '',
                         contact_numbers: '2425 3563',
                         email: 'info@hofung.edu.hk',
                         fax_numbers: '2425 9165',
                         website: 'http://www.hofung.edu.hk/index/customIndex.aspx?nnnid=1',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'organization',
                         primary_name: '廖寶珊紀念書院',
                         alternative_names: 'Liu Po Shan Memorial College',
                         address: '',
                         contact_numbers: '2499 6711',
                         email: 'info@lpsmc.edu.hk',
                         fax_numbers: '2490 9392',
                         website: 'http://www.lpsmc.edu.hk/',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'organization',
                         primary_name: '路德會呂明才中學',
                         alternative_names: 'Lui Ming Choi Lutheran College',
                         address: '',
                         contact_numbers: '2492 0195',
                         email: 'llc-mail@llc.edu.hk',
                         fax_numbers: '',
                         website: 'http://www.llc.edu.hk/',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'organization',
                         primary_name: '保良局姚連生中學',
                         alternative_names: 'Po Leung Kuk Yao Ling Sun College',
                         address: '',
                         contact_numbers: '2498 3331',
                         email: 'info@plkylsc.edu.hk',
                         fax_numbers: '2499 5136',
                         website: 'http://www.plkylsc.edu.hk/',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'organization',
                         primary_name: '聖公會李炳中學',
                         alternative_names: 'SKH Li Ping Secondary School',
                         address: '',
                         contact_numbers: '2423 8806',
                         email: 'info@liping.edu.hk',
                         fax_numbers: '2485 0734',
                         website: 'http://www.sfxs.edu.hk/~sfxsweb/b5/p/home.php',
                         contact_persons: '',
                         remarks: '')

    Organization.create!(region_id: 2,
                         organization_type: 'school',
                         primary_name: '荃灣聖芳濟中學',
                         alternative_names: "St. Francis Xavier's School, Tsuen Wan",
                         address: '',
                         contact_numbers: '24920226, 2492 0227, 24929092, 24908821',
                         email: 'sfs-principal@hkedcity.net (Principal)',
                         fax_numbers: '2614 6009',
                         website: 'http://www.sfxs.edu.hk/~sfxsweb/b5/p/home.php',
                         contact_persons: '',
                         remarks: '')

  end

  task populate_program_cycles: :environment do

    ProgramCycle.create!(name: '全城街马 ROC 2014 第一Program',
                         start_date: '2014-01-01',
                         end_date: '2014-06-01',
                         goal: 'We hope to target 400 schools, get 100 schools enrolled in HK and have 1500 students participating in this program cycle. We hope to target 400 schools, get 100 schools enrolled in HK and have 1500 students participating in this program cycle. We hope to target 400 schools, get 100 schools enrolled in HK and have 1500 students participating in this program cycle. We hope to target 400 schools, get 100 schools enrolled in HK and have 1500 students participating in this program cycle.',
                         description: 'In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD. In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD. In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD. In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD. In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD. In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD')

    ProgramCycle.create!(name: '全城街马 ROO 2014',
                         start_date: '2014-01-01',
                         end_date: '2014-06-01',
                         goal: 'We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle.We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle.We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle. We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle. We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle.',
                         description: 'In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD.')

    ProgramCycle.create!(name: '全城街马 ROC 2015',
                         start_date: '2015-01-01',
                         end_date: '2015-06-01',
                         goal: 'We hope to target 400 schools, get 100 schools enrolled in HK and have 1500 students participating in this program cycle.',
                         description: 'In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD.')

    ProgramCycle.create!(name: '全城街马 ROO 2015',
                         start_date: '2015-01-01',
                         end_date: '2015-06-01',
                         goal: 'We hope to target 400 organizations, get 100 organizations enrolled in HK and have 1500 people participating in this program cycle.',
                         description: 'In this program cycle, Amy, Bob, Clare and David will be the program leads. If you have any issue, please contact ABCD.')

    Progress.create!(program_cycle_id: 1,
                     organization_id: 1,
                     pitching_status: 'un-pitched',
                     pitching_remarks: '',
                     program_status: 'na'
    )

    Progress.create!(program_cycle_id: 1,
                     organization_id: 2,
                     pitching_status: 'rejected',
                     pitching_remarks: 'They are really bad people.',
                     program_status: 'na'
    )

    Progress.create!(program_cycle_id: 1,
                     organization_id: 3,
                     pitching_status: 'committed',
                     pitching_remarks: 'Easy to deal with.',
                     program_status: 'unscheduled',
                     program_remarks: 'Scheduling is difficult.')

    Progress.create!(program_cycle_id: 1,
                     organization_id: 4,
                     pitching_status: 'undecided',
                     pitching_remarks: 'Falls into the majority.',
                     program_status: 'na'
    )

    Progress.create!(program_cycle_id: 1,
                     organization_id: 5,
                     pitching_status: 'committed',
                     pitching_remarks: 'Easy to deal with.',
                     program_status: 'schedule-confirmed',
                     program_remarks: 'Scheduling is always difficult.')

    Progress.create!(program_cycle_id: 1,
                     organization_id: 6,
                     pitching_status: 'committed',
                     pitching_remarks: 'Easy to deal with.',
                     program_status: 'in-progress',
                     program_remarks: 'Scheduling is always difficult.')

    Progress.create!(program_cycle_id: 2,
                     organization_id: 7,
                     pitching_status: 'committed',
                     pitching_remarks: 'Easy to deal with.',
                     program_status: 'completed',
                     program_remarks: 'Scheduling is always difficult.')

    Progress.create!(program_cycle_id: 2,
                     organization_id: 8,
                     pitching_status: 'committed',
                     pitching_remarks: 'Scheduling is always difficult.',
                     program_status: 'na'
    )

    Progress.create!(program_cycle_id: 2,
                     organization_id: 9,
                     pitching_status: 'undecided',
                     pitching_remarks: 'Falls into the majority.',
                     program_status: 'na'
    )

  end

end