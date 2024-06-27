const mongoose = require("mongoose");

const ratingSchema = mongoose.Schema({
  userId: {
    type: String,
    required: true,
  },
  rating: {
    type: Number,
    rqeuired: true,
  },
});

module.exports = ratingSchema;
