[1mdiff --git a/src/test/java/br/ce/wcaquino/tasks/functional/TasksTest.java b/src/test/java/br/ce/wcaquino/tasks/functional/TasksTest.java[m
[1mindex b496b24..09b5acd 100644[m
[1m--- a/src/test/java/br/ce/wcaquino/tasks/functional/TasksTest.java[m
[1m+++ b/src/test/java/br/ce/wcaquino/tasks/functional/TasksTest.java[m
[36m@@ -9,7 +9,7 @@[m [mimport org.junit.Assert;[m
 import org.junit.Test;[m
 import org.openqa.selenium.By;[m
 import org.openqa.selenium.WebDriver;[m
[31m-//import org.openqa.selenium.chrome.ChromeDriver;[m
[32m+[m[32mimport org.openqa.selenium.chrome.ChromeDriver;[m
 import org.openqa.selenium.remote.DesiredCapabilities;[m
 import org.openqa.selenium.remote.RemoteWebDriver;[m
 [m
[36m@@ -17,9 +17,9 @@[m [mpublic class TasksTest {[m
 	[m
 [m
 	public WebDriver acessarAplicacao() throws MalformedURLException {[m
[31m-		//WebDriver driver = new  ChromeDriver();[m
[31m-		DesiredCapabilities cap = DesiredCapabilities.chrome();[m
[31m-		WebDriver driver = new RemoteWebDriver(new URL("http://192.168.15.11:4444/wd/hub"), cap);[m
[32m+[m		[32mWebDriver driver = new  ChromeDriver();[m
[32m+[m		[32m//DesiredCapabilities cap = DesiredCapabilities.chrome();[m
[32m+[m		[32m//WebDriver driver = new RemoteWebDriver(new URL("http://192.168.15.11:4444/wd/hub"), cap);[m
 		driver.navigate().to("http://192.168.15.11:8001/tasks/");[m
 		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);[m
 		return driver;[m
[36m@@ -98,7 +98,7 @@[m [mpublic class TasksTest {[m
 		try {[m
 			driver.findElement(By.id("addTodo")).click();[m
 			driver.findElement(By.id("task")).sendKeys("Teste Automático");[m
[31m-			driver.findElement(By.id("dueDate")).sendKeys("30/05/2020");[m
[32m+[m			[32mdriver.findElement(By.id("dueDate")).sendKeys("30/05/2021");[m
 			driver.findElement(By.id("saveButton")).click();[m
 			[m
 			String mensagem = driver.findElement(By.id("message")).getText();[m
[36m@@ -107,6 +107,7 @@[m [mpublic class TasksTest {[m
 			//Remove uma tarefa[m
 			driver.findElement(By.xpath("//a[@class= 'btn btn-outline-danger btn-sm']")).click();[m
 			mensagem = driver.findElement(By.id("message")).getText();[m
[32m+[m			[32mSystem.out.println(mensagem);[m
 			Assert.assertEquals("Success!", mensagem);[m
 		}finally {[m
 			driver.quit();[m
