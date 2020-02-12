import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.regex.Pattern;

/**
 * @author kalle
 * @since 2013-10-10 07:06
 */
public class Build {

  public static void main(String[] args) throws Exception {

    Runtime runtime = Runtime.getRuntime();

    File carto = new File("/usr/local/bin/carto");
    if (!carto.exists()) {
      throw new RuntimeException(carto.getAbsolutePath() + " does not exists!");
    }


    File path = new File("../hyddafull");
    if (!path.exists()) {
      throw new RuntimeException("Path " + path.getAbsolutePath() + " does not exists!");
    }

    File projectFile = new File(path, "project.mml");

    String mml = FileUtils.readFileToString(projectFile, "utf8");

    File fullFileMML = new File(path, "hydda_full.mml");
    File baseFileMML = new File(path, "hydda_base.mml");
    File roadsAndLabelsFileMML = new File(path, "hydda_roads_and_labels.mml");

    String fullStringMML = mml;
    FileUtils.write(fullFileMML, fullStringMML, "utf8");

    String baseStringMML = fullStringMML;
    baseStringMML = baseStringMML.replace("\"base.mss\",", "\"base.mss\"");
    baseStringMML = baseStringMML.replace("\"roads.mss\",", "");
    baseStringMML = baseStringMML.replace("\"labels.mss\"", "");
    FileUtils.write(baseFileMML, baseStringMML, "utf8");

    String roadsAndLabelsStringMML = fullStringMML;
    roadsAndLabelsStringMML = roadsAndLabelsStringMML.replaceFirst("\\{", "{ \"background-color\":\"transparent\",");
    roadsAndLabelsStringMML = roadsAndLabelsStringMML.replace("\"base.mss\",", "");
    FileUtils.write(roadsAndLabelsFileMML, roadsAndLabelsStringMML, "utf8");

    File fullFileXML = new File("hydda_full.xml");
    File baseFileXML = new File("hydda_base.xml");
    File roadsAndLabelsFileXML = new File("hydda_roads_and_labels.xml");

    exec(carto, fullFileMML, fullFileXML, path);
    exec(carto, baseFileMML, baseFileXML, path);
    exec(carto, roadsAndLabelsFileMML, roadsAndLabelsFileXML, path);


    String fullStringXML = FileUtils.readFileToString(fullFileXML, "utf8");
    String baseStringXML = FileUtils.readFileToString(baseFileXML, "utf8");
    String roadsAndLabelsStringXML = FileUtils.readFileToString(roadsAndLabelsFileXML, "utf8");

//    fullStringXML = removeParameters(fullStringXML);
//    baseStringXML = removeParameters(baseStringXML);
//    roadsAndLabelsStringXML = removeParameters(roadsAndLabelsStringXML);

    FileUtils.write(fullFileXML, fullStringXML, "utf8");
    FileUtils.write(baseFileXML, baseStringXML, "utf8");
    FileUtils.write(roadsAndLabelsFileXML, roadsAndLabelsStringXML, "utf8");

    System.currentTimeMillis();

  }

  private static String removeParameters(String xml) {
    xml = xml.replaceFirst("(?s)" + Pattern.quote("<Parameters>") + ".+" + Pattern.quote("</Parameters>"), "");
    return xml;
  }

  private static void exec(File carto, File mml, File xml, File path) throws Exception {
    System.out.println("Executing Carto on " + mml.getAbsolutePath() + " in path " + path.getAbsolutePath());

    FileUtils.deleteQuietly(xml);

    ProcessBuilder builder = new ProcessBuilder(carto.getAbsolutePath(), "-n", mml.getAbsolutePath());
    builder.redirectErrorStream(false);
    builder.redirectOutput(ProcessBuilder.Redirect.appendTo(xml));
    Process process = builder.start();
    process.waitFor();
    System.out.println("Done.");
  }

}
