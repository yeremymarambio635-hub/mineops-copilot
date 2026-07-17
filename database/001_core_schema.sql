-- ==========================================
-- MINEOPS DATABASE SCHEMA V1
-- ==========================================

CREATE TABLE users (
    id UUID PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    role VARCHAR(50),
    department VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE equipment (
    id UUID PRIMARY KEY,
    code VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(150) NOT NULL,
    type VARCHAR(100),
    area VARCHAR(100),
    brand VARCHAR(100),
    model VARCHAR(100),
    status VARCHAR(50),
    criticality VARCHAR(30),
    operating_hours NUMERIC,
    last_maintenance DATE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE maintenance_orders (
    id UUID PRIMARY KEY,
    equipment_id UUID REFERENCES equipment(id),
    order_number VARCHAR(50),
    maintenance_type VARCHAR(50),
    status VARCHAR(50),
    priority VARCHAR(30),
    assigned_to VARCHAR(100),
    scheduled_date DATE,
    completed_date DATE,
    observations TEXT
);

CREATE TABLE downtimes (
    id UUID PRIMARY KEY,
    equipment_id UUID REFERENCES equipment(id),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    duration_hours NUMERIC,
    cause TEXT,
    responsible VARCHAR(100),
    status VARCHAR(30)
);

CREATE TABLE shift_handovers (
    id UUID PRIMARY KEY,
    code VARCHAR(50),
    shift_out VARCHAR(30),
    shift_in VARCHAR(30),
    supervisor_out VARCHAR(100),
    supervisor_in VARCHAR(100),
    summary TEXT,
    safety_notes TEXT,
    production_notes TEXT,
    maintenance_notes TEXT,
    pending_actions TEXT,
    operational_risks TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE production (
    id UUID PRIMARY KEY,
    production_date DATE,
    shift VARCHAR(30),
    area VARCHAR(100),
    tons NUMERIC,
    target NUMERIC,
    comments TEXT
);

CREATE TABLE alerts (
    id UUID PRIMARY KEY,
    title VARCHAR(200),
    description TEXT,
    severity VARCHAR(20),
    status VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE audit_log (
    id UUID PRIMARY KEY,
    user_name VARCHAR(150),
    action TEXT,
    entity VARCHAR(100),
    entity_id UUID,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
