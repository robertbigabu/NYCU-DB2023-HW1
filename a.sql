select	S.name, T.name
from sets S, themes T
where T.id=S.theme_id and S.year=2017