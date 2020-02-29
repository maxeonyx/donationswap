
ALTER TABLE offers
ADD COLUMN max_num_swaps INT NOT NULL DEFAULT 2;

ALTER TABLE offers
ALTER COLUMN max_num_swaps DROP DEFAULT;

-- min_amount is not used anymore, but we will keep it around
-- while there are active offers that have one.
-- meanwhile, new offers created the default amount.
ALTER TABLE offers
ALTER COLUMN min_amount SET DEFAULT 0;
