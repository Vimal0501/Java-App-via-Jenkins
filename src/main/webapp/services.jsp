<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
    // Declaration: Variables outside service method
    String companyName = "Your Company Name";
    int serviceCount = 3;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - <%= companyName %></title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 10px;
            font-size: 2.5em;
        }
        
        .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 40px;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .service-card {
            background: #f8f9fa;
            padding: 30px;
            border-radius: 8px;
            border-left: 4px solid #667eea;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        
        .service-card h3 {
            color: #667eea;
            margin-bottom: 15px;
            font-size: 1.4em;
        }
        
        .service-card p {
            color: #555;
            line-height: 1.6;
        }
        
        .info-section {
            background: #e8f4f8;
            padding: 25px;
            border-radius: 8px;
            margin-top: 30px;
        }
        
        .info-section h3 {
            color: #2c3e50;
            margin-bottom: 15px;
        }
        
        .info-section ul {
            list-style-type: none;
            padding-left: 0;
        }
        
        .info-section li {
            padding: 8px 0;
            color: #333;
        }
        
        .info-section li:before {
            content: "✓ ";
            color: #27ae60;
            font-weight: bold;
            margin-right: 10px;
        }
        
        .footer {
            text-align: center;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid #ddd;
            color: #777;
        }
        
        .server-time {
            background: #2c3e50;
            color: white;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <h1>Our Services</h1>
        <p class="subtitle">Professional Solutions for Your Business Needs</p>
        
        <!-- Services Grid -->
        <div class="services-grid">
            <div class="service-card">
                <h3>🌐 Web Development</h3>
                <p>Custom web applications built with Java, JSP, Servlets, and modern frameworks. Responsive, scalable, and secure solutions tailored to your business requirements.</p>
            </div>
            
            <div class="service-card">
                <h3>☁️ Cloud Deployment</h3>
                <p>Automated CI/CD pipelines using Jenkins, Docker containerization, and cloud infrastructure setup. Deploy applications seamlessly with zero downtime.</p>
            </div>
            
            <div class="service-card">
                <h3>🔧 Application Support</h3>
                <p>24/7 maintenance and technical support for your Java applications. Performance optimization, bug fixes, and regular updates to keep your systems running smoothly.</p>
            </div>
            
            <div class="service-card">
                <h3>📚 Training & Consulting</h3>
                <p>Expert training on Java web development, Spring Framework, and DevOps practices. One-on-one consulting to help your team master modern technologies.</p>
            </div>
            
            <div class="service-card">
                <h3>📱 Mobile Backend</h3>
                <p>RESTful API development for mobile applications. Secure authentication, database integration, and scalable architecture for high-traffic mobile apps.</p>
            </div>
            
            <div class="service-card">
                <h3>🔒 Security Audit</h3>
                <p>Comprehensive security assessments and penetration testing. Identify vulnerabilities and implement best practices to protect your applications and data.</p>
            </div>
        </div>
        
        <!-- Info Section -->
        <div class="info-section">
            <h3>Why Choose Us?</h3>
            <ul>
                <li>Experienced team of Java developers</li>
                <li>Agile development methodology</li>
                <li>On-time project delivery</li>
                <li>Cost-effective solutions</li>
                <li>Dedicated post-deployment support</li>
                <li>Clean and well-documented code</li>
            </ul>
        </div>
        
        <!-- Dynamic Server Time -->
        <div class="server-time">
            <strong>🕐 Server Time:</strong> 
            <%= new java.util.Date() %>
            <br><br>
            <strong>🖥️ Server Info:</strong> 
            <%= System.getProperty("os.name") %> 
            | Java <%= System.getProperty("java.version") %>
        </div>
        
        <!-- Footer -->
        <div class="footer">
            <p>&copy; <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %> <%= companyName %>. All rights reserved.</p>
            <p>Currently serving <strong><%= serviceCount %> services</strong></p>
            <p>
                <a href="index.jsp" style="color: #667eea; text-decoration: none;">← Back to Home</a>
            </p>
        </div>
    </div>
</body>
</html>