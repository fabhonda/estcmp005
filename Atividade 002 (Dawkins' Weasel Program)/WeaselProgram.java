package javaapplication5;
import java.util.ArrayList;
import java.util.Random;

public class WeaselProgram {

    public static void main(String[] args) {
        
        Random random = new Random();
        
        int i, y, pontuation;
        int SIZE_TARGET = 28, countingGenerations = 0, bestPontuation = -1;
        
        char[] listChar = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
            'U', 'V', 'W', 'X', 'Y', 'Z', ' '};

        char[] sequence = new char[SIZE_TARGET];
        char[] textTarget = "METHINKS IT IS LIKE A WEASEL".toCharArray();
        char[] currentCopie, textHelp;
        char[][] copies = new char[100][28];
        
        // Gerando uma sequência aleatória de 28 caracteres
        for (int count = 0; count < SIZE_TARGET; count++) {
            int randomNumber = random.nextInt(listChar.length);
            sequence[count] = listChar[randomNumber];
        }

        while (bestPontuation < SIZE_TARGET) {
            countingGenerations++;

            // reproduzindo 100 cópias
            for (i = 0; i < 100; i++) {
                copies[i] = sequence.clone();
            }

            for (i = 0; i < 100; i++) {
                textHelp = new char[SIZE_TARGET];
                
                for (y = 0; y < SIZE_TARGET; y++) {
                    if (random.nextFloat() <= 0.05) {
                        int randomNumber = random.nextInt(listChar.length);
                        textHelp[y] = listChar[randomNumber];
                    } else {
                        textHelp[y] = copies[i][y];
                    }
                }
                copies[i] = textHelp;
            }

            for (i = 0; i < 100; i++) {
                pontuation = 0;
                for (y = 0; y < SIZE_TARGET; y++) {
                    if (copies[i][y] == textTarget[y]) {
                        pontuation++;
                    }

                    if (pontuation > bestPontuation) {
                        bestPontuation = pontuation;
                        sequence = copies[i].clone();
                    }
                }
            }
            System.out.print("Sequence " + countingGenerations + " ");
            System.out.println(sequence);
        }
    }
}
