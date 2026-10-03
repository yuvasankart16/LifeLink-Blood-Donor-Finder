import mongoose from "mongoose";

const donorSchema = new mongoose.Schema({
  name: { type: String, required: true, trim: true },
  age: { type: Number, required: true, min: 18, max: 65 },
  bloodGroup: { type: String, required: true, enum: ["A+","A-","B+","B-","AB+","AB-","O+","O-"] },
  city: { type: String, required: true, trim: true },
  area: { type: String, trim: true, default: '' },
  pin: { type: String, trim: true, default: '' },
  phone: { type: String, required: true, trim: true },
  email: { type: String, trim: true, lowercase: true },
  lastDonation: { type: String, default: "" },
  available: { type: Boolean, default: true },
  verified: { type: Boolean, default: false },
  lat: { type: Number },
  lng: { type: Number },
  history: { type: [String], default: [] }
}, { timestamps: true });

export default mongoose.model("Donor", donorSchema);
