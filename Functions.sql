-- Function to calculate daily work hours
CREATE OR REPLACE FUNCTION calculate_hours(in_time TIME, out_time TIME)
RETURNS INTERVAL AS $$
BEGIN
    RETURN out_time - in_time;
END;
$$ LANGUAGE plpgsql;