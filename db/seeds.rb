# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create([
                    { name: 'カワウソレストラン',
                      description: 'すみっこ可愛い',
                      price: '1000',
                      thumbnail_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.san-x.co.jp%2Fsumikko%2Fcampaign%2Fsumikko_camp%2F&psig=AOvVaw1sMoWviCni1FwBB7hc2Oye&ust=1671169690130000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNDLoq_2-vsCFQAAAAAdAAAAABAE' },
                    { name: 'ウオツネ',
                      description: '中目黒にある魚が美味しい、昼は定食屋、夜は居酒屋。',
                      price: '1200',
                      thumbnail_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.san-x.co.jp%2Fsumikko%2Fcampaign%2Fsumikko_camp%2F&psig=AOvVaw1sMoWviCni1FwBB7hc2Oye&ust=1671169690130000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNDLoq_2-vsCFQAAAAAdAAAAABAE' }
                  ])

Holiday.create([
                 { label: '月曜日', value: 'monday' },
                 { label: '火曜日', value: 'tuesday' },
                 { label: '水曜日', value: 'wednesday' },
                 { label: '木曜日', value: 'thursday' },
                 { label: '金曜日', value: 'friday' },
                 { label: '土曜日', value: 'saturday' },
                 { label: '日曜日', value: 'sunday' },
                 { label: '祝日', value: 'holiday' }
               ])
