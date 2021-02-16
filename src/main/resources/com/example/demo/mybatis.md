동적 SQL을 처리하는 방법 OGNL 기반의 표현식 if choose (when, otherwise) trim (where, set) foreach

if SELECT * FROM BLOG WHERE state = ‘ACTIVE’ AND title like '%${name}%' AND author_name like #{member.name} SELECT * FROM BLOG WHERE state = ‘ACTIVE’ AND title like #{title} AND author_name like #{author.name} AND featured = 1

SELECT * FROM POST P WHERE ID in #{item}