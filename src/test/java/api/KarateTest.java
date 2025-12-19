package api;

import com.intuit.karate.junit5.Karate;

public class KarateTest {  // Must be 'public'

    @Karate.Test
    Karate testAll() {
        return Karate.run("jsonplaceholder").relativeTo(getClass());
    }
}