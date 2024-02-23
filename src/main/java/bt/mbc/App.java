package bt.mbc;

import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;

import java.io.File;

public class App {

    public static void main(String[] args) {
        File receipt =  new File("/app/resources/receipts/IMG_4231.tiff");

        Tesseract tesseract = new Tesseract();
        tesseract.setDatapath("app/resources/tessdata");
        // set to German
        tesseract.setLanguage("deu");
        // use LSTM OCR engine
        tesseract.setOcrEngineMode(1);

        try {
            String result = tesseract.doOCR(receipt);
            System.out.println(result);
        } catch (TesseractException e) {
            System.err.println(e.getMessage());
        }
    }
}
