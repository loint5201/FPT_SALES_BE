const express = require("express");
const router = express.Router();
const projectService = require("../services/project.service");

router.get("/", async (req, res) => {
  try {
    var response = await projectService.getAllProjects();
    res.status(response.status).json({
      response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ statusCode: 500, error: "Something went wrong" });
  }
});

// Lấy dự án theo projectId
router.get("/:projectId", async (req, res) => {
  try {
    var response = await projectService.getProjectById(req.params.projectId);
    res.status(response.status).json({
      response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ statusCode: 500, error: "Something went wrong" });
  }
});

module.exports = router;
