const express = require("express");
const router = express.Router();
const propertyService = require("../services/property.service");

router.get("/", async (req, res) => {
  try {
    var properties = await propertyService.getAll();
    res.status(200).json({
      status: 200,
      message: "Properties founded successfully",
      data: properties,
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ statusCode: 500, error: "Something went wrong" });
  }
});

router.get("/:id", async (req, res) => {
  try {
    var property = await propertyService.findPropertyById(req.params.id);
    if (!property) {
      return res
        .status(404)
        .json({ statusCode: 404, error: "Property Does not exist" });
    }
    return res.status(200).json({
      status: 200,
      message: "Property founded successfully",
      data: property,
    });
  } catch (error) {
    return res
      .statusCode(500)
      .json({ statusCode: 500, error: "Something went wrong" });
  }
});

// Func API đặt cọc dự án
router.post("/booking", async (req, res) => {
  try {
    const { property_id, username, email, message } = req.body;
    const booking = await propertyService.bookingProperty(
      property_id,
      username,
      email,
      message
    );
    return res.status(200).json({
      status: 200,
      message: "Booking successfully",
      data: booking,
    });
  } catch (error) {
    console.log(error);
    return res
      .status(500)
      .json({ statusCode: 500, error: "Something went wrong" });
  }
});

module.exports = router;
