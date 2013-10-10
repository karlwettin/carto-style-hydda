import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import java.io.File;
import java.util.Map;
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

    String projectString = FileUtils.readFileToString(projectFile, "utf8");

    projectString = projectString.replaceAll("tile-sweden\\.openstreetmap\\.se", "localhost");

    File fullFileMML = new File(path, "hydda_full.mml");
    File baseFileMML = new File(path, "hydda_base.mml");
    File roadsAndLabelsFileMML = new File(path, "hydda_roads_and_labels.mml");

    String fullStringMML = projectString;
    FileUtils.write(fullFileMML, fullStringMML, "utf8");

    String baseStringMML = projectString;
    baseStringMML = baseStringMML.replace("\"base.mms\",", "\"base.mms\"");
    baseStringMML = baseStringMML.replace("\"roads.mms\",", "");
    baseStringMML = baseStringMML.replace("\"labels.mms\"", "");
    FileUtils.write(baseFileMML, baseStringMML, "utf8");

    String roadsAndLabelsStringMML = projectString;
    roadsAndLabelsStringMML = roadsAndLabelsStringMML.replaceFirst("\\{", "{ \"background-color\":\"transparent\",");
    roadsAndLabelsStringMML = roadsAndLabelsStringMML.replace("\"base.mms\",", "");
    FileUtils.write(roadsAndLabelsFileMML, roadsAndLabelsStringMML, "utf8");

    exec(carto, fullFileMML, path);
    exec(carto, baseFileMML, path);
    exec(carto, roadsAndLabelsFileMML, path);

    File fullFileXML = new File(path, "hydda_full.xml");
    File baseFileXML = new File(path, "hydda_base.xml");
    File roadsAndLabelsFileXML = new File(path, "hydda_roads_and_labels.xml");

    String fullStringXML = FileUtils.readFileToString(fullFileXML, "utf8");
    String baseStringXML = FileUtils.readFileToString(baseFileXML, "utf8");
    String roadsAndLabelsStringXML = FileUtils.readFileToString(roadsAndLabelsFileXML, "utf8");

    fullStringXML = fullStringXML.replaceFirst(Pattern.quote("<Parameters>") + ".+" + Pattern.quote("</Parameters>"), "");
    baseStringXML = baseStringXML.replaceFirst(Pattern.quote("<Parameters>") + ".+" + Pattern.quote("</Parameters>"), "");
    roadsAndLabelsStringXML = roadsAndLabelsStringXML.replaceFirst(Pattern.quote("<Parameters>") + ".+" + Pattern.quote("</Parameters>"), "");

    FileUtils.write(fullFileXML, fullStringXML, "utf8");
    FileUtils.write(baseFileXML, baseStringXML, "utf8");
    FileUtils.write(roadsAndLabelsFileXML, roadsAndLabelsStringXML, "utf8");

    System.currentTimeMillis();

  }

  private static void exec(File carto, File mml, File path) throws Exception {

    Map<String, String> env = System.getenv();
    for (String envName : env.keySet()) {
         System.out.format("%s=%s%n", envName, env.get(envName));
    }


    System.out.println("Executing Carto on " + mml.getAbsolutePath() + " in path " + path.getAbsolutePath());
    System.out.println("");
    Process process = Runtime.getRuntime().exec(new String[]{carto.getAbsolutePath(), mml.getName()}, new String[]{}, path);
    process.waitFor();
    IOUtils.copy(process.getInputStream(), System.out);
    IOUtils.copy(process.getErrorStream(), System.err);
    System.out.println();
  }

}
