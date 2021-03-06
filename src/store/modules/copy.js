import { CATEGORIES } from '../../types/categories';
import { RATINGS, UNRATINGS, RATINGS5 } from '../../types/ratings';
import { GETTERS } from '../getters';

// initial state
const state = {
    categories: CATEGORIES,
    ratings: RATINGS,
    ratings5: RATINGS5,
    unratings: UNRATINGS
}

// getters
const getters = {
    [GETTERS.COPY.CATEGORIES] (state) {
        return state.categories;
    },
    [GETTERS.COPY.RATINGS] (state) {
        return state.ratings;
    },
    [GETTERS.COPY.UNRATINGS] (state) {
        return state.unratings;
    },

    [GETTERS.COPY.RATING_VALUES] (state) {
        return state.ratings.map((v) => v.value);
    },

    [GETTERS.COPY.UNRATING_VALUES] (state) {
        return state.unratings.map((v) => v.value);
    },

    [GETTERS.COPY.UNRATING_DESCRIPTION] (state) {
        return (value) => {
            var match = undefined;

            UNRATINGS.forEach((unrating) => {
                if (value === unrating.value) {
                    match = unrating;
                }
            });

            if (match === undefined) {
                match = 'Unknown';
            } else {
                match = match.human;
            }

            return match;
        };
    },

    // To support 0-4 ratings (5 pt scale)
    [GETTERS.COPY.RATINGS5] (state) {
        return state.ratings5;
    },
};

// actions
const actions = {};

// mutations
const mutations = {};

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations
};
