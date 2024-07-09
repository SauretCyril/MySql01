begin;

INSERT INTO
    `students` (
        `student_id`,
        `crew_id`,
        `last_name`,
        `first_name`,
        `birth_date`,
        `email`,
        `pitch`
    )
VALUES (
        NULL,
        '4532',
        'cryo__Lora',
        'CLE',
        '121324',
        'LoraCLE@gmail.com',
        'prédit l\'avenir'
    );

rollback;

INSERT INTO
    `students` (
        `student_id`,
        `crew_id`,
        `last_name`,
        `first_name`,
        `birth_date`,
        `email`,
        `pitch`
    )
VALUES (
        NULL,
        '5452',
        'cryo_Anne',
        'Oracle',
        '121324',
        'AnneOracle@gmail.com',
        'Proteger du froid'
    );

commit;