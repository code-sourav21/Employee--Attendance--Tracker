-- Trigger to mark 'Late' if InTime > 10:00 AM
CREATE OR REPLACE FUNCTION set_status()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.InTime > '10:00:00' THEN
        NEW.Status := 'Late';
    ELSE
        NEW.Status := 'Present';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER attendance_trigger
BEFORE INSERT ON Attendance
FOR EACH ROW EXECUTE FUNCTION set_status();