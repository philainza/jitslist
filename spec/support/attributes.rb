def open_mat_attributes(overrides = {})
  {
    location: "Pacific Beach",
    host: "Jimmy Newtron",
    number_people_attending: 5,
    starts_at: 1.day.from_now
  }.merge(overrides)
end