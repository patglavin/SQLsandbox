INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'cards', 'cards', 2, 'CREATE TABLE cards(
            card_id TEXT PRIMARY KEY,
            player_class TEXT,
            type TEXT,
            name TEXT,
            [set] TEXT,
            text TEXT,
            cost INTEGER,
            attack INTEGER,
            health INTEGER,
            rarity TEXT,
            collectible INTEGER,
            flavor TEXT,
            race TEXT,
            how_to_earn TEXT,
            how_to_earn_golden TEXT,
            targeting_arrow_text TEXT,
            faction TEXT,
            durability INTEGER
        )');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_cards_1', 'cards', 3, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'mechanics', 'mechanics', 4, 'CREATE TABLE mechanics(
            card_id TEXT,
            mechanic TEXT,
            FOREIGN KEY(card_id) REFERENCES cards(card_id)
        )');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'dust_costs', 'dust_costs', 5, 'CREATE TABLE dust_costs(
            card_id TEXT,
            action TEXT,
            cost INTEGER,
            FOREIGN KEY(card_id) REFERENCES cards(card_id)
        )');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'play_requirements', 'play_requirements', 7, 'CREATE TABLE play_requirements(
            card_id TEXT,
            play_requirement TEXT,
            value INTEGER,
            FOREIGN KEY(card_id) REFERENCES cards(card_id)
        )');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'entourages', 'entourages', 9, 'CREATE TABLE entourages(
            card_id TEXT,
            entourage_card_id TEXT,
            FOREIGN KEY(card_id) REFERENCES cards(card_id),
            FOREIGN KEY(entourage_card_id) REFERENCES cards(card_id)
        )');