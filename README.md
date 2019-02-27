<h1>DevOps - SoftServe study program</h1>
<hline>
<div align="center"><img src="https://github.com/milestag/devops157/blob/master/Preview/page_preview.jpg"></div>
<h2>Project description</h2>
This project is a DevOps-157 presentation page, developed with Microsoft ASP.NET application for Demo1 DevOps Windows study programm by SoftServe company. Page represents information about course, technoligies, students and company. Page use MSSQL database engine to store and render "Students list".
<hline>
<h2>Goals</h2>
The project goal is to get acquainted with the technologies of development of Web applications on the Windows platform. Automate the creation of environments to run applications based on Windows 2018-2018 Server. Setting up the environments for application deployment, including IIS Web Server configuration, MSSQL Server and others.
  <hline>
<h2>Tools</h2>
    <ul>
      <li>Microsoft Visual Studio Community 2017 ver.15.9.7</li>
      <li>Vagrant 2.2.3 by HashiCorp</li>
      <li>VirtualBox 5.2.26 r128414 (Qt5.6.2) by Oracle</li>
      </ul>
      <hline>
<h2>Directory Structure</h2>
 <ul>
 <li>Publish - folder with .zip compressed ASP.NET project</li>
 <li>Preview - folder contains images used by repository</li>
 </ul> 
<h2>Files</h2>
<p><strong>Vagrantfile</strong> - configuration file for Vagrant orcestration engine for automatic deploy of different virtual environements.</p>
<p><strong>dbattach.sql</strong> - External SQL script for attaching MSSQL Database at deployment environement.</p>
<hline>
<h2>Usage:</h2>
<ul>
  <li>1. Install Vagrant engine from "https://www.vagrantup.com/";</li> 
  <li>2. Copy file "Vagrantfile" to you future virtual environement project directory. Then execute command "Vagrant up" from target    directory. Example "D:\VM01\Vagrant up";</li>
  <li>3. Wait for Vagrant engine downlad virtualbox instances, install, run end provision them eith provisioning script. Make some coffe, you have at least 30-40 min.</li>
  </ul>
