package DAO;

import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Random;

public class UploadFile {

    // file location
    public static final String DIRECTORY = System.getProperty("user.home") +
            "/Documents/External/ict-alamni/web/File-Server";

    public String uploadImage(Part partFile, String fileName) throws IOException {
        Path fileStorage = Paths.get(DIRECTORY, fileName).toAbsolutePath().normalize();
        Files.copy(partFile.getInputStream(), fileStorage);
        return fileName;
    }

    public String stringGenerator() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 20;
        Random random = new Random();
        return random.ints(leftLimit, rightLimit + 1)
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
    }

}
