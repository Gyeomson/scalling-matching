# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: '첫 번째 게시글입니다.', content: '스케일링 실습 모집합니다1', writer: 'a@naver.com', region: '서구', school: '대전 과학기술대학교', total: '5', count: '0')
Comment.create(post_id: '1', mention: '첫번째 댓글입니다.')
Comment.create(post_id: '1', mention: '두번째 댓글입니다.')
Post.create(title: '두 번째 게시글입니다.', content: '스케일링 실습 모집합니다2', writer: 'a@naver.com', region: '서구', school: '건양대학교', total: '5', count: '0')
Comment.create(post_id: '2', mention: '세번째 댓글입니다.')
Comment.create(post_id: '2', mention: '네번째 댓글입니다.')
Post.create(title: '세 번째 게시글입니다.', content: '스케일링 실습 모집합니다3', writer: 'a@naver.com', region: '서구', school: '대전 보건대학교', total: '5', count: '0')
Comment.create(post_id: '3', mention: '다섯번째 댓글입니다.')
Comment.create(post_id: '3', mention: '여섯번째 댓글입니다.')
Comment.create(post_id: '3', mention: '일곱번째 댓글입니다.')