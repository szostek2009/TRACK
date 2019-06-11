const RATINGS = [
    {
        value: "0",
        human: "Limited experience or knowledge. May have some familiarity but no hands-on or professional experience."
    },
    {
        value: "1",
        human: "Has some experience or knowledge. Can perform with limited oversight and guidance."
    },
    {
        value: "2",
        human: "Has production-level experience and deep hands-on knowledge. Can effectively share knowledge and assist others."
    },
    {
        value: "3",
        human: "Expert-level. Fully autonomous and can deliver consistently with an exceptional degree of quality."
    },
];

const RATINGS5 = RATINGS.concat([
    {
        value: "4",
        human: "Expert-level and deep experience. Consistently raises the bar for the entire company."
    }
]);

const UNRATINGS = [
    {
        value: "IDK",
        human: "I don't know.",
        tip: "Peer reviews only!",
        extended: 'Does not have enough knowledge to judge or evaluate.',
        warning: true
    },
    {
        value: "N/A",
        human: "Not applicable.",
        tip: "Not applicable or relevant to person's role or team.",
        extended: "Not applicable or relevant to person's role or team."
    }
];

const ACCEPTABLE_SCORES = [
    "0",
    "1",
    "2",
    "3",
    "4"
];

export { RATINGS, UNRATINGS, RATINGS5, ACCEPTABLE_SCORES };
