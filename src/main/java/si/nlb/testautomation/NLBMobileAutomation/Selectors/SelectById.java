package si.nlb.testautomation.NLBMobileAutomation.Selectors;

import io.appium.java_client.MobileElement;
import si.nlb.testautomation.NLBMobileAutomation.Core.Base;
import si.nlb.testautomation.NLBMobileAutomation.Test.Hooks;
import io.appium.java_client.MobileBy;
import org.openqa.selenium.By;

import java.util.List;

import static si.nlb.testautomation.NLBMobileAutomation.Core.Base.driver;

/**
 * Class for creating elements by Id
 */
public class SelectById {
    /**
     * Returns By element with parameter id
     * @param id Id of element
     * @return By element
     */
    public By createElementById(String id) {
        By element = null;
        if (Base.testPlatform.equals("iOS")) {
            element = MobileBy.AccessibilityId(id);
        }
        if (Base.testPlatform.equals("Android")) {
            element = MobileBy.id(Hooks.resourceId + id);
        }
        return element;
    }

    public List<MobileElement> createElementsById(String id) {
        return (List<MobileElement>) Base.driver.findElementsById(id);
    }



    public MobileElement createMobileElementByResourceId(String id){
        MobileElement element = null;
        if (Base.testPlatform.equals("IOS")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='" + Hooks.resourceId + id + "']");
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='" + Hooks.resourceId + id + "']");
        }
        return element;
    }

    public MobileElement createCustomMobileElementByResourceId(String id){
        MobileElement element = null;
        if (Base.testPlatform.equals("IOS")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='"+id+"']");
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='"+id+"']");
        }
        return element;
    }
    /**
     * Returns native By element
     * @param id ID native element
     * @return By element
     */
    public By crateNativeElement(String id) {
        By element = null;
        if (Base.testPlatform.equals("Android")) {
            element = MobileBy.id(Hooks.nativeElement + id);
        }
        return element;
    }

    public MobileElement createMobileElementByNativeId(String id) {
        MobileElement element = null;
        if (Base.testPlatform.equals("IOS")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='" + Hooks.nativeElement + id + "']");
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath("//*[@resource-id='" + Hooks.nativeElement + id + "']");
        }
        return element;
    }

    public List<MobileElement> createMobileElementsByNativeId(String id) {
        return (List<MobileElement>) Base.driver.findElementsByXPath("//*[@resource-id='" + Hooks.nativeElement + id + "']");
    }


    public MobileElement createMobileElementByContainsId(String value) {
        MobileElement element = null;
        String xPath = "//*[contains(@resource-id,\"" + value + "\")]";
        if (Base.testPlatform.equals("iOS")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        return element;

    }
    public By createElementByResourceId(String id) {
        By element = null;
        String xPath = "//*[@resource-id='" + id + "']";
        element = MobileBy.xpath(xPath);
        return element;
    }
    public By createByContainsResourceId(String value) {
        By element = null;
        String xPath = "//*[contains(@resource-id,\"" + value + "\")]";

        if (Base.testPlatform.equals("iOS")) {
            element = MobileBy.xpath(xPath);
        }
        if (Base.testPlatform.equals("Android")) {
            element = MobileBy.xpath(xPath);
        }
        return element;
    }
    public By createByTagAndContainsResourceId(String tag, String value) {
        By element = null;
        String xPath = "//" + tag + "[contains(@resource-id,\"" + value + "\")]";

        if (Base.testPlatform.equals("iOS")) {
            element = MobileBy.xpath(xPath);
        }
        if (Base.testPlatform.equals("Android")) {
            element = MobileBy.xpath(xPath);
        }
        return element;
    }


    public List<MobileElement> createMobileElementsByResourceId(String id) {
        String xPath = "//*[@resource-id='" + id + "']";
        return (List<MobileElement>) Base.driver.findElementsByXPath(xPath);
    }

    public MobileElement createMobileElementByTagAndContainsResourceId(String tag, String idp_part) {

        MobileElement element = null;
        String xPath = "//" + tag + "[contains(@resource-id,\"" + idp_part + "\")]";
        if (Base.testPlatform.equals("iOS")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        return element;
    }

    public MobileElement createMobileElementById(String id) {
        MobileElement element = null;
        String xPath = "//*[@resource-id=\"" + id + "\"]";
        if (Base.testPlatform.equals("iOS")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        return element;
    }

    public MobileElement createMobileElementByTextAndContainsResourceId(String text, String idp_part) {
        MobileElement element = null;
        String xPath = "//*[contains(@resource-id,\"" + idp_part + "\") and @text=\"" + text + "\"]";
        if (Base.testPlatform.equals("iOS")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        if (Base.testPlatform.equals("Android")){
            element = (MobileElement) driver.findElementByXPath(xPath);
        }
        return element;
    }
}
