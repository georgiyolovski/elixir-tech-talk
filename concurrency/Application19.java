import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class Application19 {
  public static void main(String[] args) {
    long startTime = System.currentTimeMillis();
    System.out.println("Starting");

    Executor executor = Executors.newVirtualThreadPerTaskExecutor();
    List<CompletableFuture<Void>> futures = new ArrayList<CompletableFuture<Void>>();
    for (int i = 0; i < 100000; i++) {
      futures.add(CompletableFuture.runAsync(() -> {
        try {
          Thread.sleep(100);
        } catch (InterruptedException e) {
          e.printStackTrace();
        }
      }, executor));
    }

    CompletableFuture.allOf(futures.toArray(new CompletableFuture[100000])).join();
    
    long endTime = System.currentTimeMillis();
    System.out.println(String.format("Completed in %d s", (endTime - startTime) / 1000));
  }
}
