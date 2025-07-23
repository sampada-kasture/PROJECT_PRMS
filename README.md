# Property Rental Management System (PRMS)

## Overview

PRMS is a comprehensive database-driven Property Rental Management System designed to manage properties, owners, tenants, units, leases, and maintenance requests. The system implements role-based access control with four distinct user types: Admin, Manager, Owner, and Tenant.

## System Architecture

### Database Schema
The system uses Oracle Database with the following core tables:
- **MANAGER** - Property management personnel
- **OWNER** - Property owners information
- **PROPERTY** - Property details and unit counts
- **UNIT** - Individual rental units
- **TENANTS** - Tenant information
- **LEASE** - Lease agreements and terms
- **MAINTENANCE** - Maintenance requests and tracking

### User Roles & Permissions
- **ADMIN**: Full system access (create/modify/delete all records)
- **MANAGER**: Manage units, leases, maintenance, and tenant records
- **OWNER**: Access to their properties and owner information
- **TENANT**: View personal info and submit maintenance requests

## Key Features

- Multi-property management support
- Tenant and lease tracking
- Maintenance request management
- Revenue calculation and reporting
- Vacancy tracking
- Role-based access control

## Technologies Used

- **Database**: Oracle Database
- **Language**: PL/SQL
- **Features**: Stored procedures, views, triggers, user management

## Database Views

The system includes several analytical views:
- Units per owner
- Manager assignments
- Vacant units tracking
- Revenue calculations
- Lease duration analysis
- Maintenance issue tracking and resolution

## Setup Instructions

1. Connect to Oracle Database as a privileged user
2. Run the SQL scripts in the following order:
   - Create users and grant permissions
   - Create tables
   - Insert sample data
   - Create views

## Default Credentials

- **Admin**: ADMIN123 / Admin_123_property_mgnt
- **Manager**: MANAGER123 / Manager_123_property_mgnt
- **Owner**: OWNER123 / Owner_123_property_mgnt
- **Tenant**: TENANT123 / Tenant_123_property_mgnt

**Note**: Change these credentials in production environment.

---

*A database project demonstrating complex relational database design and user permission management for property rental systems.*

# PROJECT_PRMS
Username : ADMIN 
Password : 20@Vaishnavi
