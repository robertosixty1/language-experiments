import java.io.*;
import java.util.Scanner;

class Test
{
    public static void printFileContent(String filePath) throws IOException
    {
	File file = new File(filePath);
	Scanner inputFile = new Scanner(file);

	if (file.exists() && !file.isDirectory())
	{
	    System.err.println("ERROR: could not find file `test.txt`");
	}
	
	while (inputFile.hasNext())
        {
	    String word = inputFile.nextLine();

	    System.out.println(word);
	}
    }

    public static void main(String[] args) throws IOException
    {
	System.out.println("Before:\n");
	
	printFileContent("test.txt");
	
	FileWriter fileToWrite = new FileWriter("test.txt");
	fileToWrite.write("Hello, world!");
	fileToWrite.close();

	System.out.println("\nAfter\n");
	
	printFileContent("test.txt");
    }
}
