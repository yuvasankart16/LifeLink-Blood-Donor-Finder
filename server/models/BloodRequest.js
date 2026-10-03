import mongoose from "mongoose";

const bloodRequestSchema = new mongoose.Schema({
  patientName: { type: String, required: true, trim: true },
  bloodGroup: { type: String, required: true },
  hospital: { type: String, required: true, trim: true },
  city: { type: String, required: true, trim: true },
  units: { type: Number, required: true, min: 1, max: 20 },
  contact: { type: String, required: true, trim: true },
  urgency: { type: String, enum: ["Normal", "Urgent", "Critical"], default: "Normal" },
  status: { type: String, enum: ["Open", "Fulfilled"], default: "Open" }
}, { timestamps: true });

export default mongoose.model("BloodRequest", bloodRequestSchema);
