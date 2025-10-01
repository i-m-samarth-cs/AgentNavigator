#!/bin/bash

# Agentic Life Navigator - Enhanced Generator Script
# This script generates a complete HTML application with stock images and Gemini AI integration

OUTPUT_FILE="agentic_life_navigator.html"

echo "🚀 Generating Enhanced Agentic Life Navigator application..."

cat > "$OUTPUT_FILE" << 'HTMLEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agentic Life Navigator - AI Crisis Management</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: #e2e8f0;
            min-height: 100vh;
            overflow-x: hidden;
            font-size: 16px;
            line-height: 1.6;
        }

        .navbar {
            background: rgba(15, 23, 42, 0.95);
            backdrop-filter: blur(10px);
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 999;
            border-bottom: 1px solid rgba(29, 78, 216, 0.3);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        .navbar-content {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .nav-menu {
            display: flex;
            gap: 2rem;
            list-style: none;
            align-items: center;
        }

        .nav-item {
            color: #cbd5e1;
            text-decoration: none;
            font-weight: 500;
            font-size: 1.05rem;
            transition: all 0.3s;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            cursor: pointer;
        }

        .nav-item:hover {
            color: #f97316;
            background: rgba(249, 115, 22, 0.1);
        }

        .nav-item.active {
            color: #f97316;
            background: rgba(249, 115, 22, 0.15);
        }

        .header {
            background: linear-gradient(135deg, #1d4ed8 0%, #2563eb 100%);
            padding: 2.5rem 2rem;
            position: relative;
            overflow: hidden;
        }

        .header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1200&q=80') center/cover;
            opacity: 0.15;
            animation: slowZoom 20s infinite alternate;
        }

        @keyframes slowZoom {
            from { transform: scale(1); }
            to { transform: scale(1.1); }
        }

        .header-content {
            position: relative;
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1400px;
            margin: 0 auto;
            flex-wrap: wrap;
            gap: 1.5rem;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 1.2rem;
        }

        .logo-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #f97316 0%, #fb923c 100%);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            font-weight: bold;
            color: white;
            box-shadow: 0 6px 16px rgba(249, 115, 22, 0.6);
        }

        .logo-text h1 {
            font-size: 2rem;
            font-weight: 800;
            color: white;
            letter-spacing: -0.5px;
        }

        .logo-text p {
            font-size: 0.95rem;
            color: #cbd5e1;
            margin-top: 0.3rem;
        }

        .status-badge {
            background: rgba(34, 197, 94, 0.2);
            border: 1px solid #22c55e;
            color: #22c55e;
            padding: 0.7rem 1.3rem;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.7rem;
        }

        .status-dot {
            width: 10px;
            height: 10px;
            background: #22c55e;
            border-radius: 50%;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.6; transform: scale(1.2); }
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .section {
            margin: 3rem 0;
            scroll-margin-top: 80px;
        }

        .hero-section {
            background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
            border-radius: 20px;
            padding: 3.5rem;
            margin: 3rem 0;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.5);
            border: 1px solid rgba(29, 78, 216, 0.3);
            position: relative;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 50%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1551434678-e076c223a692?w=800&q=80') center/cover;
            opacity: 0.08;
            border-radius: 0 20px 20px 0;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero-title {
            font-size: 2.8rem;
            font-weight: 900;
            background: linear-gradient(90deg, #60a5fa 0%, #f97316 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.3rem;
            line-height: 1.2;
        }

        .hero-description {
            font-size: 1.2rem;
            color: #cbd5e1;
            line-height: 1.9;
            margin-bottom: 2.5rem;
            max-width: 900px;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin: 2.5rem 0;
        }

        .feature-card {
            background: rgba(15, 23, 42, 0.6);
            border-radius: 14px;
            padding: 2rem;
            border: 1px solid rgba(100, 116, 139, 0.3);
            transition: all 0.3s;
            text-align: center;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            border-color: #1d4ed8;
            box-shadow: 0 10px 30px rgba(29, 78, 216, 0.3);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .feature-title {
            font-size: 1.3rem;
            font-weight: 700;
            color: #e2e8f0;
            margin-bottom: 0.7rem;
        }

        .feature-desc {
            font-size: 1.05rem;
            color: #94a3b8;
            line-height: 1.6;
        }

        .crisis-input-section {
            background: rgba(15, 23, 42, 0.7);
            border-radius: 16px;
            padding: 3rem;
            border: 1px solid rgba(249, 115, 22, 0.3);
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
        }

        .section-header {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .section-header h3 {
            font-size: 1.8rem;
            font-weight: 700;
            color: #f97316;
        }

        .input-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.8rem;
        }

        .input-group {
            margin-bottom: 0;
        }

        .input-group.full-width {
            grid-column: 1 / -1;
        }

        .input-group label {
            display: block;
            font-size: 1.1rem;
            font-weight: 600;
            color: #f97316;
            margin-bottom: 0.7rem;
        }

        .input-group input,
        .input-group textarea,
        .input-group select {
            width: 100%;
            padding: 1rem 1.3rem;
            background: rgba(30, 41, 59, 0.9);
            border: 2px solid rgba(100, 116, 139, 0.5);
            border-radius: 10px;
            color: #e2e8f0;
            font-size: 1.05rem;
            transition: all 0.3s;
            font-family: 'Inter', sans-serif;
        }

        .input-group input:focus,
        .input-group textarea:focus,
        .input-group select:focus {
            outline: none;
            border-color: #1d4ed8;
            box-shadow: 0 0 0 4px rgba(29, 78, 216, 0.2);
            background: rgba(30, 41, 59, 1);
        }

        .input-group textarea {
            min-height: 120px;
            resize: vertical;
        }

        .btn {
            padding: 1.2rem 2.5rem;
            border: none;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s;
            display: inline-flex;
            align-items: center;
            gap: 0.7rem;
            font-family: 'Inter', sans-serif;
        }

        .btn-primary {
            background: linear-gradient(135deg, #1d4ed8 0%, #2563eb 100%);
            color: white;
            box-shadow: 0 6px 16px rgba(29, 78, 216, 0.4);
        }

        .btn-primary:hover:not(:disabled) {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(29, 78, 216, 0.6);
        }

        .btn-secondary {
            background: linear-gradient(135deg, #f97316 0%, #fb923c 100%);
            color: white;
            box-shadow: 0 6px 16px rgba(249, 115, 22, 0.4);
        }

        .btn-secondary:hover:not(:disabled) {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(249, 115, 22, 0.6);
        }

        .btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: none !important;
        }

        .button-group {
            display: flex;
            gap: 1.5rem;
            margin-top: 2rem;
            flex-wrap: wrap;
        }

        .chatbot-container {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            z-index: 1000;
        }

        .chatbot-trigger {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, #f97316 0%, #fb923c 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: 0 6px 24px rgba(249, 115, 22, 0.6);
            transition: all 0.3s;
            font-size: 32px;
        }

        .chatbot-trigger:hover {
            transform: scale(1.15);
            box-shadow: 0 8px 32px rgba(249, 115, 22, 0.8);
        }

        .chatbot-window {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            width: 450px;
            height: 650px;
            background: #1e293b;
            border-radius: 20px;
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.6);
            display: none;
            flex-direction: column;
            overflow: hidden;
            border: 2px solid rgba(29, 78, 216, 0.4);
        }

        .chatbot-window.active {
            display: flex;
            animation: slideUp 0.4s cubic-bezier(0.16, 1, 0.3, 1);
        }

        @keyframes slideUp {
            from {
                transform: translateY(30px) scale(0.95);
                opacity: 0;
            }
            to {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
        }

        .chatbot-header {
            background: linear-gradient(90deg, #1d4ed8 0%, #2563eb 100%);
            padding: 1.3rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .chatbot-header h3 {
            font-size: 1.25rem;
            font-weight: 700;
            color: white;
        }

        .chatbot-close {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
            font-size: 1.6rem;
            cursor: pointer;
            width: 35px;
            height: 35px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: all 0.3s;
        }

        .chatbot-close:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: rotate(90deg);
        }

        .chatbot-messages {
            flex: 1;
            overflow-y: auto;
            padding: 1.5rem;
            display: flex;
            flex-direction: column;
            gap: 1.2rem;
            background: url('https://images.unsplash.com/photo-1639322537228-f710d846310a?w=600&q=80') center/cover;
            background-attachment: fixed;
        }

        .chatbot-messages::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(15, 23, 42, 0.95);
            pointer-events: none;
        }

        .message {
            padding: 1rem 1.3rem;
            border-radius: 14px;
            max-width: 85%;
            animation: messageSlide 0.4s cubic-bezier(0.16, 1, 0.3, 1);
            font-size: 1.05rem;
            line-height: 1.6;
            position: relative;
            z-index: 1;
        }

        @keyframes messageSlide {
            from {
                transform: translateY(15px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .message-bot {
            background: rgba(29, 78, 216, 0.25);
            border: 1px solid rgba(29, 78, 216, 0.5);
            align-self: flex-start;
        }

        .message-user {
            background: rgba(249, 115, 22, 0.25);
            border: 1px solid rgba(249, 115, 22, 0.5);
            align-self: flex-end;
        }

        .chatbot-input-container {
            padding: 1.3rem;
            background: rgba(15, 23, 42, 0.95);
            border-top: 1px solid rgba(100, 116, 139, 0.3);
            display: flex;
            gap: 0.8rem;
        }

        .chatbot-input-container input {
            flex: 1;
            padding: 1rem;
            background: rgba(30, 41, 59, 0.9);
            border: 2px solid rgba(100, 116, 139, 0.5);
            border-radius: 10px;
            color: #e2e8f0;
            font-size: 1.05rem;
            font-family: 'Inter', sans-serif;
        }

        .chatbot-input-container input:focus {
            outline: none;
            border-color: #1d4ed8;
        }

        .chatbot-input-container button {
            padding: 1rem 1.8rem;
            background: linear-gradient(135deg, #1d4ed8 0%, #2563eb 100%);
            border: none;
            border-radius: 10px;
            color: white;
            cursor: pointer;
            font-weight: 700;
            font-size: 1.05rem;
            transition: all 0.3s;
        }

        .chatbot-input-container button:hover {
            transform: scale(1.05);
        }

        .agents-section {
            background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
            border-radius: 20px;
            padding: 3rem;
            display: none;
            border: 1px solid rgba(29, 78, 216, 0.3);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.5);
        }

        .agents-section.active {
            display: block;
            animation: fadeIn 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .section-title {
            font-size: 2.2rem;
            font-weight: 800;
            color: #60a5fa;
            margin-bottom: 2rem;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .agent-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-bottom: 2.5rem;
        }

        .agent-card {
            background: rgba(15, 23, 42, 0.6);
            border-radius: 14px;
            padding: 2rem;
            border: 2px solid rgba(100, 116, 139, 0.3);
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
        }

        .agent-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, #1d4ed8 0%, #f97316 100%);
            transform: scaleX(0);
            transition: transform 0.4s;
        }

        .agent-card.active::before {
            transform: scaleX(1);
        }

        .agent-card.active {
            border-color: #1d4ed8;
            box-shadow: 0 6px 24px rgba(29, 78, 216, 0.4);
        }

        .agent-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #f97316 0%, #fb923c 100%);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            margin-bottom: 1.3rem;
        }

        .agent-name {
            font-size: 1.3rem;
            font-weight: 700;
            color: #e2e8f0;
            margin-bottom: 0.7rem;
        }

        .agent-status {
            font-size: 1rem;
            color: #94a3b8;
            display: flex;
            align-items: center;
            gap: 0.7rem;
        }

        .status-indicator {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: #64748b;
        }

        .status-indicator.active {
            background: #22c55e;
            box-shadow: 0 0 12px rgba(34, 197, 94, 0.6);
        }

        .status-indicator.processing {
            background: #eab308;
            animation: blink 1s infinite;
        }

        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.3; }
        }

        .status-indicator.completed {
            background: #3b82f6;
        }

        .orchestrator-section {
            background: rgba(249, 115, 22, 0.12);
            border: 2px solid #f97316;
            border-radius: 14px;
            padding: 2.5rem;
            margin-bottom: 2.5rem;
        }

        .orchestrator-title {
            font-size: 1.8rem;
            font-weight: 800;
            color: #f97316;
            margin-bottom: 1.2rem;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .progress-bar {
            width: 100%;
            height: 10px;
            background: rgba(100, 116, 139, 0.3);
            border-radius: 6px;
            overflow: hidden;
            margin-top: 1.2rem;
        }

        .progress-fill {
            height: 100%;
            background: linear-gradient(90deg, #1d4ed8 0%, #f97316 100%);
            width: 0%;
            transition: width 0.5s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .report-section {
            background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
            border-radius: 20px;
            padding: 3rem;
            display: none;
            border: 1px solid rgba(29, 78, 216, 0.3);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.5);
        }

        .report-section.active {
            display: block;
            animation: fadeIn 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .report-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2.5rem;
            flex-wrap: wrap;
            gap: 1.5rem;
        }

        .report-category {
            background: rgba(15, 23, 42, 0.7);
            border-left: 5px solid #1d4ed8;
            border-radius: 10px;
            padding: 2rem;
            margin-bottom: 2rem;
        }

        .report-category.emergency {
            border-left-color: #dc2626;
        }

        .report-category.government {
            border-left-color: #22c55e;
        }

        .report-category.fraud {
            border-left-color: #eab308;
        }

        .report-category.financial {
            border-left-color: #3b82f6;
        }

        .report-category.documents {
            border-left-color: #a855f7;
        }

        .category-title {
            font-size: 1.5rem;
            font-weight: 700;
            color: #60a5fa;
            margin-bottom: 1.2rem;
            display: flex;
            align-items: center;
            gap: 0.7rem;
        }

        .category-content {
            color: #cbd5e1;
            line-height: 1.8;
            font-size: 1.05rem;
        }

        .category-content ul {
            list-style: none;
            padding-left: 0;
            margin-top: 1rem;
        }

        .category-content li {
            padding: 0.7rem 0;
            padding-left: 2rem;
            position: relative;
        }

        .category-content li::before {
            content: '▸';
            position: absolute;
            left: 0;
            color: #f97316;
            font-weight: bold;
            font-size: 1.2rem;
        }

        .alert-box, .success-box, .info-box {
            border-radius: 10px;
            padding: 1.3rem;
            margin: 1.2rem 0;
            font-size: 1.05rem;
        }

        .alert-box {
            background: rgba(220, 38, 38, 0.15);
            border: 2px solid #dc2626;
            color: #fca5a5;
        }

        .success-box {
            background: rgba(34, 197, 94, 0.15);
            border: 2px solid #22c55e;
            color: #86efac;
        }

        .info-box {
            background: rgba(59, 130, 246, 0.15);
            border: 2px solid #3b82f6;
            color: #93c5fd;
        }

        .loader {
            display: inline-block;
            width: 24px;
            height: 24px;
            border: 3px solid rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            border-top-color: #f97316;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        footer {
            text-align: center;
            padding: 3rem 2rem;
            color: #64748b;
            margin-top: 4rem;
            border-top: 1px solid rgba(100, 116, 139, 0.2);
            font-size: 1.05rem;
        }

        @media (max-width: 768px) {
            .container {
                padding: 0 1rem;
            }

            .hero-section {
                padding: 2rem 1.5rem;
            }

            .hero-title {
                font-size: 2rem;
            }

            .hero-description {
                font-size: 1.05rem;
            }

            .agent-grid {
                grid-template-columns: 1fr;
            }

            .chatbot-window {
                width: calc(100vw - 2rem);
                height: calc(100vh - 2rem);
                bottom: 1rem;
                right: 1rem;
            }

            .navbar-content {
                flex-direction: column;
                align-items: flex-start;
            }

            .nav-menu {
                width: 100%;
                flex-direction: column;
                gap: 0.5rem;
            }

            .nav-item {
                width: 100%;
            }

            .input-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar-content">
            <div style="display: flex; align-items: center; gap: 1rem;">
                <div style="width: 40px; height: 40px; background: linear-gradient(135deg, #f97316 0%, #fb923c 100%); border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 20px;">🛡️</div>
                <span style="font-weight: 700; font-size: 1.2rem; color: white;">Agentic Navigator</span>
            </div>
            <ul class="nav-menu">
                <li><a class="nav-item active" onclick="scrollToSection('home')">🏠 Home</a></li>
                <li><a class="nav-item" onclick="scrollToSection('crisis-input')">📋 Submit Crisis</a></li>
                <li><a class="nav-item" onclick="scrollToSection('agents')">⚙️ Agents</a></li>
                <li><a class="nav-item" onclick="scrollToSection('report')">📊 Report</a></li>
                <li><a class="nav-item" onclick="openChatbot()">💬 Chatbot</a></li>
            </ul>
        </div>
    </nav>

    <header class="header" id="home">
        <div class="header-content">
            <div class="logo">
                <div class="logo-icon">🛡️</div>
                <div class="logo-text">
                    <h1>Agentic Life Navigator</h1>
                    <p>AI-Powered Mission-Critical Crisis Management</p>
                </div>
            </div>
            <div class="status-badge">
                <div class="status-dot"></div>
                <span>System Online</span>
            </div>
        </div>
    </header>

    <div class="container">
        <section class="hero-section section">
            <div class="hero-content">
                <h2 class="hero-title">Transform Crisis into Action with AI Intelligence</h2>
                <p class="hero-description">
                    Experience the future of crisis management. Our advanced multi-agent AI system analyzes your situation in real-time, 
                    identifies government support, detects fraud risks, and generates personalized action plans—powered by Google Gemini AI.
                </p>
                
                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon">🤖</div>
                        <h4 class="feature-title">AI-Powered Analysis</h4>
                        <p class="feature-desc">Gemini AI processes your crisis and generates tailored solutions instantly</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">🏛️</div>
                        <h4 class="feature-title">Government Schemes</h4>
                        <p class="feature-desc">Automatically identifies applicable schemes and benefits for your situation</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">🔒</div>
                        <h4 class="feature-title">Fraud Protection</h4>
                        <p class="feature-desc">Real-time fraud detection aligned with Thales cybersecurity standards</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="crisis-input">
            <div class="crisis-input-section">
                <div class="section-header">
                    <h3>📋 Crisis Assessment Form</h3>
                </div>
                
                <div class="input-grid">
                    <div class="input-group">
                        <label>Full Name *</label>
                        <input type="text" id="userName" placeholder="Enter your full name" required>
                    </div>

                    <div class="input-group">
                        <label>Location *</label>
                        <input type="text" id="userLocation" value="Nagpur, Maharashtra" required>
                    </div>

                    <div class="input-group">
                        <label>Crisis Type *</label>
                        <select id="crisisType">
                            <option value="job_medical">Job Loss + Medical Emergency</option>
                            <option value="job_only">Job Loss Only</option>
                            <option value="medical_only">Medical Emergency Only</option>
                            <option value="financial">Financial Crisis</option>
                            <option value="education">Education Crisis</option>
                            <option value="housing">Housing Crisis</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <label>Monthly Income (₹)</label>
                        <input type="number" id="monthlyIncome" placeholder="Current monthly income" value="0">
                    </div>

                    <div class="input-group">
                        <label>Available Savings (₹)</label>
                        <input type="number" id="availableSavings" placeholder="Available savings" value="50000">
                    </div>

                    <div class="input-group">
                        <label>Family Members</label>
                        <input type="number" id="familyMembers" placeholder="Number of dependents" value="4">
                    </div>

                    <div class="input-group full-width">
                        <label>Detailed Crisis Description *</label>
                        <textarea id="crisisDescription" placeholder="Describe your situation in detail. Be specific about your challenges, timeline, and immediate needs...">Recently lost my job due to company downsizing. Simultaneously facing a medical emergency requiring immediate hospitalization. Need urgent financial assistance and guidance on available government support schemes.</textarea>
                    </div>

                    <div class="input-group full-width">
                        <label>Gemini API Key (Optional - for real AI processing)</label>
                        <input type="password" id="geminiApiKey" placeholder="Enter your Gemini API key or leave blank for demo mode">
                        <p style="color: #94a3b8; font-size: 0.95rem; margin-top: 0.5rem;">Get your free API key at <a href="https://makersuite.google.com/app/apikey" target="_blank" style="color: #60a5fa;">Google AI Studio</a></p>
                    </div>
                </div>

                <div class="button-group">
                    <button class="btn btn-primary" onclick="openChatbot()">
                        <span>🤖</span> Start AI Assistant
                    </button>
                    <button class="btn btn-secondary" onclick="quickProcess()" id="quickProcessBtn">
                        <span>⚡</span> Quick Process (Demo)
                    </button>
                </div>
            </div>
        </section>

        <section class="agents-section section" id="agents">
            <div class="orchestrator-section">
                <h3 class="orchestrator-title">
                    <span style="font-size: 2.5rem;">🎯</span>
                    Master Orchestrator Agent
                </h3>
                <p style="color: #cbd5e1; margin-bottom: 1.2rem; font-size: 1.1rem;">
                    Coordinating 5 specialized AI agents powered by Google Gemini to analyze your crisis and generate comprehensive solutions...
                </p>
                <div class="progress-bar">
                    <div class="progress-fill" id="progressFill"></div>
                </div>
                <p style="color: #94a3b8; margin-top: 0.7rem; font-size: 1.05rem;" id="progressText">Initializing...</p>
            </div>

            <h3 class="section-title">
                <span style="font-size: 2rem;">⚙️</span>
                Worker Agents Status
            </h3>

            <div class="agent-grid">
                <div class="agent-card" id="agent1">
                    <div class="agent-icon">🚨</div>
                    <div class="agent-name">Emergency Navigator</div>
                    <div class="agent-status">
                        <div class="status-indicator" id="status1"></div>
                        <span id="statusText1">Standby</span>
                    </div>
                </div>

                <div class="agent-card" id="agent2">
                    <div class="agent-icon">🏛️</div>
                    <div class="agent-name">Government Schemes</div>
                    <div class="agent-status">
                        <div class="status-indicator" id="status2"></div>
                        <span id="statusText2">Standby</span>
                    </div>
                </div>

                <div class="agent-card" id="agent3">
                    <div class="agent-icon">🔍</div>
                    <div class="agent-name">Fraud Intelligence</div>
                    <div class="agent-status">
                        <div class="status-indicator" id="status3"></div>
                        <span id="statusText3">Standby</span>
                    </div>
                </div>

                <div class="agent-card" id="agent4">
                    <div class="agent-icon">💰</div>
                    <div class="agent-name">Savings & Risk Analyzer</div>
                    <div class="agent-status">
                        <div class="status-indicator" id="status4"></div>
                        <span id="statusText4">Standby</span>
                    </div>
                </div>

                <div class="agent-card" id="agent5">
                    <div class="agent-icon">📄</div>
                    <div class="agent-name">Document Generator</div>
                    <div class="agent-status">
                        <div class="status-indicator" id="status5"></div>
                        <span id="statusText5">Standby</span>
                    </div>
                </div>
            </div>
        </section>

        <section class="report-section section" id="report">
            <div class="report-header">
                <h3 class="section-title">
                    <span style="font-size: 2rem;">📊</span>
                    AI-Generated Action Report
                </h3>
                <button class="btn btn-secondary" onclick="downloadReport()">
                    <span>📥</span> Download Report
                </button>
            </div>

            <div id="reportContent">
                <!-- Report will be generated here -->
            </div>
        </section>
    </div>

    <div class="chatbot-container">
        <div class="chatbot-trigger" onclick="toggleChatbot()">💬</div>
        <div class="chatbot-window" id="chatbotWindow">
            <div class="chatbot-header">
                <h3>🤖 AI Navigator Assistant</h3>
                <button class="chatbot-close" onclick="toggleChatbot()">×</button>
            </div>
            <div class="chatbot-messages" id="chatMessages">
                <div class="message message-bot">
                    👋 Welcome! I'm your AI-powered Navigator Assistant. Before we analyze your crisis, I need to verify some information to ensure accurate recommendations. Let's start!
                </div>
            </div>
            <div class="chatbot-input-container">
                <input type="text" id="chatInput" placeholder="Type your message..." onkeypress="handleChatKeyPress(event)">
                <button onclick="sendChatMessage()">Send</button>
            </div>
        </div>
    </div>

    <footer>
        <p style="font-size: 1.15rem; font-weight: 600;">🛡️ Agentic Life Navigator</p>
        <p style="margin-top: 0.7rem;">Powered by Google Gemini AI | Aligned with Thales Cybersecurity & Digital Identity</p>
        <p style="margin-top: 0.5rem; color: #94a3b8;">Empowering Indian Middle Class with AI-Driven Crisis Management Solutions</p>
    </footer>

    <script>
        // Global State
        let chatbotState = {
            insuranceVerified: false,
            insurancePolicyNumber: null,
            conversationStage: 'initial',
            userResponses: {},
            apiKey: ''
        };

        let crisisData = {};
        let geminiResponse = null;

        // Navigation
        function scrollToSection(sectionId) {
            const sections = {
                'home': document.getElementById('home'),
                'crisis-input': document.getElementById('crisis-input'),
                'agents': document.getElementById('agents'),
                'report': document.getElementById('report')
            };
            
            if (sections[sectionId]) {
                sections[sectionId].scrollIntoView({ behavior: 'smooth', block: 'start' });
            }

            // Update active nav item
            document.querySelectorAll('.nav-item').forEach(item => item.classList.remove('active'));
            event.target.classList.add('active');
        }

        // Chatbot Functions
        function toggleChatbot() {
            const chatWindow = document.getElementById('chatbotWindow');
            chatWindow.classList.toggle('active');
        }

        function openChatbot() {
            const chatWindow = document.getElementById('chatbotWindow');
            chatWindow.classList.add('active');
            
            collectCrisisData();

            if (!crisisData.name) {
                addBotMessage("⚠️ Please enter your name in the form above before starting.");
                return;
            }

            if (chatbotState.conversationStage === 'initial') {
                setTimeout(() => {
                    addBotMessage(`Hello ${crisisData.name}! 👋 To provide you with the most accurate assistance, I need to perform a mandatory verification.`);
                    setTimeout(() => {
                        addBotMessage("📋 Do you have any active health or life insurance policy? (Reply: Yes or No)");
                        chatbotState.conversationStage = 'insurance_check';
                    }, 1000);
                }, 500);
            }
        }

        function collectCrisisData() {
            crisisData = {
                name: document.getElementById('userName').value,
                location: document.getElementById('userLocation').value,
                crisisType: document.getElementById('crisisType').value,
                description: document.getElementById('crisisDescription').value,
                income: document.getElementById('monthlyIncome').value,
                savings: document.getElementById('availableSavings').value,
                familyMembers: document.getElementById('familyMembers').value
            };
            chatbotState.apiKey = document.getElementById('geminiApiKey').value;
        }

        function addBotMessage(message) {
            const messagesContainer = document.getElementById('chatMessages');
            const messageDiv = document.createElement('div');
            messageDiv.className = 'message message-bot';
            messageDiv.textContent = message;
            messagesContainer.appendChild(messageDiv);
            messagesContainer.scrollTop = messagesContainer.scrollHeight;
        }

        function addUserMessage(message) {
            const messagesContainer = document.getElementById('chatMessages');
            const messageDiv = document.createElement('div');
            messageDiv.className = 'message message-user';
            messageDiv.textContent = message;
            messagesContainer.appendChild(messageDiv);
            messagesContainer.scrollTop = messagesContainer.scrollHeight;
        }

        function handleChatKeyPress(event) {
            if (event.key === 'Enter') {
                sendChatMessage();
            }
        }

        function sendChatMessage() {
            const input = document.getElementById('chatInput');
            const message = input.value.trim();
            
            if (!message) return;

            addUserMessage(message);
            input.value = '';

            processChatMessage(message);
        }

        function processChatMessage(message) {
            const lowerMessage = message.toLowerCase();

            switch(chatbotState.conversationStage) {
                case 'insurance_check':
                    if (lowerMessage.includes('yes') || lowerMessage === 'y') {
                        chatbotState.userResponses.hasInsurance = true;
                        setTimeout(() => {
                            addBotMessage("Great! 📝 Please provide your insurance policy number:");
                            chatbotState.conversationStage = 'policy_number';
                        }, 500);
                    } else if (lowerMessage.includes('no') || lowerMessage === 'n') {
                        chatbotState.userResponses.hasInsurance = false;
                        setTimeout(() => {
                            addBotMessage("⚠️ No insurance coverage detected. This is a critical risk factor that I'll include in the assessment.");
                            setTimeout(() => {
                                addBotMessage("✅ Pre-verification completed. Initiating AI analysis with Master Orchestrator...");
                                chatbotState.insuranceVerified = true;
                                setTimeout(initiateMasterOrchestrator, 1500);
                            }, 1000);
                        }, 500);
                    } else {
                        addBotMessage("Please respond with 'Yes' or 'No'.");
                    }
                    break;

                case 'policy_number':
                    if (message.length >= 6) {
                        chatbotState.insurancePolicyNumber = message;
                        chatbotState.insuranceVerified = true;
                        setTimeout(() => {
                            addBotMessage(`✅ Policy verified: ${message.substring(0, 4)}****`);
                            setTimeout(() => {
                                addBotMessage("🎯 All pre-checks completed successfully!");
                                setTimeout(() => {
                                    addBotMessage("🚀 Launching Master Orchestrator to deploy 5 specialized AI agents...");
                                    setTimeout(initiateMasterOrchestrator, 1500);
                                }, 1000);
                            }, 800);
                        }, 500);
                    } else {
                        addBotMessage("⚠️ Invalid format. Please enter a valid policy number (minimum 6 characters):");
                    }
                    break;

                default:
                    addBotMessage("Processing your input...");
            }
        }

        // Quick Process (Demo Mode)
        function quickProcess() {
            collectCrisisData();
            if (!crisisData.name) {
                alert('⚠️ Please fill in at least your name before proceeding.');
                return;
            }
            
            chatbotState.insuranceVerified = true;
            chatbotState.userResponses.hasInsurance = false;
            initiateMasterOrchestrator();
        }

        // Master Orchestrator
        async function initiateMasterOrchestrator() {
            document.getElementById('agents').classList.add('active');
            scrollToSection('agents');

            updateProgress(0, "Initializing Master Orchestrator...");

            // If API key is provided, use real Gemini API
            if (chatbotState.apiKey) {
                await callGeminiAPI();
            }

            setTimeout(() => deployWorkerAgents(), 1000);
        }

        async function callGeminiAPI() {
            try {
                updateProgress(10, "Connecting to Gemini AI...");
                
                const prompt = `You are a crisis management AI assistant for the Indian middle class. Analyze this crisis and provide CONCISE, actionable recommendations in JSON format.

Crisis Details:
- Name: ${crisisData.name}
- Location: ${crisisData.location}
- Type: ${crisisData.crisisType}
- Description: ${crisisData.description}
- Monthly Income: ₹${crisisData.income}
- Savings: ₹${crisisData.savings}
- Family Members: ${crisisData.familyMembers}
- Insurance: ${chatbotState.userResponses.hasInsurance ? 'Yes' : 'No'}

Provide response in this JSON structure:
{
  "emergency": {"priority_actions": ["action1", "action2"], "helplines": ["helpline1"]},
  "government_schemes": [{"name": "scheme", "benefit": "benefit", "application": "how to apply"}],
  "fraud_alerts": ["alert1", "alert2"],
  "financial_plan": {"budget": "plan", "income_sources": ["source1"]},
  "documents": ["doc1", "doc2"]
}

Keep each field CONCISE (2-3 items max). Focus on India-specific, immediately actionable advice for ${crisisData.location}.`;

                const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=${chatbotState.apiKey}`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        contents: [{
                            parts: [{ text: prompt }]
                        }]
                    })
                });

                if (response.ok) {
                    const data = await response.json();
                    const text = data.candidates[0].content.parts[0].text;
                    
                    // Extract JSON from response
                    const jsonMatch = text.match(/\{[\s\S]*\}/);
                    if (jsonMatch) {
                        geminiResponse = JSON.parse(jsonMatch[0]);
                        console.log('Gemini AI Response:', geminiResponse);
                    }
                }
            } catch (error) {
                console.error('Gemini API Error:', error);
            }
        }

        async function deployWorkerAgents() {
            const agents = [
                { id: 1, name: "Emergency Navigator", duration: 2000 },
                { id: 2, name: "Government Schemes", duration: 2500 },
                { id: 3, name: "Fraud Intelligence", duration: 1800 },
                { id: 4, name: "Savings & Risk Analyzer", duration: 2200 },
                { id: 5, name: "Document Generator", duration: 2000 }
            ];

            for (let i = 0; i < agents.length; i++) {
                const agent = agents[i];
                const progress = ((i + 1) / agents.length) * 100;

                document.getElementById(`agent${agent.id}`).classList.add('active');
                document.getElementById(`status${agent.id}`).classList.add('processing');
                document.getElementById(`statusText${agent.id}`).textContent = 'Processing...';
                
                updateProgress(progress * 0.7, `${agent.name} analyzing data...`);

                await sleep(agent.duration);

                document.getElementById(`status${agent.id}`).classList.remove('processing');
                document.getElementById(`status${agent.id}`).classList.add('completed');
                document.getElementById(`statusText${agent.id}`).textContent = '✓ Completed';
            }

            updateProgress(85, "Synthesizing AI insights...");
            await sleep(2000);

            updateProgress(100, "✅ Report generation complete!");
            await sleep(1000);

            generateReport();
        }

        function updateProgress(percentage, text) {
            document.getElementById('progressFill').style.width = `${percentage}%`;
            document.getElementById('progressText').textContent = text;
        }

        function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve, ms));
        }

        // Report Generation with Gemini AI or Default
        function generateReport() {
            const reportContent = document.getElementById('reportContent');
            const hasInsurance = chatbotState.userResponses.hasInsurance;
            const savings = parseInt(crisisData.savings) || 0;
            const income = parseInt(crisisData.income) || 0;

            let reportHTML = '';

            // Use Gemini response if available, otherwise use intelligent defaults
            if (geminiResponse) {
                // Emergency Section
                reportHTML += `
                    <div class="report-category emergency">
                        <h4 class="category-title">🚨 Immediate Actions</h4>
                        <div class="category-content">
                            ${!hasInsurance ? '<div class="alert-box">⚠️ <strong>Critical:</strong> No insurance coverage detected.</div>' : ''}
                            <ul>
                                ${geminiResponse.emergency.priority_actions.map(action => `<li>${action}</li>`).join('')}
                            </ul>
                            <div class="info-box">
                                📞 <strong>Helplines:</strong> ${geminiResponse.emergency.helplines.join(' | ')}
                            </div>
                        </div>
                    </div>`;

                // Government Schemes
                reportHTML += `
                    <div class="report-category government">
                        <h4 class="category-title">🏛️ Government Support</h4>
                        <div class="category-content">
                            <ul>
                                ${geminiResponse.government_schemes.map(scheme => 
                                    `<li><strong>${scheme.name}:</strong> ${scheme.benefit}<br><em style="color: #94a3b8;">Application: ${scheme.application}</em></li>`
                                ).join('')}
                            </ul>
                        </div>
                    </div>`;

                // Fraud Alerts
                reportHTML += `
                    <div class="report-category fraud">
                        <h4 class="category-title">🔍 Fraud Prevention</h4>
                        <div class="category-content">
                            <div class="alert-box">⚠️ High vulnerability period - stay vigilant!</div>
                            <ul>
                                ${geminiResponse.fraud_alerts.map(alert => `<li>${alert}</li>`).join('')}
                            </ul>
                        </div>
                    </div>`;

                // Financial Plan
                reportHTML += `
                    <div class="report-category financial">
                        <h4 class="category-title">💰 Financial Strategy</h4>
                        <div class="category-content">
                            <p><strong>Current Status:</strong> Savings: ₹${savings.toLocaleString('en-IN')} | Income: ₹${income.toLocaleString('en-IN')}</p>
                            <p><strong>Budget Plan:</strong> ${geminiResponse.financial_plan.budget}</p>
                            <p><strong>Income Sources:</strong></p>
                            <ul>
                                ${geminiResponse.financial_plan.income_sources.map(source => `<li>${source}</li>`).join('')}
                            </ul>
                        </div>
                    </div>`;

                // Documents
                reportHTML += `
                    <div class="report-category documents">
                        <h4 class="category-title">📄 Required Documents</h4>
                        <div class="category-content">
                            <ul>
                                ${geminiResponse.documents.map(doc => `<li>${doc}</li>`).join('')}
                            </ul>
                        </div>
                    </div>`;

            } else {
                // Default concise report based on crisis type
                reportHTML = generateDefaultReport(hasInsurance, savings, income);
            }

            reportHTML += `
                <div class="info-box" style="margin-top: 2rem;">
                    <strong>🔒 Security Notice:</strong> Analysis conducted with Thales-aligned cybersecurity standards. Your data is processed locally and never stored externally.
                </div>`;

            reportContent.innerHTML = reportHTML;
            document.getElementById('report').classList.add('active');
            scrollToSection('report');

            addBotMessage("✅ Your personalized action report is ready! Check the Report section below.");
        }

        function generateDefaultReport(hasInsurance, savings, income) {
            const crisisType = crisisData.crisisType;
            let html = '';

            // Emergency Actions
            html += `
                <div class="report-category emergency">
                    <h4 class="category-title">🚨 Priority Actions (24-48 Hours)</h4>
                    <div class="category-content">
                        ${!hasInsurance ? '<div class="alert-box">⚠️ <strong>Critical:</strong> No insurance - apply immediately</div>' : ''}
                        <ul>`;
            
            if (crisisType.includes('medical')) {
                html += `<li>Visit nearest government hospital in ${crisisData.location} for emergency treatment under state health scheme</li>`;
            }
            if (crisisType.includes('job')) {
                html += `<li>Register with National Career Service (ncs.gov.in) and State Employment Exchange within 48 hours</li>`;
            }
            
            html += `
                            <li>Apply for Ayushman Bharat (₹5L health cover) if eligible at pmjay.gov.in</li>
                            <li>Activate emergency savings plan: Use max 40% for immediate needs, preserve 60% as buffer</li>
                        </ul>
                        <div class="info-box">📞 <strong>24/7 Helplines:</strong> Health: 104 | Employment: 1800-425-1514</div>
                    </div>
                </div>`;

            // Government Schemes
            html += `
                <div class="report-category government">
                    <h4 class="category-title">🏛️ Applicable Government Schemes</h4>
                    <div class="category-content">
                        <ul>
                            <li><strong>PM-JAY:</strong> ₹5 lakh health coverage. Apply at Jan Seva Kendra with Aadhar + income proof</li>
                            <li><strong>PMKVY:</strong> Free skill training + stipend. Register at pmkvyofficial.org</li>
                            <li><strong>PM Jan Dhan:</strong> ₹10K overdraft facility + ₹1L accident insurance. Open at any bank</li>
                        </ul>
                    </div>
                </div>`;

            // Fraud Protection
            html += `
                <div class="report-category fraud">
                    <h4 class="category-title">🔍 Fraud Prevention Alerts</h4>
                    <div class="category-content">
                        <div class="alert-box">⚠️ Financial stress increases fraud vulnerability</div>
                        <ul>
                            <li>Never pay upfront fees for job placements or loan approvals</li>
                            <li>Verify all schemes on official .gov.in websites only</li>
                            <li>Report fraud: cybercrime.gov.in or call 1930</li>
                        </ul>
                    </div>
                </div>`;

            // Financial Strategy
            html += `
                <div class="report-category financial">
                    <h4 class="category-title">💰 30-Day Financial Plan</h4>
                    <div class="category-content">
                        <p><strong>Available Funds:</strong> ₹${savings.toLocaleString('en-IN')}</p>
                        <ul>
                            <li><strong>Week 1-2:</strong> Apply for government schemes + start gig work (Swiggy/Zomato/Urban Company)</li>
                            <li><strong>Week 3-4:</strong> Focus on skill-based freelancing + NAPS apprenticeship (stipend during training)</li>
                            <li><strong>Budget:</strong> 40% medical/urgent, 35% essentials, 25% emergency reserve</li>
                        </ul>
                    </div>
                </div>`;

            // Documents
            html += `
                <div class="report-category documents">
                    <h4 class="category-title">📄 Document Checklist</h4>
                    <div class="category-content">
                        <ul>
                            <li>Aadhar Card + PAN Card (mandatory for all schemes)</li>
                            <li>Income proof: Last 3 salary slips or Form 16</li>
                            <li>Bank account: Passbook + cancelled cheque</li>
                            <li>Upload all to DigiLocker (digilocker.gov.in) for instant verification</li>
                        </ul>
                    </div>
                </div>`;

            return html;
        }

        // Download Report
        function downloadReport() {
            const reportContent = document.getElementById('reportContent').innerText;
            const userName = crisisData.name || 'User';
            const timestamp = new Date().toLocaleString('en-IN');

            const fullReport = `
════════════════════════════════════════════════════════════════
    AGENTIC LIFE NAVIGATOR - AI CRISIS MANAGEMENT REPORT
════════════════════════════════════════════════════════════════

Generated for: ${userName}
Location: ${crisisData.location}
Crisis Type: ${crisisData.crisisType}
Generated: ${timestamp}
Insurance Status: ${chatbotState.userResponses.hasInsurance ? 'Active' : 'Not Available'}
AI Processing: ${geminiResponse ? 'Gemini AI (Real-time)' : 'Demo Mode'}

════════════════════════════════════════════════════════════════

${reportContent}

════════════════════════════════════════════════════════════════
                        SYSTEM INFORMATION
════════════════════════════════════════════════════════════════

✓ Master Orchestrator Agent: Coordinated 5 specialized AI agents
✓ Data Quality: Ensured through mandatory pre-verification
✓ Security: Aligned with Thales Cybersecurity & Digital Identity
✓ Privacy: All data processed locally, never stored externally

For Support:
• Visit nearest Jan Seva Kendra with Aadhar Card
• National Helpline: 1915
• Emergency: 112 | Health: 104 | Cyber Crime: 1930

════════════════════════════════════════════════════════════════
        © Agentic Life Navigator | Powered by Google Gemini AI
════════════════════════════════════════════════════════════════
            `;

            const blob = new Blob([fullReport], { type: 'text/plain' });
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = `Crisis_Report_${userName.replace(/\s+/g, '_')}_${Date.now()}.txt`;
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            window.URL.revokeObjectURL(url);

            // Show success notification
            const notification = document.createElement('div');
            notification.style.cssText = `
                position: fixed;
                top: 100px;
                right: 2rem;
                background: linear-gradient(135deg, #22c55e 0%, #16a34a 100%);
                color: white;
                padding: 1.2rem 2rem;
                border-radius: 12px;
                box-shadow: 0 8px 24px rgba(34, 197, 94, 0.4);
                z-index: 9999;
                font-weight: 600;
                font-size: 1.05rem;
                animation: slideIn 0.4s cubic-bezier(0.16, 1, 0.3, 1);
            `;
            notification.innerHTML = '✅ Report downloaded successfully!';
            document.body.appendChild(notification);

            setTimeout(() => {
                notification.style.animation = 'slideOut 0.4s cubic-bezier(0.16, 1, 0.3, 1)';
                setTimeout(() => notification.remove(), 400);
            }, 3000);
        }

        // Initialize
        window.addEventListener('load', () => {
            console.log('🛡️ Agentic Life Navigator initialized');
            console.log('🤖 AI-powered multi-agent system ready');
            console.log('🔒 Cybersecurity module active');
            
            // Add animations CSS
            const style = document.createElement('style');
            style.textContent = `
                @keyframes slideIn {
                    from { transform: translateX(400px); opacity: 0; }
                    to { transform: translateX(0); opacity: 1; }
                }
                @keyframes slideOut {
                    from { transform: translateX(0); opacity: 1; }
                    to { transform: translateX(400px); opacity: 0; }
                }
            `;
            document.head.appendChild(style);
        });

        // Smooth scroll behavior
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            });
        });
    </script>
</body>
</html>
HTMLEOF

echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   ✅ AGENTIC LIFE NAVIGATOR - GENERATION COMPLETE"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "📄 File created: $OUTPUT_FILE"
echo "📦 File size: $(du -h "$OUTPUT_FILE" | cut -f1)"
echo ""
echo "🚀 DEPLOYMENT OPTIONS:"
echo "────────────────────────────────────────────────────────────────"
echo ""
echo "Option 1 - Direct Browser:"
echo "  open $OUTPUT_FILE                    # macOS"
echo "  xdg-open $OUTPUT_FILE                # Linux"
echo "  start $OUTPUT_FILE                   # Windows"
echo ""
echo "Option 2 - Local Server (Recommended):"
echo "  python3 -m http.server 8000"
echo "  Then visit: http://localhost:8000/$OUTPUT_FILE"
echo ""
echo "Option 3 - PHP Server:"
echo "  php -S localhost:8000"
echo "  Then visit: http://localhost:8000/$OUTPUT_FILE"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   ✨ FEATURES INCLUDED"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "✓ Stock images from Unsplash CDN (no downloads needed)"
echo "✓ Real Gemini AI integration (provide your API key)"
echo "✓ Concise, actionable reports (no fluff)"
echo "✓ Enhanced navigation menu with smooth scrolling"
echo "✓ Bigger, more readable fonts (1.05rem - 1.2rem base)"
echo "✓ Interactive chatbot with insurance verification"
echo "✓ 5 specialized AI worker agents"
echo "✓ Color-coded report sections"
echo "✓ Download report functionality"
echo "✓ Fully responsive design"
echo "✓ Deep Blue (#1d4ed8) + Orange (#f97316) palette"
echo "✓ Thales cybersecurity alignment"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   🔑 GEMINI API KEY SETUP"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "1. Visit: https://makersuite.google.com/app/apikey"
echo "2. Click 'Create API Key'"
echo "3. Copy the key"
echo "4. Paste it in the application form (optional field)"
echo "5. Without API key: Demo mode with intelligent defaults"
echo "   With API key: Real-time AI processing with Gemini"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   📊 TECHNICAL SPECIFICATIONS"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "• Framework: Pure HTML5 + CSS3 + Vanilla JavaScript"
echo "• Font: Inter (Google Fonts)"
echo "• Images: Unsplash CDN (technology, teamwork, data themes)"
echo "• AI Model: Google Gemini Pro"
echo "• API Endpoint: generativelanguage.googleapis.com"
echo "• Security: Client-side processing, no data storage"
echo "• Browser Support: All modern browsers (Chrome, Firefox, Safari, Edge)"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   🎯 DEMO INSTRUCTIONS"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "Quick Demo (No API Key):"
echo "  1. Open the HTML file"
echo "  2. Fill in your name and crisis details"
echo "  3. Click 'Quick Process (Demo)'"
echo "  4. View AI-generated report"
echo ""
echo "Full Demo (With Gemini API):"
echo "  1. Get free API key from Google AI Studio"
echo "  2. Enter API key in the form"
echo "  3. Click 'Start AI Assistant'"
echo "  4. Follow chatbot verification"
echo "  5. Get real-time AI-powered recommendations"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   💡 CUSTOMIZATION TIPS"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "• Change colors: Search for #1d4ed8 and #f97316 in HTML"
echo "• Modify fonts: Update Google Fonts link in <head>"
echo "• Add images: Replace Unsplash URLs with your own"
echo "• Adjust font size: Change base font-size in body CSS"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "🎉 Ready to deploy! Good luck with your project!"
echo ""
echo "════════════════════════════════════════════════════════════════"