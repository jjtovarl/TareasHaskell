data BinTree = L | N BinTree BinTree deriving ShowmakeBinTree :: Integer -> BinTreemakeBinTree 0 = L
makeBinTree n = N (makeBinTree (n - 1)) (makeBinTree (n - 1))

count :: BinTree -> Integer
count L = 1
count (N t1 t2) = 1 + count t1 + count t2 


depth :: BinTree -> Integer
depth L = 0
depth (N t1 t2) = (max (depth t1) (depth t2)) + 1


balanced :: BinTree -> Bool
balanced L = True
balanced (N t1 t2) = (balanced t1)
  					&& (balanced t2)
					&& depth t1 == depth t2
